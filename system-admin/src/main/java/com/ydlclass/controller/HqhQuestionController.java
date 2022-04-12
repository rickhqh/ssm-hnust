package com.ydlclass.controller;

import com.ydlclass.entity.HqhQuestion;
import com.ydlclass.service.HqhQuestionService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 题目信息表(HqhQuestion)表控制层
 *
 * @author makejava
 * @since 2022-04-06 10:38:27
 */
@RestController
@RequestMapping("hqhQuestion")
public class HqhQuestionController {
    /**
     * 服务对象
     */
    @Resource
    private HqhQuestionService hqhQuestionService;

    /**
     * 分页查询
     *
     * @param hqhQuestion 筛选条件
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhQuestion>> queryByPage(HqhQuestion hqhQuestion) {
        return ResponseEntity.ok(this.hqhQuestionService.queryByPage(hqhQuestion, PageRequest.of(hqhQuestion.getPage(),hqhQuestion.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhQuestion> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhQuestionService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhQuestion 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhQuestion> add(@RequestBody HqhQuestion hqhQuestion) {
        return ResponseEntity.ok(this.hqhQuestionService.insert(hqhQuestion));
    }

    /**
     * 编辑数据
     *
     * @param hqhQuestion 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhQuestion> edit(@RequestBody HqhQuestion hqhQuestion) {
        return ResponseEntity.ok(this.hqhQuestionService.update(hqhQuestion));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.hqhQuestionService.deleteById(id));
    }

}

