package com.ydlclass.service.impl;

import com.ydlclass.entity.HqhCourse;
import com.ydlclass.dao.HqhCourseDao;
import com.ydlclass.service.HqhCourseService;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

import javax.annotation.Resource;

/**
 * 课程信息表(HqhCourse)表服务实现类
 *
 * @author makejava
 * @since 2022-04-05 20:24:42
 */
@Service("hqhCourseService")
public class HqhCourseServiceImpl implements HqhCourseService {
    @Resource
    private HqhCourseDao hqhCourseDao;

    /**
     * 通过ID查询单条数据
     *
     * @param courseId 主键
     * @return 实例对象
     */
    @Override
    public HqhCourse queryById(Long courseId) {
        return this.hqhCourseDao.queryById(courseId);
    }

    /**
     * 分页查询
     *
     * @param hqhCourse 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<HqhCourse> queryByPage(HqhCourse hqhCourse, PageRequest pageRequest) {
        long total = this.hqhCourseDao.count(hqhCourse);
        return new PageImpl<>(this.hqhCourseDao.queryAllByLimit(hqhCourse, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param hqhCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhCourse insert(HqhCourse hqhCourse) {
        this.hqhCourseDao.insert(hqhCourse);
        return hqhCourse;
    }

    /**
     * 修改数据
     *
     * @param hqhCourse 实例对象
     * @return 实例对象
     */
    @Override
    public HqhCourse update(HqhCourse hqhCourse) {
        this.hqhCourseDao.update(hqhCourse);
        return this.queryById(hqhCourse.getCourseId());
    }

    /**
     * 通过主键删除数据
     *
     * @param courseId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long courseId) {
        return this.hqhCourseDao.deleteById(courseId) > 0;
    }
}
