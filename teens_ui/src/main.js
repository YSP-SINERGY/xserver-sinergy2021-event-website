import Vue from 'vue'
import App from './App.vue'
 
/*ここから*/
import vuetify from './plugins/vuetify'; // add
import VueScrollTo from 'vue-scrollto'; // add

// bootstrap-vueからBootstrapVue,IconPluginをインポートする
import { BootstrapVue, IconsPlugin } from 'bootstrap-vue' // add
// Bootstrap と BootstrapVueのCSSファイルをインポート（順序はBootstrap⇒BootstrapVue）
import 'bootstrap/dist/css/bootstrap.css' // add
import 'bootstrap-vue/dist/bootstrap-vue.css' // add

// BootstrapVueをプロジェクト全体で利用できるようにする
Vue.use(BootstrapVue) // add

// BootstrapVueアイコンコンポーネントプラグインの使用
Vue.use(IconsPlugin) // add

// VueScrollToをプロジェクト全体で利用できるようにする
Vue.use(VueScrollTo)  // add
/*ここまで*/


Vue.config.productionTip = false

new Vue({
  vuetify,
  render: h => h(App)
}).$mount('#app')
