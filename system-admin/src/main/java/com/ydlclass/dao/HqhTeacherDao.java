package com.ydlclass.dao;

import com.ydlclass.entity.HqhTeacher;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * 老师信息表(HqhTeacher)表数据库访问层
 *
 * @author makejava
 * @since 2022-04-05 20:17:56
 */
public interface HqhTeacherDao {

    /**
     * 通过ID查询单条数据
     *
     * @param teacherId 主键
     * @return 实例对象
     */
    HqhTeacher queryById(Long teacherId);

    /**
     * 查询指定行数据
     *
     * @param hqhTeacher 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<HqhTeacher> queryAllByLimit(@Param("hqhTeacher")HqhTeacher hqhTeacher, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param hqhTeacher 查询条件
     * @return 总行数
     */
    long count(HqhTeacher hqhTeacher);

    /**
     * 新增数据
     *
     * @param hqhTeacher 实例对象
     * @return 影响行数
     */
    int insert(HqhTeacher hqhTeacher);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhTeacher> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<HqhTeacher> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhTeacher> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<HqhTeacher> entities);

    /**
     * 修改数据
     *
     * @param hqhTeacher 实例对象
     * @return 影响行数
     */
    int update(HqhTeacher hqhTeacher);

    /**
     * 通过主键删除数据
     *
     * @param teacherId 主键
     * @return 影响行数
     */
    int deleteById(Long teacherId);

}

