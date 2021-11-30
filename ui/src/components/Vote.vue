<template>
  <div class="page-inner" >
    <h1><a id="index２">投票</a></h1>
    <div v-for="items in itemArray" :key="items.id">
      <div class="presenter-container" width="700" height="500" alt="*">
        <div v-for="item in items" :key="item.id">
          <div><img :src="item.imageUrl" class="rounded-circle" width="250" height="250" alt="*" style="margin: 60px 20px 20px 20px;"></div>
<!-- <b-button @click="openModal(item.id - 1)" :src="item.img_src" variant="outline-secondary">プレゼンを見る</b-button> -->
          <!-- <b-button @click="openModal(item.id - 1)" :src="item.img_src" class="col btn btn-dark-blue btn-rounded">プレゼンを見る</b-button> -->
          <b-button @click="openModal(item.id - 1)" :src="item.img_src" class="col btn btn-dark-gray btn-rounded">プレゼンを見る</b-button>
          <modal :val="item" v-show="item.isShow" @close="closeModal(item.id - 1)" />
        </div>
      </div>
    </div>
  </div>
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
        items: [
          { 
            id: 1,
            desc: '木村晃介',
            range: 'SDGsと科学技術',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
            // lang: 'HTML, CSS(Sass)',
            // img_src: require("@/assets/img/donald.png"),
          },
          { 
            id: 2, 
            desc: '遠藤友香',
            range: 'SDGs14海の豊かさを守るという国連や、海洋プラスチック問題',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
            // lang: 'HTML, CSS(Sass)',
            // img_src: require("@/assets/img/donald.png"),
          },
          { 
            id: 3, 
            desc: '舟橋彰馬',
            range: 'SDGs',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 4, 
            desc: '柴田誠嗣',
            range: 'SDGsに基づいた地域の清掃活動',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
           {
            id: 5, 
            desc: '東郷泰暉',
            range: 'ピースビワイチプロジェクト',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
           {
            id: 6, 
            desc: '篠原邦鳩',
            range: '家庭や人との繋がり',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 7, 
            desc: '本田裕明',
            range: '人口減少',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 8, 
            desc: '小野村華楠',
            range: 'アフリカの子供たちのための特化型オンラインスクール',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 9, 
            desc: '佐藤雅邦',
            range: '自由と責任',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 10, 
            desc: '大友希野',
            range: 'お手伝いします！私たちができる地域デザイン',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 11, 
            desc: '五十嵐大修',
            range: 'サウナで世界平和',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 12, 
            desc: '園部達也',
            range: 'YSP活動を通して感じたことや学んだこと',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 13, 
            desc: '齋藤柱導',
            range: 'アフリカの布を使ったアパレルでの、新しい国際貢献',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 14, 
            desc: '角田愛里香',
            range: '世界一のオンライン日本語教室',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 15, 
            desc: '上田晃世',
            range: '地球村フェス',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 16, 
            desc: '中村安則',
            range: 'ホームステイを通して世界平和を実現する',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 17, 
            desc: '福井咲良',
            range: 'ソーシャルワーク　自分の経験を通してヤングケアラーを救う',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          },
          { 
            id: 18, 
            desc: '佐々木啓徳',
            range: '私の働き方',
            youtubeUrl: '<iframe width="560" height="315" src="https://www.youtube.com/embed/lUbQjAXRqKY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
            imageUrl: require("@/assets/faces/user.png"),
            isShow: false
          }
      
          //
          //省略(以下表示させたい分だけデータを定義していきます。)
          //
        ]
      }
    },
    methods: {
      openModal (index) {
        this.items[index].isShow = true
      },
      closeModal (index) {
        this.items[index].isShow = false
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

<style scoped>
.card { 
  background-color: rgba(0, 0, 0, 0);
  border: none;
}

.presenter-container {
  display: flex;
  justify-content: space-around;
  padding: 0 20%;
}

h1 {
  margin: 40px 0 0;
}

a {
   color: #0e1311;
}
.rounded-circle {
  border-radius: 50%; 
  width: 120px;
  height: 120px;
}
.btn-green-moon {
    background: #56ab2f;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #a8e063, #56ab2f);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #a8e063, #56ab2f); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-cool-blues {
    background: #2193b0;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #6dd5ed, #2193b0);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #6dd5ed, #2193b0); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-dark-blue {
    background: #7474BF;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-ultra-voilet {
    background: #654ea3;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #eaafc8, #654ea3);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #eaafc8, #654ea3); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-dark-moon {
    background: #141E30;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #111314, #141E30);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #243B55, #141E30); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-dark-gray {
    background: #141E30;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #97a1ad, #141E30);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #3f3e3e, #444549); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}
.btn-rounded {
    border-radius: 35px;
}

</style>
