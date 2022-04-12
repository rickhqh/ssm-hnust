package com.ydlclass.controller;

import com.ydlclass.entity.HqhUserCourse;
import com.ydlclass.service.HqhUserCourseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 学生和课程关联表(HqhUserCourse)表控制层
 *
 * @author makejava
 * @since 2022-04-05 20:18:11
 */
@RestController
@RequestMapping("hqhUserCourse")
public class HqhUserCourseController {
    /**
     * 服务对象
     */
    @Resource
    private HqhUserCourseService hqhUserCourseService;

    /**
     * 分页查询
     *
     * @param hqhUserCourse 筛选条件
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhUserCourse>> queryByPage(HqhUserCourse hqhUserCourse) {
        return ResponseEntity.ok(this.hqhUserCourseService.queryByPage(hqhUserCourse, PageRequest.of(hqhUserCourse.getPage(), hqhUserCourse.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhUserCourse> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhUserCourseService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhUserCourse 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhUserCourse> add(@RequestBody HqhUserCourse hqhUserCourse) {
        return ResponseEntity.ok(this.hqhUserCourseService.insert(hqhUserCourse));
    }

    /**
     * 编辑数据
     *
     * @param hqhUserCourse 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhUserCourse> edit(@RequestBody HqhUserCourse hqhUserCourse) {
        return ResponseEntity.ok(this.hqhUserCourseService.update(hqhUserCourse));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.hqhUserCourseService.deleteById(id));
    }

}

