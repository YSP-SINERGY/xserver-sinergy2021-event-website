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
import VueCookies from "vue-cookies"; // add

// BootstrapVueをプロジェクト全体で利用できるようにする
Vue.use(BootstrapVue) // add

// BootstrapVueアイコンコンポーネントプラグインの使用
Vue.use(IconsPlugin) // add

// VueScrollToをプロジェクト全体で利用できるようにする
Vue.use(VueScrollTo)  // add

// VueCookiesをプロジェクト全体で利用できるようにする
Vue.use(VueCookies)
// クッキーの満了日は１日に設定。（グローバルセッティング）
Vue.$cookies.config('2min') //クッキーは1分毎に更新される。
// Vue.$cookies.config(new Date("2022-01-07T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' })) // 投票開始前にクッキーをリセット(日本標準時刻基準)
// Vue.$cookies.config(new Date("2022-01-08T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' })) // 1日目クッキー満了(日本標準時刻基準)
// Vue.$cookies.config(new Date("2022-01-09T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' })) // 2日目クッキー満了(日本標準時刻基準)
// Vue.$cookies.config(new Date("2022-01-10T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' })) // 3日目クッキー満了(日本標準時刻基準)
/*ここまで*/


Vue.config.productionTip = false

new Vue({
  vuetify,
  render: h => h(App)
}).$mount('#app')

