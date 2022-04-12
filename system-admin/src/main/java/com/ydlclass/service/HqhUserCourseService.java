package com.ydlclass.service;

import com.ydlclass.entity.HqhUserCourse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 学生和课程关联表(HqhUserCourse)表服务接口
 *
 * @author makejava
 * @since 2022-04-05 20:18:14
 */
public interface HqhUserCourseService {

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    HqhUserCourse queryById(Long userId);

    /**
     * 分页查询
     *
     * @param hqhUserCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<HqhUserCourse> queryByPage(HqhUserCourse hqhUserCourse, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param hqhUserCourse 实例对象
     * @return 实例对象
     */
    HqhUserCourse insert(HqhUserCourse hqhUserCourse);

    /**
     * 修改数据
     *
     * @param hqhUserCourse 实例对象
     * @return 实例对象
     */
    HqhUserCourse update(HqhUserCourse hqhUserCourse);

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 是否成功
     */
    boolean deleteById(Long userId);

}
