package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhQuestion;
import com.ydlclass.dao.HqhQuestionDao;
import com.ydlclass.service.HqhQuestionService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 题目信息表(HqhQuestion)表服务实现类
 *
 * @author makejava
 * @since 2022-04-06 10:38:29
 */
@Service("hqhQuestionService")
public class HqhQuestionServiceImpl implements HqhQuestionService {
    @Resource
    private HqhQuestionDao hqhQuestionDao;

    /**
     * 通过ID查询单条数据
     *
     * @param questionId 主键
     * @return 实例对象
     */
    @Override
    public HqhQuestion queryById(Long questionId) {
        return this.hqhQuestionDao.queryById(questionId);
    }

    /**
     * 分页查询
     *
     * @param hqhQuestion 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhQuestion> queryByPage(HqhQuestion hqhQuestion, PageRequest pageRequest) {
        long total = this.hqhQuestionDao.count(hqhQuestion);
        return new PageImpl<>(this.hqhQuestionDao.queryAllByLimit(hqhQuestion, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhQuestion 实例对象
     * @return 实例对象
     */
    @Override
    public HqhQuestion insert(HqhQuestion hqhQuestion) {
        this.hqhQuestionDao.insert(hqhQuestion);
        return hqhQuestion;
    }

    /**
     * 修改数据
     *
     * @param hqhQuestion 实例对象
     * @return 实例对象
     */
    @Override
    public HqhQuestion update(HqhQuestion hqhQuestion) {
        this.hqhQuestionDao.update(hqhQuestion);
        return this.queryById(hqhQuestion.getQuestionId());
    }

    /**
     * 通过主键删除数据
     *
     * @param questionId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long questionId) {
        return this.hqhQuestionDao.deleteById(questionId) > 0;
    }
}
