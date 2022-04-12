package com.ydlclass.dao;

import com.ydlclass.entity.HqhTeacherCourse;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * 老师和课程关联表(HqhTeacherCourse)表数据库访问层
 *
 * @author makejava
 * @since 2022-04-05 20:17:58
 */
public interface HqhTeacherCourseDao {

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    HqhTeacherCourse queryById(Long teacherId);

    /**
     * 查询指定行数据
     *
     * @param hqhTeacherCourse 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<HqhTeacherCourse> queryAllByLimit(@Param("hqhTeacherCourse")HqhTeacherCourse hqhTeacherCourse, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param hqhTeacherCourse 查询条件
     * @return 总行数
     */
    long count(HqhTeacherCourse hqhTeacherCourse);

    /**
     * 新增数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 影响行数
     */
    int insert(HqhTeacherCourse hqhTeacherCourse);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhTeacherCourse> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<HqhTeacherCourse> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhTeacherCourse> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<HqhTeacherCourse> entities);

    /**
     * 修改数据
     *
     * @param hqhTeacherCourse 实例对象
     * @return 影响行数
     */
    int update(HqhTeacherCourse hqhTeacherCourse);

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 影响行数
     */
    int deleteById(Long teacherId);

}

