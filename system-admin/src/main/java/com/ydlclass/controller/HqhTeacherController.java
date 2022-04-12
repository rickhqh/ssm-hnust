package com.ydlclass.controller;

import com.ydlclass.entity.HqhTeacher;
import com.ydlclass.service.HqhTeacherService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 老师信息表(HqhTeacher)表控制层
 *
 * @author makejava
 * @since 2022-04-05 20:17:55
 */
@RestController
@RequestMapping("hqhTeacher")
public class HqhTeacherController {
    /**
     * 服务对象
     */
    @Resource
    private HqhTeacherService hqhTeacherService;

    /**
     * 分页查询
     *
     * @param hqhTeacher 筛选条件
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhTeacher>> queryByPage(HqhTeacher hqhTeacher) {
        return ResponseEntity.ok(this.hqhTeacherService.queryByPage(hqhTeacher, PageRequest.of(hqhTeacher.getPage(), hqhTeacher.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhTeacher> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhTeacherService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhTeacher 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhTeacher> add(@RequestBody HqhTeacher hqhTeacher) {
        return ResponseEntity.ok(this.hqhTeacherService.insert(hqhTeacher));
    }

    /**
     * 编辑数据
     *
     * @param hqhTeacher 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhTeacher> edit(@RequestBody HqhTeacher hqhTeacher) {
        return ResponseEntity.ok(this.hqhTeacherService.update(hqhTeacher));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.hqhTeacherService.deleteById(id));
    }

}

