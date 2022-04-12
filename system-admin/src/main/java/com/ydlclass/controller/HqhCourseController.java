package com.ydlclass.controller;

import com.ydlclass.entity.HqhCourse;
import com.ydlclass.service.HqhCourseService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;

/**
 * 课程信息表(HqhCourse)表控制层
 *
 * @author makejava
 * @since 2022-04-05 20:24:39
 */
@RestController
@RequestMapping("hqhCourse")
public class HqhCourseController {
    /**
     * 服务对象
     */
    @Resource
    private HqhCourseService hqhCourseService;

    /**
     * 分页查询
     *
     * @param hqhCourse 筛选条件
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhCourse>> queryByPage(HqhCourse hqhCourse) {
        return ResponseEntity.ok(this.hqhCourseService.queryByPage(hqhCourse, PageRequest.of(hqhCourse.getPage(), hqhCourse.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhCourse> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhCourseService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhCourse 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhCourse> add(@RequestBody HqhCourse hqhCourse) {
//        hqhCourse.setLoginIp(httpServletRequest.getRemoteHost());
        hqhCourse.setCreateTime(new Date());
//        hqhCourse.setCreateBy(hqhCourse.getCourse());
        hqhCourse.setStatus("0");
//        hqhCourse.setUpdateBy(hqhCourse.getCourse());
        hqhCourse.setUpdateTime(new Date());
        return ResponseEntity.ok(this.hqhCourseService.insert(hqhCourse));
    }

    /**
     * 编辑数据
     *
     * @param hqhCourse 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhCourse> edit(@RequestBody HqhCourse hqhCourse) {
        return ResponseEntity.ok(this.hqhCourseService.update(hqhCourse));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.hqhCourseService.deleteById(id));
    }

}

