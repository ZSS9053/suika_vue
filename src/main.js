// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import './assets/css/bootstrap.min.css'
import './assets/css/font-awesome.min.css'
import './assets/css/base.css'
import './assets/js/jquery.js'
import './assets/js/bootstrap.js'

//import myheader from '@/components/header'

Vue.config.productionTip = false
//Vue.component('my-header',myheader)
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
