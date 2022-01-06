<template>
  <v-container>
    <h1 class="head-border mt-15 mb-15">
      <a id="index2">
        PRESENTER
      </a>
    </h1>
    <div >
      <v-row>
        <v-col
          v-for="item in items"
          :key="item.id"
          cols="6"
          lg="4"
          md="6"
          sm="6"
          xs="6"
        >
          <div>
            <h2></h2>
            <img
              @click="openModal(item)"
              :src="item.imageUrl"
              class="mini-rounded-circle responsive my-3 img_wrap"
              alt="*"
            >
          </div>

          <div>
            <p 
            class = "
            text-caption
            grey--text
            text--darken-3
            text-subtitle-1"
            v-html="item.title"
          >{{ item.title }}</p>
          </div>

          <v-btn
            @click="openModal(item)"
            :src="item.img_src"
            color="blue-grey darken-4"
            class="white--text"
          >
            {{ item.desc }}
          </v-btn>
          
        </v-col>
      </v-row>
      <modal
        :dialog.sync="isModal"
        :item="selectedItem"
      />
    </div>  
  </v-container>
</template>

<script>
  import VueCookies from 'vue-cookies';
  import Modal from './Modal.vue'

  export default {
    components: {
      Modal
    },
    data () {
      return {
        showContent: false,
        isModal: false,
        selectedItem: {},
        items: []
      }
    },
    created () {
      this.items = [
        { 
          id: 1,
          desc: '大友希野',
          range: 'お手伝いします！</br>私たちができる地域デザイン',
          title: 'お手伝いします！</br>私たちができる地域デザイン',
          explanation: '私たちは宮城県を中心に活動するデザインプロジェクトチームです。普段は地域貢献のために、お店や商品撮影、イベントやお笑いライブなど様々な分野の撮影を行なっています。</br></br>ぜひNONOSTYLEをご覧ください！',
          youtubeUrl: 'https://www.youtube.com/embed/Luv6YusOsls', //動画未取得>元々のurlに問題あり
          imageUrl: require("@/assets/youth/y_otomo.jpg"),
          isShow: false
        },
        { 
          id: 2, 
          desc: '遠藤友香',
          range: '目指せ脱プラ！海洋プラスチック問題について考えよう！',
          title: '目指せ脱プラ！</br>海洋プラスチック問題！',
          explanation: '海洋生物がゴミ袋を誤食してしまったり、プラスチックバックが有料になったりと、プラスチック問題が身近になってきました。</br>≈その解決のために、私が卒業論文で行った農学部の視点から始めるエコ製品をご紹介します！',
          youtubeUrl: 'https://www.youtube.com/embed/1dUrajSNHc4', 
          imageUrl: require("@/assets/youth/y_endou.jpg"),
          isShow: false
        },
        { 
          id: 3, 
          desc: '舟橋彰馬',
          range: 'オンラインでつながる</br>ごみひろいの輪',
          title: 'オンラインでつながる</br>ゴミ拾い',
          explanation: '近年注目が高まっている海洋プラスチックごみ問題ですが、私たちにも身近な問題です。</br></br>生活には欠かせないプラスチックが海洋環境を危機にさらしています。</br></br>私たちPSWと一緒に取り組んでほしいと思っています。',
          youtubeUrl: 'https://www.youtube.com/embed/J_WY6-6GJjM',
          imageUrl: require("@/assets/youth/y_funabashi_shouma.jpg"),
          isShow: false
        },
        { 
          id: 4,  
          desc: '東郷泰暉',
          range: 'PEACE BIWAICHIプロジェクト',
          title: 'PEACE BIWAICHI</br>プロジェクト',
          explanation: 'PEACE BIWAICHIプロジェクトについて発表します。</br></br>みなさんに３つの問題を考えていただき、</br>そこから生まれた活動の内容を紹介しています。</br></br>このプロジェクトに関心を持って頂き、ぜひ一度参加して頂きたいです。',
          youtubeUrl: 'https://www.youtube.com/embed/f5qNV7ylNeg',
          imageUrl: require("@/assets/youth/y_tougou.jpg"),
          isShow: false
        },
        { 
          id: 5, 
          desc: '小野村華楠',
          range: '「NOMORE Child Marriage </br>-ニジェール共和国における</br>児童婚防止キャンペーン」',
          title: 'ニジェールの児童婚</br>防止キャンペーン',
          explanation: '私は12歳で結婚した。</br>皆さんは児童婚について知っていますか？</br>児童婚は、10代の子供たちが強制的に結婚をさせられることを意味します。</br></br>特にアフリカのニジェールでは、深刻な問題となっています。そこで、今回はこの問題を解決するためのキャンペーンを立ち上げました！どうぞ応援よろしくお願い致します！',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_onomura.jpg"),
          isShow: false
        },
        { 
          id: 6, 
          desc: '五十嵐大修',
          range: 'サウナで世界平和',
          title: 'サウナで</br>世界平和',
          explanation: 'いま、一大ブームが起きているサウナの魅力をニートとアフリカ起業の経験がある29歳男性の観点からお話します。</br></br>少しでも多くの人にサウナが最高！だと伝われば嬉しいです。',
          youtubeUrl: 'https://www.youtube.com/embed/gjwjMNltoc8',
          imageUrl: require("@/assets/youth/y_igarashi.jpg"),
          isShow: false
        },
        { 
          id: 7, 
          desc: '園部達也',
          range: 'YSP活動を通して感じたことや学んだこと',
          title: 'タイトル未定',
          explanation: '',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_sonobe.jpg"),
          isShow: false
        },
        { 
          id: 8, 
          desc: '齋藤柱導',
          range: 'なぜアフリカへの支援活動を辞めてオシャレをするのか',
          title: '支援を辞めて</br>オシャレする理由',
          explanation: '自分のことが嫌いだった私を変えてくれたのはアフリカでした。</br></br>しかし、現地人からのたった一言がきっかけで、ある悩みが生まれました。</br></br>それを解決し、愛と誇りに溢れた未来のために、私はオシャレをしています。',
          youtubeUrl: 'https://www.youtube.com/embed/mefEJadgUXg',
          imageUrl: require("@/assets/youth/y_saitou.jpg"),
          isShow: false
        },
        { 
          id: 9, 
          desc: '熊谷有未', // 船橋光治から変更
          range: '「共生・共栄・共義」ここに未来が有る',
          title: '「共生・共栄・共義」</br>ここに未来が有る',
          explanation: '世界情勢を見て、不安を感じたことはありませんか？</br></br>世界は過去に1度も平和を見たことがありません。</br>このまま進んでも未来は見えないかもしれません。</br></br>「共生・共栄・共義」が鍵になると思っています！',
          youtubeUrl: 'https://www.youtube.com/embed/w01sRY9hgdc',//動画未取得>元々のurlに問題あり
          imageUrl: require("@/assets/youth/y_kumatani.jpg"),
          isShow: false
        },
         { 
          id: 10, 
          desc: '本田裕明',
          range: '長崎市の人口減少ってやばくね？</br>【未来世代まで幸せになれる長崎を目指して】',
          title: '未来世代まで幸せになれる</br>長崎を目指して',
          explanation: '長崎って来たことありますか？</br> 長崎って山に囲まれ海に囲まれ、観光名所に囲まれている魅力溢れる都市。それが私の町です！ そんな私の町をもっと盛り上げていけるようなアイディアを発表します！',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_honda.jpg"),
          isShow: false
        },
        // { 
        //   id: 10, //連絡なし、追加可能性あり
        //   desc: '木村晃介',
        //   range: 'SDGsと科学技術',
        //   youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
        //   imageUrl: require("@/assets/youth/boy.jpg"),
        //   isShow: false
        // },
        // { 
        //   id: 11, //連絡なし、追加可能性あり
        //   desc: '本田裕明',
        //   range: '人口減少',
        //   youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
        //   imageUrl: require("@/assets/youth/y_13.jpg"),
        //   isShow: false
        // },
        // { 
        //   id: 12, //連絡なし、追加可能性あり
        //   desc: '福井咲良',
        //   range: 'ソーシャルワーク',
        //   youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
        //   imageUrl: require("@/assets/youth/girl.jpg"),
        //   isShow: false
        // }   
      ].sort(() => 0.5 - Math.random());
    },
    watch: {
      items (newItems) {
        console.log(newItems);
      }
    },
    methods: {
      openModal (item) {
        if (!(VueCookies.isKey('youth_vote_date'))) {
          VueCookies.set('youth_vote_date', new Date().toLocaleString({ timeZone: 'Asia/Tokyo' })); // クッキーが生成された日時を日本標準時間で保存する
          VueCookies.set('youth_if_voted', false);
        }
        this.selectedItem = item;
        console.log(item);
        
        this.isModal = true;
      },
      closeModal (index) {
        console.log(index)
        this.items[index].isShow = false
      },
      shuffleItems () {
        this.items = this.items.sort(() => 0.5 - Math.random());
      }
    },
    computed: {
      itemArray () {
        console.log("in")
        const groupedArray = []
        const itemsLength = this.items.length
        
        console.log(itemsLength)
        for (let i = 0; i < itemsLength; i += 3) {
          console.log(i)
          let result = this.items.slice(i, i + 3)
          
          groupedArray.push(result)
        } 
        return groupedArray  
      }
    }
  }
</script>

<style lang="scss" scoped>

.mini-rounded-circle {
  margin: auto;
  border-radius: 5% 5%; 
  width: 180px;
  height: 230px;
  border:1px solid #edecec; 
  object-fit: cover;
   
}
.rounded-circle {
  max-width: 900px;
  margin: auto;
  width: 100%;
  border-radius: 50%; 
  width: 230px;
  height: 230px;
  border:1px solid #edecec; 
  object-fit: cover;
}
.btn-dark-gray {
  max-width: 200px;
  margin: auto;
  position:relative;
  width: 50%;
  padding: 8px; 
  display: inline-block;
  text-decoration: none;
  border-radius: 4px;
  color: #ffffff;
  background: #2c2c3f;
  background: -webkit-linear-gradient(to right, #596166, #47474b);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #757c81, #3b3b46);
}
.btn-rounded {
  border-radius: 35px;
}
.mobile-vote {
  height: 300px;
  margin: 30px 0;
  &-box {
    display: inline-block;
  }
}
.responsive {
  width: 100%;
  height: 100%;
  min-height: 100px;
  max-height: 300px;
}
</style>

<style lang="scss">
.mobile-vote {
  .v-window__next,
  .v-window__prev {
    top: 100px;
  }
  .v-responsive__content {
    height: 300px;
  }
}
.img_wrap{
  border: 1px solid #ddd;
  width: 300px;
  height: 226px;
  margin: 20px auto 0;
  transition-duration: 0.5s;
}
.img_wrap img{
  width: 100%;
  cursor: pointer;
}
.img_wrap:hover{
  box-shadow: 10px 10px 10px rgba(0,0,0,0.5);
  transform: translateY(-10px);
  transition-duration: 0.5s;
}
</style>