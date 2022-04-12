package com.ydlclass.service;

import com.ydlclass.entity.HqhQuestion;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 题目信息表(HqhQuestion)表服务接口
 *
 * @author makejava
 * @since 2022-04-06 10:38:29
 */
public interface HqhQuestionService {

    /**
     * 通过ID查询单条数据
     *
     * @param questionId 主键
     * @return 实例对象
     */
    HqhQuestion queryById(Long questionId);

    /**
     * 分页查询
     *
     * @param hqhQuestion 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<HqhQuestion> queryByPage(HqhQuestion hqhQuestion, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param hqhQuestion 实例对象
     * @return 实例对象
     */
    HqhQuestion insert(HqhQuestion hqhQuestion);

    /**
     * 修改数据
     *
     * @param hqhQuestion 实例对象
     * @return 实例对象
     */
    HqhQuestion update(HqhQuestion hqhQuestion);

    /**
     * 通过主键删除数据
     *
     * @param questionId 主键
     * @return 是否成功
     */
    boolean deleteById(Long questionId);

}
