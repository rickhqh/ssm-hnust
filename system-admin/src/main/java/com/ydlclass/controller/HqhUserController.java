package com.ydlclass.controller;

import com.ydlclass.entity.HqhUser;
import com.ydlclass.hqhEnum.DeleteFlagEnum;
import com.ydlclass.service.HqhUserService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 用户信息表(HqhUser)表控制层 表现层
 *vo
 * 启动服务器,加载spring 文件 注入service
 * @author makejava
 * @since 2022-04-03 19:20:02
 */
@RestController
@RequestMapping("hqhUser")
public class HqhUserController {
    /**
     * 服务对象//依赖注入
     *   Spring的两个核心内容为控制反转（Ioc）和面向切面（AOP），依赖注入（DI）是控制反转（Ioc）的一种方式。
     *   就可以调用service业务层
     */
    @Resource
    private HqhUserService hqhUserService;

    /**
     * 分页查询
     *
     * @param hqhUser 筛选条件
     * @param
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<HqhUser>> queryByPage(HqhUser hqhUser) {
        return ResponseEntity.ok(this.hqhUserService.queryByPage(hqhUser, PageRequest.of(hqhUser.getPage(),hqhUser.getSize())));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<HqhUser> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.hqhUserService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param hqhUser 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<HqhUser> add(@RequestBody HqhUser hqhUser, HttpServletRequest httpServletRequest) {
        hqhUser.setLoginIp(httpServletRequest.getRemoteHost());
        hqhUser.setCreateTime(new Date());
        hqhUser.setCreateBy(hqhUser.getUserName());
        hqhUser.setStatus("0");
        hqhUser.setUpdateBy(hqhUser.getUserName());
        hqhUser.setUpdateTime(new Date());
//        hqhUser.setDelFlag(DeleteFlagEnum.NO.getValue());
        hqhUser.setPassword(hqhUser.getUserName());
        return ResponseEntity.ok(this.hqhUserService.insert(hqhUser));
    }

    /**
     * 编辑数据
     *
     * @param hqhUser 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<HqhUser> edit(@RequestBody HqhUser hqhUser) {

        return ResponseEntity.ok(this.hqhUserService.update(hqhUser));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping("{id}")
    public ResponseEntity<Boolean> deleteById(@PathVariable Long id) {
        return ResponseEntity.ok(this.hqhUserService.deleteById(id));
    }

}

