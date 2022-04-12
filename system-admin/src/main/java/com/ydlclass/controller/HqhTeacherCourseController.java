package com.ydlclass.controller;

import com.ydlclass.entity.HqhTeacherCourse;
import com.ydlclass.service.HqhTeacherCourseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 老师和课程关联表(HqhTeacherCourse)表控制层
 *
 * @author makejava
 * @since 2022-04-05 20:17:58
 */
@RestController
@RequestMapping("hqhTeacherCourse")
public class HqhTeacherCourseController {
    /**
     * 服务对象
     */
    @Resource
    private HqhTeacherCourseService hqhTeacherCourseService;

    /**
     * 分页查询
     *
     * @param hqhTeacherCourse 筛选条件
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhTeacherCourse>> queryByPage(HqhTeacherCourse hqhTeacherCourse) {
        return ResponseEntity.ok(this.hqhTeacherCourseService.queryByPage(hqhTeacherCourse, PageRequest.of(hqhTeacherCourse.getPage(),hqhTeacherCourse.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhTeacherCourse> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhTeacherCourseService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhTeacherCourse 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhTeacherCourse> add(@RequestBody HqhTeacherCourse hqhTeacherCourse) {
        return ResponseEntity.ok(this.hqhTeacherCourseService.insert(hqhTeacherCourse));
    }

    /**
     * 编辑数据
     *
     * @param hqhTeacherCourse 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhTeacherCourse> edit(@RequestBody HqhTeacherCourse hqhTeacherCourse) {
        return ResponseEntity.ok(this.hqhTeacherCourseService.update(hqhTeacherCourse));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.hqhTeacherCourseService.deleteById(id));
    }

}

