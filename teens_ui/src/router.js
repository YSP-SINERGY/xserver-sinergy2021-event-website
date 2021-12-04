import Vue from 'vue'
import Router from 'vue-router'
// import Youth from './components/Youth.vue'
import Teens from './components/Teens.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: '/teens/',
  routes: [
    // { 
    //   path: '/',
    //   name: 'youth',
    //   component: Youth 
    // },
    { 
      path: '/',
      name: 'teens',
      component: Teens }
  ]
})