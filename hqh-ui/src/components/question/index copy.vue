<template>
  <el-container>
    <el-header style="width: 100%; left: 10px; top: 10px; float: left"
      >题目列表
      <p style="color: grey; font-size: 10px">本日题目列表内容已更新</p>
      <el-divider
    /></el-header>

    <el-main style="width: 100%">
      <el-form
        :model="queryParem"
        label-width="100px"
        class="demo-ruleForm"
        size="mini"
        :inline="true"
      >
        <el-row>
          <el-col span="6">
            <el-form-item label="题目">
              <el-input v-model="queryParem.questionName"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="6">
            <el-form-item label="题型">
              <el-input v-model="queryParem.topic"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="6">
            <el-form-item label="知识点">
              <el-input v-model="queryParem.analysis"></el-input>
            </el-form-item>
          </el-col>
          <el-col span="6">
            <el-row>
              <div style="width: 40px"></div>
              <el-button type="primary" @click="submitForm"
                >&nbsp;&nbsp;查询&nbsp;&nbsp;</el-button
              >
              <div style="width: 30px"></div>
              <el-button type="warning" @click="resetForm"
                >&nbsp;&nbsp;重置&nbsp;&nbsp;</el-button
              >
            </el-row>
          </el-col>
        </el-row>
      </el-form>
      <el-divider />
      <el-table
        ref="tableRef"
        row-key="username"
        :data="tableData"
        style="width: 100%"
        v-loading="loading"
        element-loading-text="Loading..."
      >
        <el-table-column prop="questionId" label="id" width="50" />
        <el-table-column prop="questionName" label="题目"  width="400" />
        <el-table-column prop="optiona" label="选项A" width="150"  />
        <el-table-column prop="optionb" label="选项B" width="150" />
        <el-table-column prop="optionc" label="选项C" width="150" />
        <el-table-column prop="optiond" label="选项D" width="150"/>
        <el-table-column prop="topic" label="题型" />
        <el-table-column label="操作" fixed="right" width="130">
          <template #default="scope">
            <el-button size="small" @click="handleEdit(scope.$index, scope.row)"
              >编辑</el-button
            >
            <el-button
              size="small"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)"
              >删除</el-button
            >
          </template>
        </el-table-column>
      </el-table>
      <el-dialog v-model="dialogVisible" title="修改题目" width="30%">
        <el-form ref="userFormRef" :model="userForm" label-width="120px">
          <el-form-item label="题目">
            <el-input v-model="userForm.questionName"></el-input>
          </el-form-item>
          <el-form-item label="选项A">
            <el-input v-model="userForm.optiona"></el-input>
          </el-form-item>
          <el-form-item label="选项B">
            <el-input v-model="userForm.optionb"></el-input>
          </el-form-item>
          <el-form-item label="选项c">
            <el-input v-model="userForm.optionc"></el-input>
          </el-form-item>
          <el-form-item label="选项D">
            <el-input v-model="userForm.optiond"></el-input>
          </el-form-item>
          <el-form-item label="正确答案">
            <el-input v-model="userForm.correctAnswer"></el-input>
          </el-form-item>
          <el-form-item label="题型">
            <el-input v-model="userForm.topic"></el-input>
          </el-form-item>
          <el-form-item label="知识点">
            <el-input v-model="userForm.analysis"></el-input>
          </el-form-item>
        </el-form>

        <template #footer>
          <span class="dialog-footer">
            <el-button @click="dialogVisible = false">取消</el-button>
            <el-button type="primary" @click="submitFrom">提交</el-button>
          </span>
        </template>
      </el-dialog>
    </el-main>

    <!-- <h1>这是{{ currentPage }}</h1> -->
    <el-footer style="width: 200">
      <el-pagination
        background
        layout="prev, pager, next"
        :total="total"
        :page-size="queryParem.size"
        @current-change="changePage"
        style="width: 100%"
      />
    </el-footer>
  </el-container>
</template>

<script  setup>
import { ref } from "vue";
import {
  listUser,
  addUser,
  getByUserId,
  updateUser,
  deleteUser,
} from "@/api/question.js";
import { onMounted } from "vue";
import { ElMessageBox, ElMessage } from "element-plus";
import { ElNotification } from "element-plus";
const loading = ref(true);
const queryParem = ref({
  questionId: "",
  size: 10,
  page: 0,
  questionName: "",
  topic: "",
  optiona: "",
  optionb: "",
  optionc: "",
  optiond: "",
  correctAnswer:"",
  analysis:"",
  delFlag: "0",
});

const userForm = ref({
  questionId: "",
  size: 10,
  page: 0,
  questionName: "",
  topic: "",
  optiona: "",
  optionb: "",
  optionc: "",
  optiond: "",
  delFlag: "0",
  correctAnswer:"",
  analysis:"",
});

const tableData = ref([]);
const total = ref(0);
const dialogVisible = ref(false);
const getList = function () {
  listUser(queryParem.value).then((res) => {
    tableData.value = res.data.content;
    total.value = res.data.totalElements;
    queryParem.value.size = res.data.size;
  });
};
onMounted(() => {
  getList();
  loading.value = false;
});
const changePage = async function (current) {
  queryParem.value.page = current - 1;
  getList();
  // loading.value = false;
};

const submitForm = function () {
  getList();
};

const resetForm = function () {
  tableData.value = [];
  total.value = 0;
  queryParem.value.size = 4;
  queryParem.value.correctAnswer = "";
  queryParem.value.topic= "";
  queryParem.value.optiona = "";
  queryParem.value.optionb = "";
  queryParem.value.optionc = "";
  queryParem.value.optiond = "";
  queryParem.value.analysis = "";
  queryParem.value.questionName = "";
  getList();
};
// const addForm = function () {
//   console.log(queryParem.value.userName);
//   if (
//     queryParem.value.optiona  == "" ||
//     queryParem.value.correctAnswer === null ||
//     queryParem.value.questionName === null ||
//     queryParem.value.analysis  === null
//   ) {
//     ElNotification({
//       title: "错误",
//       message: "请输入题目信息!",
//       type: "Error",
//     });
//     // ElMessage.error('Oops, this is a error message.')
//   } else {
//     queryParem.value.delFlag = "0";
//     addUser(queryParem.value).then((res) => {
//       console.log(res);
//     });
//     resetForm();
//   }
// };

const handleEdit = function (index, row) {
  getByUserId(row.questionId).then((res) => {
    userForm.value = res.data;
    dialogVisible.value = true;
  });
};
const submitFrom = function () {
  updateUser(userForm.value).then((res) => {
    if (res.status === 200) {
      dialogVisible.value = false;
    }
    // 更新列表
    getList();
  });
};
const handleDelete = function (index, row) {
  getByUserId(row.questionId).then((res) => {
    userForm.value = res.data;
  });
  ElMessageBox.confirm("您确定要删除此条信息吗？", "Warning", {
    confirmButtonText: "确定",
    cancelButtonText: "取消",
    type: "warning",
  })
    .then(() => {
      userForm.value.delFlag = "2";
      updateUser(userForm.value).then((res) => {
        if (res.status === 200) {
          // 更新列表
          getList();

          // ElMessage({
          //   type: "info",
          //   message: `删除成功!`,
          // });
          ElNotification({
            title: "Success",
            message: "删除成功!",
            type: "Success",
          });
        }
      });
    })
    .catch(() => {
      ElMessage({
        type: "info",
        message: "取消删除",
      });
      ElNotification({
        title: "cancel",
        message: "取消删除!",
        type: "Success",
      });
    });
};
</script>
<style scoped>
.el-header {
  background: white;
}
.el-main {
  background: white;
}
.el-footer {
  background: white;
}
.el-pagination {
  justify-content: center;
}
body {
  margin: 0;
}
</style>
