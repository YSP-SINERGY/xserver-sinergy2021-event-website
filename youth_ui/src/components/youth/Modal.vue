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
            v-if="dialog"
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
                <!-- <strong>投票を確定しますか？</strong> -->
                <font size="-1"><strong>投票期間ではありません。</strong></font>
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

.btn-rounded {
  border-radius: 20px;
}
.name-box {
  border-bottom: solid 1px ;
}
</style>