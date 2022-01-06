<template>
  <v-container>
    <h1 class="head-border mt-15 mb-10">
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
            color="blue-grey lighten-1"
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
          desc: '菅俣登子',
          range: '「食品ロス」は茶碗一杯が原因！？',
          title: '「食品ロス」は</br>茶碗一杯が原因！？',
          explanation: '「食品ロス」はお茶碗一杯が原因となって起こる問題です。</br></br>この問題に対する具体的な原因と対策について発表します！最後には登子(私)考案の画期的な対策方法も提案しています！ぜひご覧ください！',
          youtubeUrl: 'https://www.youtube.com/embed/U36ZiEvbV40',
          imageUrl: require("@/assets/teens/t_suganuma.jpg"),
          isShow: false
        },
        { 
          id: 2, 
          desc: '山川莉実花',
          range: '”誰でも”使える○○の使い方！',
          title: '”誰でも”使える</br>○○の使い方！',
          explanation: '私がプレゼンさせていただくのは「誰でも使える〇〇の使い方」です！</br></br>現在、情報化社会の中で生きていますが今回は皆さんにスマホの使いすぎについての解決策というのをお伝えしたいと思います！',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_yamakawa.jpg"),
          isShow: false
        },
        { 
          id: 3, 
          desc: '小貫朝心',
          range: 'フェアトレードをもっと身近に',
          title: 'フェアトレードを</br>もっと身近に',
          explanation: '身の回りに溢れている沢山の商品。皆さんは商品を生産している人々のことを考えたことはありますか？</br></br>また、世界で問題になっている貧困や児童労働の問題を知っていますか？</br></br>フェアトレードを通して一緒に解決しましょう。',
          youtubeUrl: 'https://www.youtube.com/embed/2KFqu7dujl8',
          imageUrl: require("@/assets/teens/t_onuki.jpg"),
          isShow: false
        },
        { 
          id: 4,  
          desc: '水沼ゆきの',
          range: '自分を変えたい！を原動力に',
          title: '自分を変えたい！</br>を原動力に</br>',
          explanation: '私は今回、｢自分を変えたい！を原動力に｣というテーマでプレゼンを発表させていただきます。</br></br>自分を変えたいと思っている人の後押しをしたいと思い、このプレゼンに挑戦してみました。',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_mizunuma.jpg"),
          isShow: false
        },
        { 
          id: 5, 
          desc: '田井理蓮',
          range: '誰一人取り残さなさいグローバル社会へ',
          title: '誰一人取り残さなさい</br>グローバル社会へ',
          explanation: '今や世界はグローバル社会の時代。そんな時代を生きる私たちのあるべき姿とはどのようなものでしょうか。</br></br>誰一人取り残されないグローバル社会を築くために、今回、あるプロジェクトを提案します！',
          youtubeUrl: 'https://www.youtube.com/embed/U2cSAVWNr8Q',
          imageUrl: require("@/assets/teens/t_tai.jpg"),
          isShow: false
        },
        { 
          id: 6, 
          desc: '佐藤彩乃',
          range: '様々な問題で苦しむ単身家庭の架け橋に！！',
          title: '様々な問題で苦しむ</br>単身家庭の架け橋に！',
          explanation: '今回私は皆さんに単身家庭の抱える問題について一つでも多く知っていただきたいと思います。</br></br>そして私が提案するどの年代層の方でも簡単に寄付支援ができる仕組みを通して、少しでも多くの貧困で苦しんでいる単身家庭の方々の救いの手になり、私たちが相対的貧困率を減らす架け橋になっていきましょう。',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_satou.jpg"),
          isShow: false
        },
        { 
          id: 7, 
          desc: '川見菜緒',
          range: '会話が100倍楽しくなる魔法　聴く力',
          title: '会話が100倍楽しくなる</br>魔法 聴く力',
          explanation: '友人との会話をきっかけにコミュニケーションの取り方を意識するようになり、大きな気付きがありました。</br></br>心を開いている人とこそ、互いのやりとりが成立しているか意識するきっかけとなればと思います。',
          youtubeUrl: 'https://www.youtube.com/embed/HgZEF5isWAU',
          imageUrl: require("@/assets/teens/t_kawami.jpg"),
          isShow: false
        } 
      ].sort(() => 0.5 - Math.random());
    },
    watch: {
      items (newItems) {
        console.log(newItems);
      }
    },
    methods: {
      openModal (item) {
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