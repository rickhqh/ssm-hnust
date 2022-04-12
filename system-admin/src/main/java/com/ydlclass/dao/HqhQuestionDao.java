package com.ydlclass.dao;

import com.ydlclass.entity.HqhQuestion;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import java.util.List;

/**
 * 题目信息表(HqhQuestion)表数据库访问层
 *
 * @author makejava
 * @since 2022-04-06 10:38:28
 */
public interface HqhQuestionDao {

    /**
     * 通过ID查询单条数据
     *
     * @param questionId 主键
     * @return 实例对象
     */
    HqhQuestion queryById(Long questionId);

    /**
     * 查询指定行数据
     *
     * @param hqhQuestion 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<HqhQuestion> queryAllByLimit(@Param("hqhQuestion") HqhQuestion hqhQuestion, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param hqhQuestion 查询条件
     * @return 总行数
     */
    long count(HqhQuestion hqhQuestion);

    /**
     * 新增数据
     *
     * @param hqhQuestion 实例对象
     * @return 影响行数
     */
    int insert(HqhQuestion hqhQuestion);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhQuestion> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<HqhQuestion> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<HqhQuestion> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<HqhQuestion> entities);

    /**
     * 修改数据
     *
     * @param hqhQuestion 实例对象
     * @return 影响行数
     */
    int update(HqhQuestion hqhQuestion);

    /**
     * 通过主键删除数据
     *
     * @param questionId 主键
     * @return 影响行数
     */
    int deleteById(Long questionId);

}

