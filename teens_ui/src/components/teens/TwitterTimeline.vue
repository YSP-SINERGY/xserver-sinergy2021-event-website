<template>
 <div class = "twitter-timeline">
   <h1 class="head-border mt-15 mb-15">
        SNSにて情報発信中
    </h1>
  <v-container  class = "timeline_size pa-5">
        <v-row >
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
                  <Timeline :id="user_id" sourceType="profile" :options="{ 'height': '500px'}"/>
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
      user_ids: ['ergy_sin']
    };
  }
};
</script>

<style scoped>
.v-card{
  background-image: linear-gradient(-90deg, #ffffff, hsl(0, 0%, 100%));
}
.timeline_size{
  text-align: center;
  max-width: 600px;
}
</style>
