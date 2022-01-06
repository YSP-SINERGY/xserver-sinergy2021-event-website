<template>
  <v-dialog
    v-model="dialog"
    persistent
    max-width="695"
    max-height="650"
    color= "white"
  >
    <v-card>            
      <div class="text-center">  
        <slot name="body">
          <iframe 
            v-if="dialog"
            width="90%"
            height="350" 
            :src="item.youtubeUrl"
            title="YouTube video player"
            frameborder="0"
            class="mt-5"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          />
          <div class="px-1 ">
            <h4 class="py-3 name-box text-h5">{{ item.desc }}</h4>
            <!-- <p>{{ item.range }}</p> -->
            <h5 class="text-center px-5 mt-6 mb-6 text-h6" v-html="item.range"></h5>
            <p class="text-left px-5 pb-6 text-caption" v-html="item.explanation"></p>
          </div>
          <v-dialog
            v-model="confirmDialog"
            persistent
            max-width="290"
          >
            <template v-slot:activator="{ on, attrs }">
              <v-btn
                variant="secondary"
                color="blue-grey darken-4"
                class="white--text"
                v-bind="attrs"
                v-on="on"
              >投票
              </v-btn>
            </template>
            <v-alert
            border="left"
            colored-border
            color="blue-grey darken-1"
            type="error"
            elevation="2"    
            width="100%"
            >
              <v-card-title 
              class="text-subtitle-1 justify-center"
              >
                <!-- 投票が有効な期間で、クッキー上で未投票であれば -->
                <strong v-if="check_if_voting_period(vote_date) && !(if_voted)">投票を確定しますか？</strong>
                <font size="-1" v-else-if="check_if_voting_period(vote_date) && (if_voted)"><strong>本日は既に投票済みです。</strong></font>
                <font size="-1" v-else><strong>投票期間ではありません。</strong></font>
                </v-card-title>
                <v-card-actions>
                  <v-spacer></v-spacer>
                  <!-- <v-btn
                    color="warning"
                    text
                    @click="sendVote"
                  >
                    確定する
                  </v-btn> -->
                  <v-btn
                    color="blue-grey darken-1"
                    text
                    @click="$emit('update:dialog', false)"
                  >
                    <font size="-1"><strong>閉じる</strong></font>
                  </v-btn>
                </v-card-actions>
            </v-alert>
          </v-dialog>
        </slot>
      </div>

      <div class="text-right">
        <slot name="footer">
          <v-spacer />
          <v-btn 
            class="btn-rounded mx-3 mb-3" 
            @click="$emit('update:dialog', false)"
          >閉じる
          </v-btn>
        </slot>
      </div>
    </v-card>
  </v-dialog>
</template>

<script>
  import VueCookies from 'vue-cookies';
  export default {
    name: 'Modal',
    props: {
      item: { type: Object, default: () => ({}) },
      dialog: {type: Boolean, required: true }
    },
    data () {
      return {
        confirmDialog: false
      }
    },
    watch: {
      item (newItem) {
        this.item = newItem;
        console.log(newItem);
      }
    },
    methods: {
      async sendVote () {
        // make a PATCH request to youth vote endpoint
        const endpoint = "https://b73jc2zkfg.execute-api.ap-northeast-1.amazonaws.com/dev/api/v1/teens_votes/";
        try {
          await axios.patch({
            url: endpoint,
            data: { id: this.val.id }
          });
          alert("投票完了しました。")
          // 投票成功したら
          VueCookies.set('if_voted', true);
        } catch (error) {
          this.error = error.response;
          console.log(this.error);
        }
      },
      check_if_voting_period (vote_date) {
        if ((new Date("2022-01-07T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }) >= vote_date) 
            && (vote_date < new Date("2022-01-10T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }))) { // 日本時間で投票期間であるかのチェック
          return true;
        }
      },
    }
  }
</script>


<style scoped>
.text-center{
  background-color: rgb(246, 248, 248);
}
.text-right{
  background-color: rgb(246, 248, 248);
}
.btn-rounded {
  border-radius: 20px;
}
.name-box {
  border-bottom: solid 1px ;
}

</style>