package com.ydlclass.dao;

import com.ydlclass.entity.HqhCourse;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * 课程信息表(HqhCourse)表数据库访问层
 *
 * @author makejava
 * @since 2022-04-05 20:24:41
 */
public interface HqhCourseDao {

    /**
     * 通过ID查询单条数据
     *
     * @param courseId 主键
     * @return 实例对象
     */
    HqhCourse queryById(Long courseId);

    /**
     * 查询指定行数据
     *
     * @param hqhCourse 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<HqhCourse> queryAllByLimit(@Param("hqhCourse")HqhCourse hqhCourse, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param hqhCourse 查询条件
     * @return 总行数
     */
    long count(HqhCourse hqhCourse);

    /**
     * 新增数据
     *
     * @param hqhCourse 实例对象
     * @return 影响行数
     */
    int insert(HqhCourse hqhCourse);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhCourse> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<HqhCourse> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhCourse> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<HqhCourse> entities);

    /**
     * 修改数据
     *
     * @param hqhCourse 实例对象
     * @return 影响行数
     */
    int update(HqhCourse hqhCourse);

    /**
     * 通过主键删除数据
     *
     * @param courseId 主键
     * @return 影响行数
     */
    int deleteById(Long courseId);

}

