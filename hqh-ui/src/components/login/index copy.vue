<template>

  <el-row :gutter="20">
    <el-col :span="6"><div class="grid-content bg-purple" /></el-col>
    <el-col :span="12">
      <h1>用户登陆</h1>
      <el-form ref="formref" :model="form" label-width="120px">
        <el-form-item label="用户名">
          <el-input v-model="user.username" />
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="user.password" />
        </el-form-item>
        <el-form-item>
        <el-button type="primary" @click="login">登录</el-button>
        </el-form-item>
      </el-form>
    </el-col>
    <el-col :span="6"><div class="grid-content bg-purple" /></el-col>
  </el-row>
</template>
<script >
import { ElMessageBox} from 'element-plus'

export default {
  name: 'login',
  components: {},
  data() {
    return {
      form:{}
      ,
      user:{
        username:'',
        password:''
      }

    }
  },
  methods: {
    login(){
      // if(this.user.username==="root"){
        ElMessageBox.alert('操作成功', '信息');

        this.$router.push('/main');
      }
    }



}
</script>
<style>

</style>

