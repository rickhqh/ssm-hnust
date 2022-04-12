package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhUser;
import com.ydlclass.dao.HqhUserDao;
import com.ydlclass.service.HqhUserService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 用户信息表(HqhUser)表服务实现类
 *dto
 * @author makejava
 * @since 2022-04-03 19:20:02
 */
@Service("hqhUserService")
/**
 * 交给ioc容器管理
 * */

public class HqhUserServiceImpl implements HqhUserService {
    @Resource
    private HqhUserDao hqhUserDao;

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    @Override
    public HqhUser queryById(Long userId) {
        return this.hqhUserDao.queryById(userId);
    }

    /**
     * 分页查询
     *
     * @param hqhUser 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhUser> queryByPage(HqhUser hqhUser, PageRequest pageRequest) {
        long total = this.hqhUserDao.count(hqhUser);
        return new PageImpl<>(this.hqhUserDao.queryAllByLimit(hqhUser, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhUser 实例对象
     * @return 实例对象
     */
    @Override
    public HqhUser insert(HqhUser hqhUser) {
        this.hqhUserDao.insert(hqhUser);
        return hqhUser;
    }

    /**
     * 修改数据
     *
     * @param hqhUser 实例对象
     * @return 实例对象
     */
    @Override
    public HqhUser update(HqhUser hqhUser) {
        this.hqhUserDao.update(hqhUser);
        return this.queryById(hqhUser.getUserId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long userId) {
        return this.hqhUserDao.deleteById(userId) > 0;
    }
}
