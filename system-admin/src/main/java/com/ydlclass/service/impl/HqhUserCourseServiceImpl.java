package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhUserCourse;
import com.ydlclass.dao.HqhUserCourseDao;
import com.ydlclass.service.HqhUserCourseService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 学生和课程关联表(HqhUserCourse)表服务实现类
 *
 * @author makejava
 * @since 2022-04-05 20:18:14
 */
@Service("hqhUserCourseService")
public class HqhUserCourseServiceImpl implements HqhUserCourseService {
    @Resource
    private HqhUserCourseDao hqhUserCourseDao;

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    @Override
    public HqhUserCourse queryById(Long userId) {
        return this.hqhUserCourseDao.queryById(userId);
    }

    /**
     * 分页查询
     *
     * @param hqhUserCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhUserCourse> queryByPage(HqhUserCourse hqhUserCourse, PageRequest pageRequest) {
        long total = this.hqhUserCourseDao.count(hqhUserCourse);
        return new PageImpl<>(this.hqhUserCourseDao.queryAllByLimit(hqhUserCourse, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhUserCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhUserCourse insert(HqhUserCourse hqhUserCourse) {
        this.hqhUserCourseDao.insert(hqhUserCourse);
        return hqhUserCourse;
    }

    /**
     * 修改数据
     *
     * @param hqhUserCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhUserCourse update(HqhUserCourse hqhUserCourse) {
        this.hqhUserCourseDao.update(hqhUserCourse);
        return this.queryById(hqhUserCourse.getUserId());
    }

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long userId) {
        return this.hqhUserCourseDao.deleteById(userId) > 0;
    }
}
