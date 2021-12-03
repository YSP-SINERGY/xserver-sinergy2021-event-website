<template>
 <div class = "twitter-timeline">
   <h1 class="head-border my-15">
        <strong>Twitterにて情報発信中</strong>
    </h1>
  <v-container>
        <v-row>
          <v-col
            v-for="user_id in user_ids"
            :key='user_id'
          >
            <v-card class="mx-auto">
              <v-card-title>
                <v-icon large left color="#26c6da">mdi-twitter</v-icon>
              </v-card-title>
              <v-flex xs12>
                <div>
                  <Timeline :id="user_id" sourceType="profile" :options="{ 'height': '700px'}"/>
                </div>
              </v-flex>
            </v-card>
          </v-col>
        </v-row>
    </v-container>
 </div>
</template>

<script>
import { Timeline } from "vue-tweet-embed";
export default {
  name: 'TwitterTimeline',
  components: {
    Timeline
  },
  data () {
    return {
      // ここにタイムラインを表示させたいアカウント名を追加する
      user_ids: ['ergy_sin']
    };
  }
};
</script>

<style scoped>
.v-card{
  background-image: linear-gradient(-90deg, #ffffff, hsl(0, 0%, 100%));
}
</style>
