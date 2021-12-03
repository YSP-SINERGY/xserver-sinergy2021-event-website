<template>
  <div>
    <h1 class="head-border my-15">
      <a id="index2">
        <strong>ENTRY WORKS</strong>
      </a>
    </h1>
    <div class="vote hidden-sm-and-down">
      <v-row class="presenter-container" width="700" height="500" alt="*">
        <v-col
          v-for="item in items"
          :key="item.id"
          cols="12"
          lg="4"
          md="6"
          sm="6"
        >
          <div>
            <h2></h2>
            <img
              :src="item.imageUrl"
              class="rounded-circle"
              width="250"
              height="250"
              alt="*"
              style="margin: 60px 20px 20px 20px;"
            >
          </div>
          <b-button
            @click="openModal(item)"
            :src="item.img_src"
            class="col btn btn-dark-gray btn-rounded"
          >
            {{ item.desc }}
          </b-button>
          
        </v-col>
      </v-row>
      <modal
        :dialog.sync="isModal"
        :item="selectedItem"
      />
    </div>

    <div class="hidden-md-and-up mobile-vote">
      <v-carousel 
        hide-delimiter-background
        hide-delimiters
        show-arrows-on-hover
      >
        <v-carousel-item
          v-for="(item, i) in items"
          :key="i"
          reverse-transition="fade-transition"
          transition="fade-transition"
        >
          <div class="mobile-vote-box">
            <img
              :src="item.imageUrl"
              class="mini-rounded-circle my-3"
            >
            <b-button
              @click="openModal(item)"
              :src="item.img_src"
              class="col btn btn-dark-gray btn-rounded"
            >
              {{ item.desc }}
            </b-button>
          </div>
          
          <template v-slot:placeholder>
            <v-row
              class="fill-height mb-6"
              align="center"
              justify="center" 
            >
              <v-progress-circular
                indeterminate
                color="blue-grey"
              />
            </v-row>
          </template>
        </v-carousel-item>
      </v-carousel>
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
        // this.items = this.items.sort(() => 0.5 - Math.random());
      }
    },
    methods: {
      openModal (item) {
        this.selectedItem = item;
        console.log(item);
        
        this.isModal = true;

        // this.items[index].isShow = true
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
  border-radius: 10% 0; 
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
  // background: #ff8400;
  background: linear-gradient(to right, #758383, #404043);
  // background: linear-gradient(to right, #757c81, #3b3b46);
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

</style>