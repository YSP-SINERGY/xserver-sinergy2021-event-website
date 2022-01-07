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
            <h4 class="py-3 name-box text-h5">{{ item.presenter }}</h4>
            <h5 class="text-center px-5 mt-6 mb-6 text-h6" v-html="item.caption"></h5>
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
                <font size="-1" v-if="check_if_voting_period() && !check_if_voted()"><strong>投票を確定しますか？</strong></font>
                <font size="-1" v-else-if="check_if_voting_period() && check_if_voted()"><strong>本日は既に投票済みです。</strong></font>
                <font size="-1" v-else><strong>投票期間ではありません。</strong></font>
                </v-card-title>
                <v-card-actions>
                  <v-spacer></v-spacer>
                  <v-btn v-if="check_if_voting_period() && !check_if_voted()"
                    color="warning"
                    text
                    @click="sendVote"
                  >
                    確定する
                  </v-btn>
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
  import axios from 'axios';
  export default {
    name: 'Modal',
    props: {
      item: { type: Object, default: () => ({}) },
      dialog: {type: Boolean, required: true }
    },
    data () {
      return {
        confirmDialog: false,
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
        // make a PATCH request to teens vote endpoint
        const endpoint = `https://b73jc2zkfg.execute-api.ap-northeast-1.amazonaws.com/dev/api/v1/teens_votes/`; // 本番ではproductionに切り替える
        try {
          let response = await axios.patch(
            endpoint,
            {
              id: this.item.id,
              ip: VueCookies.get('teens_ip'),
              user_agent: VueCookies.get('teens_user_agent')
            },
          );
          console.log('response', response);
          alert("投票完了しました。")
          // 投票成功したら
          VueCookies.set('teens_if_voted', true);
          // this.check_if_valid_user_agent_with_ip();
        } catch (error) {
          this.error = error.response;
          console.log(this.error);
          alert("投票ができませんでした。");
        }
        this.$emit('update:dialog', false);
      },
      check_if_voting_period () {
        let vote_date = VueCookies.get('teens_vote_date');
        // if ((new Date("2022-01-07T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }) >= vote_date) 
        //     && (vote_date < new Date("2022-01-10T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }))) { // 日本時間で投票期間であるかのチェック
        //   return true;
        // }
        if ((new Date("2022-01-05T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }) <= vote_date) 
          && (vote_date < new Date("2022-01-07T15:00:00Z").toLocaleString({ timeZone: 'Asia/Tokyo' }))) { // 日本時間で投票期間であるかのチェック
          return true;
        }
      },
      check_if_voted() {
        let if_voted = VueCookies.get('teens_if_voted')
        console.log(if_voted)
        if (if_voted === 'true') {
          return true;
        } else if (if_voted === 'false') {
          return false;
        }
      },
      // async check_if_valid_user_agent_with_ip() {
      //   // ここでDBからユーザーのIPやユーザーエージェントの情報を取得し、有効なユーザーか確認する。
      //   const aws_endpoint = `https://b73jc2zkfg.execute-api.ap-northeast-1.amazonaws.com/dev/api/v1/teens_votes/`;
      //   // const ip_endpoint = 'https://api.ipify.org?format=json';
      //   let flag = false;
      //   try {
      //     let aws_response = await axios.get( aws_endpoint );
      //     // let ip_response = await axios.get( ip_endpoint );
      //     // let current_ip = ip_response.data.ip
      //     let current_user_agent = navigator.userAgent;
      //     let user_terminals_arr = aws_response.data.user_terminals
      //     for (let i=0; i<user_terminals_arr.length; i++) {
      //       // if (current_ip === user_terminals_arr[i].ip_address) {
      //       //   flag = true;
      //       //   break;
      //       // }
      //       if (current_user_agent === user_terminals_arr[i].user_agent) {
      //         flag = true;
      //         break;
      //       }
      //     }
      //     if (flag) {
      //       // VueCookies.set('teens_if_valid_ip', false);
      //       VueCookies.set('teens_if_valid_user_agent', false);
      //     } else {
      //       // VueCookies.set('teens_if_valid_ip', true);
      //       VueCookies.set('teens_if_valid_user_agent', true);
      //     }
      //   } catch (error) {
      //     console.log(error)
      //   }
      // },
      // check_if_valid_user_agent() {
      //   let if_valid_user = VueCookies.get('teens_if_valid_user_agent')
      //   if (if_valid_user === 'true') {
      //     return true
      //   } else if (if_valid_user === 'false') {
      //     return false
      //   }
      // },
    },
    // created() {
    //   this.check_if_valid_user_agent_with_ip();
    // },
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