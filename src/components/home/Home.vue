<template>
<div style="max-width:1100px; padding-top:50px">
  <el-row>
    <header></header>
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
</style>
