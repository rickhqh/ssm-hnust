<template>
  <el-container>
    <el-header style="height: 80px">
      <div class="header">
        <p
          style="
            font-family: PingFang SC;
            font-size: 24px;
            font-weight: 400px;
            position: relative;
            top: -10px;
          "
        >
          &nbsp;&nbsp;湖南科技大学
        </p>
        <p
          style="
            font-size: 14px;
            font-weight: 400px;
            position: relative;
            top: -20px;
            left: 140px;
          "
        >
          出卷系统
        </p>
      </div>
    </el-header>
    <el-container>
      <el-aside width="210px">
        <div class="icon">
          <div class="icon-img">
            <img src="http://q1.qlogo.cn/g?b=qq&nk=210401532&s=100" alt="" />
          </div>
          <div class="icon-con">
            <p style="font-size: 14px; position: relative; top: -45px">
              院级管理员&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <h2 style="font-size: 14px; position: relative; top: -50px">
              {{ user.userName}}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </h2>
          </div>
        </div>
        <div class="line"></div>
        <el-row class="tac">
          <el-col :span="24">
            <el-menu
              default-active="2"
              class="el-menu-vertical-demo"
              @open="handleOpen"
              @close="handleClose"
            >
              <el-sub-menu index="1">
                <template #title>
                  <el-icon>
                    <img src="../../img/用户管理蓝.png" alt="" />
                  </el-icon>
                  <span style="position: relative; left: 15px">用户管理</span>
                </template>
                <el-menu-item index="1-1" @click="open('./user')"
                  >学生列表</el-menu-item
                >
                <el-menu-item index="1-2" @click="open('./teacher')"
                  >老师列表</el-menu-item
                >
                <el-menu-item index="1-3">批量导入</el-menu-item>
                <el-menu-item index="1-4">发布通知</el-menu-item>
                <el-menu-item index="1-5">审核注册</el-menu-item>
              </el-sub-menu>
              <el-menu-item index="2"  @click="opensystem">
                <el-icon>
                  <img src="../../img/课程管理蓝.png" alt="" />
                </el-icon>
                <span>系统管理</span>
              </el-menu-item>
              <el-menu-item index="3" @click="open('./question')">
                <el-icon>
                  <img src="../../img/课程管理1蓝.png" alt="" />
                </el-icon>
                <span>试题管理</span>
              </el-menu-item>
              <el-menu-item index="4">
                <el-icon>
                  <img src="../../img/班级管理icon-12蓝.png" alt="" />
                </el-icon>
                <span>班级管理</span>
              </el-menu-item>
              <el-menu-item index="5">
                <el-icon>
                  <img src="../../img/专业管理蓝.png" alt="" />
                </el-icon>
                <span>专业管理</span>
              </el-menu-item>
            </el-menu>
          </el-col>
        </el-row>
      </el-aside>
      <el-main>
        <!--        子路由跳转-->
        <router-view />
      </el-main>
    </el-container>
  </el-container>
</template>
<script>
export default {
  name: "mian",
  components: {},
  data() {
    return {
      // 用户信息
      user: {
        userName: "贺启衡",
        password: "111111",
      },
    }
  },
  methods: {
    openuser() {
      this.$router.push("./user");
    },
    opensystem() {
      this.$router.push("./system");
    },
    openteacher() {
      this.$router.push("./teacher");
    },
    open(name){
       this.$router.push(name)
    }
  },
  mounted() {
    this.$router.push("./system");
  },
};
</script>
<style scoped>
.el-header,
.el-footer {
  background-color: white;
  color: var(--el-text-color-primary);
  text-align: left;
}

.header {
  float: left;
  background-color: white;
  width: 214px;
  height: 85px;
  position: relative;
  right: 27px;
  top: -7px;
  box-shadow: 2px 2px 2px 2px #b3c0d1;
}
.header h2,
h5 {
  font-family: "Helvetica Neue", Helvetica, "PingFang SC", "Hiragino Sans GB",
    "Microsoft YaHei", "微软雅黑", Arial, sans-serif;
}

.line {
  width: 210px;
  height: 1px;
  background-color: #ccc;
  z-index: 2;
}

.el-aside {
  background-color: white;
  color: var(--el-text-color-primary);
  text-align: center;
}

.el-main {
  background-color: #94c8fd;
  color: var(--el-text-color-primary);
  text-align: center;
}

.icon {
  height: 100px;
  background-color: white;
}
.icon-con {
  text-align: right;
}
.icon-img {
  width: 50px;
  height: 50px;
  border-radius: 50%;
  border: 5px solid rgba(128, 184, 248, 0.9);
  overflow: hidden;
  position: relative;
  top: 20px;
  left: 30px;
}
.icon-img img {
  height: 50px;
  position: relative;
  top: 5px;
}

.el-icon img {
  width: 27px;
}
.el-menu-item span {
  position: relative;
  left: 15px;
}

.el-sub-menu .el-menu-item {
  position: relative;
  left: 50px;
}
</style>
