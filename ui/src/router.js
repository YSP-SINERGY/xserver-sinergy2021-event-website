import Vue from 'vue'
import Router from 'vue-router'
import Youth from './components/Youth.vue'
import Teens from './components/Teens.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    { 
      path: '/',
      name: 'youth',
      component: Youth 
    },
    { 
      path: '/teens',
      name: 'teens',
      component: Teens }
  ]
})