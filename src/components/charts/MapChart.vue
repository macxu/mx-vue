<template>
<div style="max-width:1100px; padding-top:10px">
  <v-chart :options="chartOptions"/>
</div>
</template>
<script>
import ECharts from 'vue-echarts'
import 'echarts/lib/chart/line'
import 'echarts/lib/component/polar'
import 'echarts/map/js/china.js'
import SampleService from '@/api/SampleService'
export default {
  name: 'mapChart',
  components: {
    'v-chart': ECharts
  },
  data () {
    return {
      chartTitle: '',
      chartData: [],
      chartOptions: {
        tooltip: {
          formatter: function (params, ticket, callback) {
            return params.seriesName + '<br />' + params.name + '：' + params.value
          }
        },
        visualMap: {
          min: 0,
          max: 1500,
          left: 'left',
          top: 'bottom',
          text: ['多', '少'],
          inRange: {
            color: ['#e0ffff', '#006edd']
          },
          show: true
        },
        geo: {
          map: 'china',
          roam: false,
          zoom: 1.23,
          label: {
            normal: {
              show: true,
              fontSize: '10',
              color: 'rgba(0,0,0,0.7)'
            }
          },
          itemStyle: {
            normal: {
              borderColor: 'rgba(0, 0, 0, 0.2)'
            },
            emphasis: {
              areaColor: '#F3B329',
              shadowOffsetX: 0,
              shadowOffsetY: 0,
              shadowBlur: 20,
              borderWidth: 0,
              shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
          }
        },
        series: [
          {
            name: '粉丝人数',
            type: 'map',
            geoIndex: 0,
            data: [
              {name: '北京', value: 1200},
              {name: '湖北', value: 1100},
              {name: '浙江', value: 699},
              {name: '广东', value: 799},
              {name: '新疆', value: 799},
              {name: '上海', value: 1355}
            ]
          }
        ]
      }
    }
  },
  mounted () {
    this.load()
  },
  methods: {
    load () {
      var self = this
      SampleService.getGeoStats('1').then(function (resp) {
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
