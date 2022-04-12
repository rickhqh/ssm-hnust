package com.ydlclass.entity;

import java.io.Serializable;

/**
 * 老师和课程关联表(HqhTeacherCourse)实体类
 *
 * @author makejava
 * @since 2022-04-05 20:17:59
 */
public class HqhTeacherCourse extends HqhBaseEntity implements Serializable {
    private static final long serialVersionUID = -98604645264520597L;
    /**
     * 老师ID
     */
    private Long teacherId;
    /**
     * 课程ID
     */
    private Long courseId;


    public Long getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Long teacherId) {
        this.teacherId = teacherId;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

}

