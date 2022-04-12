package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhTeacherCourse;
import com.ydlclass.dao.HqhTeacherCourseDao;
import com.ydlclass.service.HqhTeacherCourseService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 老师和课程关联表(HqhTeacherCourse)表服务实现类
 *
 * @author makejava
 * @since 2022-04-05 20:17:59
 */
@Service("hqhTeacherCourseService")
public class HqhTeacherCourseServiceImpl implements HqhTeacherCourseService {
    @Resource
    private HqhTeacherCourseDao hqhTeacherCourseDao;

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    @Override
    public HqhTeacherCourse queryById(Long teacherId) {
        return this.hqhTeacherCourseDao.queryById(teacherId);
    }

    /**
     * 分页查询
     *
     * @param hqhTeacherCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhTeacherCourse> queryByPage(HqhTeacherCourse hqhTeacherCourse, PageRequest pageRequest) {
        long total = this.hqhTeacherCourseDao.count(hqhTeacherCourse);
        return new PageImpl<>(this.hqhTeacherCourseDao.queryAllByLimit(hqhTeacherCourse, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhTeacherCourse insert(HqhTeacherCourse hqhTeacherCourse) {
        this.hqhTeacherCourseDao.insert(hqhTeacherCourse);
        return hqhTeacherCourse;
    }

    /**
     * 修改数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhTeacherCourse update(HqhTeacherCourse hqhTeacherCourse) {
        this.hqhTeacherCourseDao.update(hqhTeacherCourse);
        return this.queryById(hqhTeacherCourse.getTeacherId());
    }

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long teacherId) {
        return this.hqhTeacherCourseDao.deleteById(teacherId) > 0;
    }
}
