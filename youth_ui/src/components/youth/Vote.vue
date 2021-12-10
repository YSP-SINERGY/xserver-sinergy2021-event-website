<template>
  <v-container>
    <h1 class="head-border my-15">
      <a id="index2">
        <strong>PRESENTER</strong>
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
          range: 'お手伝いします！私たちができる地域デザイン',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_1.jpg"),
          isShow: false
        },
        { 
          id: 2, 
          desc: '遠藤友香',
          range: 'SDGs14海の豊かさを守るという国連や、海洋プラスチック問題',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_2.jpg"),
          isShow: false
        },
        { 
          id: 3, 
          desc: '舟橋彰馬',
          range: 'SDGs',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_3.jpg"),
          isShow: false
        },
        { 
          id: 4,  
          desc: '東郷泰暉',
          range: 'ピースビワイチプロジェクト',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_4.jpg"),
          isShow: false
        },
        { 
          id: 5, 
          desc: '小野村華楠',
          range: 'アフリカの子供たちのための特化型オンラインスクール',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_5.jpg"),
          isShow: false
        },
        { 
          id: 6, 
          desc: '五十嵐大修',
          range: 'サウナで世界平和',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_6.jpg"),
          isShow: false
        },
        { 
          id: 7, 
          desc: '園部達也',
          range: 'YSP活動を通して感じたことや学んだこと',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_7.jpg"),
          isShow: false
        },
        { 
          id: 8, 
          desc: '齋藤柱導',
          range: 'アフリカの布を使ったアパレルでの、新しい国際貢献',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_8.jpg"),
          isShow: false
        },
        { 
          id: 9, 
          desc: '佐々木啓徳',
          range: '私の働き方',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_9.jpg"),
          isShow: false
        },
        { 
          id: 10, 
          desc: '源田礼奈',
          range: '「ホームステイを通して世界平和を実現する」をビジョンとして',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_10.jpg"),
          isShow: false
        },
        { 
          id: 11, 
          desc: '船橋光治',
          range: '地球村フェス　2回から3回目に向けて',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_11.jpg"),
          isShow: false
        },
        { 
          id: 12, 
          desc: '木村晃介',
          range: 'SDGsと科学技術',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/boy.jpg"),
          isShow: false
        },
        { 
          id: 13, 
          desc: '本田裕明',
          range: '人口減少',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/y_13.jpg"),
          isShow: false
        },
        { 
          id: 14, 
          desc: '福井咲良',
          range: 'ソーシャルワーク',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/youth/girl.jpg"),
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