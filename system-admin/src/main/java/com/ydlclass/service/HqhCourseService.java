package com.ydlclass.service;

import com.ydlclass.entity.HqhCourse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 课程信息表(HqhCourse)表服务接口
 *
 * @author makejava
 * @since 2022-04-05 20:24:41
 */
public interface HqhCourseService {

    /**
     * 通过ID查询单条数据
     *
     * @param courseId 主键
     * @return 实例对象
     */
    HqhCourse queryById(Long courseId);

    /**
     * 分页查询
     *
     * @param hqhCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<HqhCourse> queryByPage(HqhCourse hqhCourse, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param hqhCourse 实例对象
     * @return 实例对象
     */
    HqhCourse insert(HqhCourse hqhCourse);

    /**
     * 修改数据
     *
     * @param hqhCourse 实例对象
     * @return 实例对象
     */
    HqhCourse update(HqhCourse hqhCourse);

    /**
     * 通过主键删除数据
     *
     * @param courseId 主键
     * @return 是否成功
     */
    boolean deleteById(Long courseId);

}
