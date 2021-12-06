<template>
  <div class="home">
    <div class="home-container">
      <div class="top "><top></top></div>
      <div class="vote"><vote></vote></div>
      <div class="organizer"><organizer></organizer></div>
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