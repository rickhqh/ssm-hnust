package com.ydlclass.service;

import com.ydlclass.entity.HqhTeacher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 老师信息表(HqhTeacher)表服务接口
 *
 * @author makejava
 * @since 2022-04-05 20:17:57
 */
public interface HqhTeacherService {

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    HqhTeacher queryById(Long teacherId);

    /**
     * 分页查询
     *
     * @param hqhTeacher 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<HqhTeacher> queryByPage(HqhTeacher hqhTeacher, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param hqhTeacher 实例对象
     * @return 实例对象
     */
    HqhTeacher insert(HqhTeacher hqhTeacher);

    /**
     * 修改数据
     *
     * @param hqhTeacher 实例对象
     * @return 实例对象
     */
    HqhTeacher update(HqhTeacher hqhTeacher);

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 是否成功
     */
    boolean deleteById(Long teacherId);

}
