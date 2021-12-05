<template>
  <v-container>
    <h1 class="head-border mt-15 mb-10">
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
          range: '食品ロス',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_1.jpg"),
          isShow: false
        },
        { 
          id: 2, 
          desc: '山川莉実花',
          range: '誰でも使えるようなスマホ',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_2.jpg"),
          isShow: false
        },
        { 
          id: 3, 
          desc: '小貫朝心',
          range: 'フェアトレード',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_3.jpg"),
          isShow: false
        },
        { 
          id: 4,  
          desc: '水沼ゆきの',
          range: '自分の夢',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_4.jpg"),
          isShow: false
        },
        { 
          id: 5, 
          desc: '田井理蓮',
          range: '出前授業',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_5.jpg"),
          isShow: false
        },
        { 
          id: 6, 
          desc: '佐藤彩乃',
          range: '単身家庭',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_6.jpg"),
          isShow: false
        },
        { 
          id: 7, 
          desc: '川見菜緒',
          range: 'どうすれば児童虐待から子供たちを守れるのか',
          youtubeUrl: 'https://www.youtube.com/embed/lUbQjAXRqKY',
          imageUrl: require("@/assets/teens/t_7.jpg"),
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