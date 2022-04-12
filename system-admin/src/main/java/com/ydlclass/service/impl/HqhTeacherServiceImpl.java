package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhTeacher;
import com.ydlclass.dao.HqhTeacherDao;
import com.ydlclass.service.HqhTeacherService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 老师信息表(HqhTeacher)表服务实现类
 *
 * @author makejava
 * @since 2022-04-05 20:17:57
 */
@Service("hqhTeacherService")
public class HqhTeacherServiceImpl implements HqhTeacherService {
    @Resource
    private HqhTeacherDao hqhTeacherDao;

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    @Override
    public HqhTeacher queryById(Long teacherId) {
        return this.hqhTeacherDao.queryById(teacherId);
    }

    /**
     * 分页查询
     *
     * @param hqhTeacher 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhTeacher> queryByPage(HqhTeacher hqhTeacher, PageRequest pageRequest) {
        long total = this.hqhTeacherDao.count(hqhTeacher);
        return new PageImpl<>(this.hqhTeacherDao.queryAllByLimit(hqhTeacher, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhTeacher 实例对象
     * @return 实例对象
     */
    @Override
    public HqhTeacher insert(HqhTeacher hqhTeacher) {
        this.hqhTeacherDao.insert(hqhTeacher);
        return hqhTeacher;
    }

    /**
     * 修改数据
     *
     * @param hqhTeacher 实例对象
     * @return 实例对象
     */
    @Override
    public HqhTeacher update(HqhTeacher hqhTeacher) {
        this.hqhTeacherDao.update(hqhTeacher);
        return this.queryById(hqhTeacher.getTeacherId());
    }

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long teacherId) {
        return this.hqhTeacherDao.deleteById(teacherId) > 0;
    }
}
