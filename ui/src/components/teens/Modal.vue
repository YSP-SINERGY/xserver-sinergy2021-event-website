<template>
  <v-dialog
    v-model="dialog"
    persistent
    max-width="800"
  >
    <v-card class="">            
      <div class="text-center">
        <h1 class="pa-5">プレゼンター紹介</h1>
        <slot name="body">
          <iframe 
            width="80%"
            height="315" 
            :src="item.youtubeUrl"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          />
          <div class="text-center pa-5">
            <p>名前：{{ item.desc }}</p>
            <p>内容：{{ item.range }}</p>
          </div>

          <v-dialog
            v-model="confirmDialog"
            persistent
            max-width="290"
          >
            <template v-slot:activator="{ on, attrs }">
              <b-button
                variant="secondary"
                class="col btn-vote btn-rounded mb-6"
                v-bind="attrs"
                v-on="on"
              >投票
              </b-button>
            </template>
            <v-alert
            border="left"
            colored-border
            color="amber darken-3"
            type="error"
            elevation="2"    
            width="100%"
            >
              <v-card-title 
              class="text-subtitle-1 justify-center"
              >
                <!-- <strong>投票を確定しますか？</strong> -->
                <strong>投票期間ではありません。</strong>
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
                    color="warning"
                    text
                    @click="$emit('update:dialog', false)"
                  >
                    閉じる
                  </v-btn>
                </v-card-actions>
            </v-alert>
          </v-dialog>
        </slot>
      </div>

      <div class="modal-footer">
        <slot name="footer">
          <v-btn 
            class="btn-rounded" 
            @click="$emit('update:dialog', false)"
          >閉じる
          </v-btn>
        </slot>
      </div>
    </v-card>
  </v-dialog>
</template>

<script>
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
      sendVote () {
        console.log('to be continue...')
      }
    }
  }
</script>


<style scoped>
.btn-vote {
  width: 20%;
  background: #2c2c3f;
  background: -webkit-linear-gradient(to right, #596166, #47474b);  
  background: linear-gradient(to right, #757c81, #3b3b46);
  color: #fff;
  border: 1px solid #eee;
}
.btn-rounded {
  border-radius: 20px;
}
.v-card{
  background-image: linear-gradient(-90deg, #e5ebeb, #f8f9ff);
}
</style>