<template>
  <v-dialog
    v-model="dialog"
    persistent
    max-width="695"
    max-height="650"
  >
    <v-card>            
      <div class="text-center">  
        <slot name="body">
          <iframe 
            width="90%"
            height="350" 
            :src="item.youtubeUrl"
            title="YouTube video player"
            frameborder="0"
            class="mt-6"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          />
          <div class="text-center px-6">
            <h4 class="py-3 name-box">{{ item.desc }}</h4>
            <p>{{ item.range }}</p>
          </div>
          <v-dialog
            v-model="confirmDialog"
            persistent
            max-width="290"
          >
            <template v-slot:activator="{ on, attrs }">
              <v-btn
                variant="secondary"
                color="blue-grey lighten-1"
                class="white--text"
                v-bind="attrs"
                v-on="on"
              >投票
              </v-btn>
            </template>
            <v-alert
            border="left"
            colored-border
            color="light-green accent-4"
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
                    color="green darken-2"
                    text
                    @click="$emit('update:dialog', false)"
                  >
                    <strong>閉じる</strong>
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
.name-box {
  border-bottom: solid 1px ;
}
</style>