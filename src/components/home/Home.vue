<template>
<div style="max-width:1100px; padding-top:50px">
  <el-row>
    <el-col :span="8"><div class="grid-content bg-purple">xxxxx</div></el-col>
    <el-col :span="8"><div class="grid-content bg-purple-light">yyyy</div></el-col>
    <el-col :span="8"><div class="grid-content bg-purple">zzzz</div></el-col>
  </el-row>
  <el-row>
    <header></header>
    <el-button type="primary">Primary</el-button>
    <div>XXXXX</div>
    <div>
      <img src="@/assets/logo.png">
    </div>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
  With Bootstrap!
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <div>
    <i class="fab fa-medium"></i>
    <i class="far fa-envelope"></i>
  </div>
  </el-row>
</div>
</template>
<script>
import Header from '@/components/home/Header'
// import Footer from '@/components/Footer'
export default {
  name: 'home',
  components: {
    Header
  }
}
</script>
<style scoped>
.wider-container {
  width:1200px;
}
.el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
</style>
