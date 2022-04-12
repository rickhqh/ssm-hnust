package com.ydlclass.entity;

import java.io.Serializable;

/**
 * 学生和课程关联表(HqhUserCourse)实体类
 *
 * @author makejava
 * @since 2022-04-05 20:18:14
 */
public class HqhUserCourse extends HqhBaseEntity implements Serializable {
    private static final long serialVersionUID = 975420213683398103L;
    /**
     * 学生ID
     */
    private Long userId;
    /**
     * 课程ID
     */
    private Long courseId;


    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

}

