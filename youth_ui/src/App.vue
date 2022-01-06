<template>
 <v-app>
  <div id="app">
    <navigation-menu />
    <div class="youth"><youth></youth></div>
    <div class="crowd-funding"><crowd-funding></crowd-funding></div>
  </div>
   </v-app>
</template>

<script>
import Youth from './components/Youth.vue'
import NavigationMenu from './components/youth/NavigationMenu.vue'
import CrowdFunding from './components/youth/CrowdFunding.vue'
export default {
  name: 'App',
  components: {
    Youth,
    CrowdFunding,
    NavigationMenu
  },
  data: () => ({
  }),
  mounted() {
    const title = "シナジー2021特設サイト-青年(Youth)";
    const description = "S!NERGY（シナジー) それは、地域社会や世界をワクワクさせたい若者たちのプレゼン・イベント。 そんな若者たちの頂点として、一番ワクワクする『アイデア』と『熱量』を持つプレゼンターにベストシナジスト賞（賞金30万円）を贈っている。 2016年初開催以来、累計観客動員数は13,000名、Youtube総再生回数は約5万回を達成。 一度きりの思い出ではなく、『ワクワク』させることに本気になった若者たちを見て下さい。 あなたの『当たり前』が変わるはずです。"
    document.title = title
    document.querySelector("meta[property='og:title']").setAttribute('content', title)
    document.querySelector("meta[name='description']").setAttribute('content', description)
    document.querySelector("meta[property='og:description']").setAttribute('content', description)
  }
};
</script>

<style scoped>
#container{
  width: 100%;
}
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}
</style>
