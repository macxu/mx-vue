import { API_HOST, getHeader } from './config'
import Vue from 'vue'
import Resource from 'vue-resource'

Vue.use(Resource)
Vue.http.options.root = API_HOST

export default {
  getUsers () {
    const path = 'users'
    const headers = getHeader()

    const params = {}
    return Vue.http.get(path, { params: params, headers: headers })
  },
  // getCenterAds () {
  //   const path = 'ads/?position=center'
  //   const params = {}
  //   return Vue.http.get(path, { params: params })
  // },
  // getSidebarAds () {
  //   const path = 'ads/?position=side'
  //   const params = {}
  //   return Vue.http.get(path, { params: params })
  // },
  // getNotification () {
  //   const path = 'notifications'
  //   const params = {}
  //   return Vue.http.get(path, { params: params })
  // },
  // list () {
  //   let path = 'ads/'
  //   const params = {}
  //   return Vue.http.get(path, { params: params })
  // },
  // get (adId) {
  //   let path = 'ads/' + adId
  //   const params = {}
  //   return Vue.http.get(path, { params: params })
  // },
  // create (adData) {
  //   let path = 'ads/'
  //   const headers = getHeader()
  //   const data = adData

  //   return Vue.http.post(path, data, { params: {}, headers: headers })
  // },
  // update (adData) {
  //   let path = 'ads/' + adData.sequence_id
  //   const headers = getHeader()
  //   const data = adData

  //   return Vue.http.put(path, data, { params: {}, headers: headers })
  // },
  // delete (adId) {
  //   let path = 'ads/' + adId
  //   const headers = getHeader()
  //   return Vue.http.delete(path, { params: {}, headers: headers })
  // },
  getSchemas () {
    let path = 'ads/schemas'
    const params = {}
    return Vue.http.get(path, { params: params })
  }
}
