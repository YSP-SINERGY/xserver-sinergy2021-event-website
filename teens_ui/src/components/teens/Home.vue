<template>
  <div class="home">
    <div class="home-container">
      <div class="top"><top></top></div>
      <div class="vote"><vote></vote></div>
      <div class="organizer mt-15"><organizer></organizer></div>
      <div class="twitter-timeline"><twitter-timeline /></div>
    </div>
  </div>
</template>

<script>
import Top from "./Top.vue"
import Vote from './Vote.vue'
import Organizer from './Organizer.vue'
import TwitterTimeline from './TwitterTimeline.vue'

export default {
  name: 'Home',
  components: {
    Top,
    Vote,
    Organizer,
    TwitterTimeline
    
  },
  props: {
    msg: { type: String }
  },
  methods: {
    test () {
      console.log("test")
    }
  }
}
</script>

<style lang="scss"> 
.home {
  max-width: 1200px;
  margin: auto;
  width: 90%;
  background-color: rgb(255, 255, 255);
  border-radius: 30px 30px 30px 30px;
  padding:40px 10px 10px 10px;
  &-container {
    margin-bottom: 10px;
    max-width: 900px;
    margin: auto;
    position:relative;
    width: 90%;
    text-align: center;
    background-color: rgb(255, 255, 255);
  }
}
</style>
