<template>
  <div class="system">
    <div class="top">
      <h5>&nbsp;&nbsp;系统信息<br /></h5>
      <p
        style="
          font-size: 14px;
          font-weight: 400;
          position: relative;
          top: -25px;
          color: #666;
        "
      >
        &nbsp;&nbsp;&nbsp;本日系统信息内容已经更新
      </p>
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
    <div class="student">
      {{ studentInfo.name }}<br />
      {{ studentInfo.number }}
    </div>
  </div>

  <div class="manager">
    <div class="top">
      <h5>&nbsp;&nbsp;管理员信息<br /></h5>
      <p
        style="
          font-size: 14px;
          font-weight: 400;
          position: relative;
          top: -25px;
          color: #666;
        "
      >
        &nbsp;&nbsp;&nbsp;本日管理员信息内容已经更新
      </p>
    </div>

    <div class="zhangsan">
      <img src="../../img/个人,用户.png" />
      <div class="content">
        <h3>{{ manager.name }}</h3>
        <br />
        <div class="id" style="height: 30px">
          <img src="../../img/个人.png" />
          {{ manager.id }}
        </div>
        <div class="xueyuan" style="height: 30px">
          <img src="../../img/地标.png" />
          {{ manager.xueyuan }}
        </div>
        <div class="code">{{ manager.code }}</div>
        <button>修改密码</button>
      </div>
    </div>
     </div>
  <div class="root">
    <div class="top">
      <h5>&nbsp;&nbsp;权限管理<br /></h5>
      <p
        style="
          font-size: 14px;
          font-weight: 400;
          position: relative;
          top: -25px;
          color: #666;
        "
      >
        &nbsp;&nbsp;&nbsp;本日权限管理内容已经更新
      </p>
    </div>
    <div class="box">
      <img src="../../img/用户管理.png" />
      <p>用户管理</p>
    </div>
    <div class="box">
      <img src="../../img/课程管理.png" />
      <p>课程管理</p>
    </div>
    <div class="box">
      <img src="../../img/课程管理1.png" />
      <p>课程组管理</p>
    </div>
    <div class="box">
      <img src="../../img/班级管理icon-12.png" />
      <p>班级管理</p>
    </div>
    <div class="box">
      <img src="../../img/专业管理.png" />
      <p>专业管理</p>
    </div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      studentInfo: {
        name: "学生账号数",
        number: 234,
      },
      manager: {
        name: "贺启衡",
        id: "200120203",
        xueyuan: "计算机科学与工程学院",
        code: "*******",
      },
    };
  },
};
</script>

<style scoped>
.system {
  width: 630px;
  height: 400px;
  background-color: white;
  display: block;
  position: relative;
  top: -30px;
}
.system .top {
  height: 80px;
  width: 630px;
  background-color: white;
  text-align: left;
  line-height: 35px;
  border-bottom: 1px solid #ccc;
}
.top,
h5 {
  font-size: 21px;
  font-weight: 400;
}
.student {
  height: 100px;
  width: 210px;
  background-color: white;
  float: left;
  padding-top: 60px;
  text-align: center;
}

.manager {
  width: 450px;
  height: 400px;
  background-color: white;
  display: block;
  float: none;
  position: relative;
  top: -466px;
  left: 650px;
  text-align: left;
  align-items: center;
}
.manager .top {
  height: 80px;
  width: 450px;
  background-color: white;
  text-align: left;
  line-height: 35px;
  border-bottom: 1px solid #ccc;
}
.manager .zhangsan {
  text-align: center;
}
.manager .content h3 {
  position: relative;
  top: 10px;
}
.manager .zhangsan img {
  height: 50px;
  text-align: center;
  position: relative;
  top: 30px;
}
.manager .content img {
  height: 21px;
}
.manager .zhangsan .id img {
  position: relative;
  top: 5px;
  left: -58px;
}
.manager .zhangsan .xueyuan img {
  position: relative;
  top: 5px;
  left: -25px;
}
.manager button {
  color: #94c8fd;
  background-color: white;
  border: 0px;
}

.root {
  background-color: white;
  height: 340px;
  width: 1100px;
  display: block;
  position: relative;
  top: -460px;
  text-align: left;
}
.root .top {
  height: 80px;
  width: 1100px;
  background-color: white;
  text-align: left;
  line-height: 35px;
  border-bottom: 1px solid #ccc;
}
.root .box {
  height: 160px;
  width: 160px;
  float: left;
  text-align: center;
  line-height: 10px;
  background-color: #94c8fd;
  border-top: 40px solid white;
  border-left: 50px solid white;
}
.box img {
  align-items: center;
  width: 140px;
  background-size: 120px;
  max-height: 120px;
  max-width: 110px;
  position: relative;
  left: 0px;
  top: 10px;
}
.box p {
  position: relative;
  top: 9px;
  color: white;
}
</style>
