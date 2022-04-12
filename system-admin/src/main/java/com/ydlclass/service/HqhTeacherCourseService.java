package com.ydlclass.service;

import com.ydlclass.entity.HqhTeacherCourse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 老师和课程关联表(HqhTeacherCourse)表服务接口
 *
 * @author makejava
 * @since 2022-04-05 20:17:59
 */
public interface HqhTeacherCourseService {

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    HqhTeacherCourse queryById(Long teacherId);

    /**
     * 分页查询
     *
     * @param hqhTeacherCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<HqhTeacherCourse> queryByPage(HqhTeacherCourse hqhTeacherCourse, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 实例对象
     */
    HqhTeacherCourse insert(HqhTeacherCourse hqhTeacherCourse);

    /**
     * 修改数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 实例对象
     */
    HqhTeacherCourse update(HqhTeacherCourse hqhTeacherCourse);

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 是否成功
     */
    boolean deleteById(Long teacherId);

}
