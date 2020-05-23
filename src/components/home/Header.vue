<template>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <div class="container">
    <a class="navbar-brand" href="/" style="height: 56px"><img :src="logoImg" class="logoImg"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <router-link tag="li" to="/course" active-class="active" class="nav-item">
          </router-link>
        </ul>
        <ul class="navbar-nav flex left">
        </ul>

        <el-dropdown @command="handleDropdownCommand" v-if="wxLoggedIn">
          <span class="el-dropdown-link">
            <img class="user-avatar rounded" :src="wxAvatar" style="height:46px; width:46px"/>
          </span>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item command="linkToMyProfile" class="my-profile">我的信息</el-dropdown-item>
            <el-dropdown-item v-if="isStaff" command="linkToAdmin" class="admin">后台管理</el-dropdown-item>
            <el-dropdown-item command="logout" class="logout">退出登录</el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>

      </div>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'Header',
  data () {
    return {
    }
  },
  watch: {
    $route (to, from) {
      this.showDropdown = false
    }
  },
  components: {
  },
  computed: {
  },
  methods: {
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.user-info {
  color: white;
}
.dropdown-menu {
  min-width: 2em;
}
.dropdown-btn {
  cursor: pointer;
}
.logoImg {
  width:196px;
  height:48px
}
.navbar {
  padding-top: 10px;
  padding-bottom: 10px;
}
</style>
