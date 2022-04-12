package com.ydlclass.dao;

import com.ydlclass.entity.HqhUserCourse;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * 学生和课程关联表(HqhUserCourse)表数据库访问层
 *
 * @author makejava
 * @since 2022-04-05 20:18:13
 */
public interface HqhUserCourseDao {

    /**
     * 通过ID查询单条数据
     *
     * @param userId 主键
     * @return 实例对象
     */
    HqhUserCourse queryById(Long userId);

    /**
     * 查询指定行数据
     *
     * @param hqhUserCourse 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<HqhUserCourse> queryAllByLimit(@Param("hqhUserCourse")HqhUserCourse hqhUserCourse, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param hqhUserCourse 查询条件
     * @return 总行数
     */
    long count(HqhUserCourse hqhUserCourse);

    /**
     * 新增数据
     *
     * @param hqhUserCourse 实例对象
     * @return 影响行数
     */
    int insert(HqhUserCourse hqhUserCourse);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhUserCourse> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<HqhUserCourse> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhUserCourse> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<HqhUserCourse> entities);

    /**
     * 修改数据
     *
     * @param hqhUserCourse 实例对象
     * @return 影响行数
     */
    int update(HqhUserCourse hqhUserCourse);

    /**
     * 通过主键删除数据
     *
     * @param userId 主键
     * @return 影响行数
     */
    int deleteById(Long userId);

}

