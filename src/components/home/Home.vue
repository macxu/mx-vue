<template>
<div style="max-width:1100px; padding-top:10px">
  <header></header>
  <map-chart></map-chart>
</div>
</template>
<script>
import Header from '@/components/home/Header'
import MapChart from '@/components/charts/MapChart'
import SampleService from '@/api/SampleService'
// import Footer from '@/components/Footer'
export default {
  name: 'home',
  components: {
    Header,
    MapChart
  },
  data () {
    return {
      loading: false,
      users: []
    }
  },
  mounted () {
    this.load()
  },
  methods: {
    load () {
      var self = this
      SampleService.getUsers().then(function (resp) {
        self.users = resp.data
      }).catch(err => {
        console.log(err)
      })
    }
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
