<template>
 <v-app>
  <div id="app">
    <div class="teens"><teens></teens>
    </div>
  </div>
   </v-app>
</template>

<script>
import VueCookies from 'vue-cookies';
import axios from 'axios';
import Teens from './components/Teens.vue'
export default {
  name: 'App',
  components: {
      Teens
    },
  data: () => ({
    //
  }),
  mounted() { // SEO強化のため
    const title = "シナジー2021特設サイト-中高生(Teens)";
    const description = "S!NERGY（シナジー) それは、地域社会や世界をワクワクさせたい若者たちのプレゼン・イベント。 そんな若者たちの頂点として、一番ワクワクする『アイデア』と『熱量』を持つプレゼンターにベストシナジスト賞（賞金30万円）を贈っている。 2016年初開催以来、累計観客動員数は13,000名、Youtube総再生回数は約5万回を達成。 一度きりの思い出ではなく、『ワクワク』させることに本気になった若者たちを見て下さい。 あなたの『当たり前』が変わるはずです。"
    document.title = title
    document.querySelector("meta[property='og:title']").setAttribute('content', title)
    document.querySelector("meta[name='description']").setAttribute('content', description)
    document.querySelector("meta[property='og:description']").setAttribute('content', description)
  },
  created() {
    let teens_vote_date = new Date(VueCookies.get('teens_vote_date')) // クッキー上のデータからDateオブジェクトを生成
    if (!(VueCookies.isKey('teens_vote_date')) // クッキーが存在しないか
    || (teens_vote_date.getMonth() === 10) // 投票日以前にアクセスしていた場合クッキーを更新
    || (teens_vote_date.getMonth() === 11) // 投票日以前にアクセスしていた場合クッキーを更新
    || ((teens_vote_date.getMonth() === 0) && (1 <= teens_vote_date.getDate()) && (teens_vote_date.getDate() <= 7)) // 投票日以前にアクセスしていた場合クッキーを更新
    || ((teens_vote_date.getMonth() === 0) && (teens_vote_date.getDate() === 8) && (new Date().getDate() === 9)) // クッキーが生成されてから一日あるいは二日経過している場合
    || ((teens_vote_date.getMonth() === 0) && (teens_vote_date.getDate() === 8) && (new Date().getDate() === 10))  // クッキーが生成されてから一日あるいは二日経過している場合
    || ((teens_vote_date.getMonth() === 0) && (teens_vote_date.getDate() === 9) && (new Date().getDate() === 10))) // クッキーが生成されてから一日あるいは二日経過している場合
    {
      VueCookies.set('teens_vote_date', new Date().toLocaleString({ timeZone: 'Asia/Tokyo' })); // クッキーが生成された日時を日本標準時間で保存する
      VueCookies.set('teens_if_voted', false);
      VueCookies.set('teens_user_agent', navigator.userAgent);
    }
    axios.get('https://api.ipify.org?format=json')
      .then(res => {
        VueCookies.set('teens_ip', res.data.ip);
    });
  },
};
</script>

<style scoped>
#container{
  width: 100%;
  /* background-image: linear-gradient(-90deg, #8f9292, #2e3036); */
}
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}
</style>
