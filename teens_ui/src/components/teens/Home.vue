<template>
  <div class="home">
    <div class="home-container">

      <div class="midterm-report"><midterm-report></midterm-report></div>
      <div class="top"><top></top></div>
      <div class="voting-system"><voting-system></voting-system></div>
      <div class="vote"><vote></vote></div>
      <div class="organizer"><organizer></organizer></div>
      <div class="sponsor"><sponsor></sponsor></div>
      <div class="contributor"><contributor></contributor></div>
      <div class="twitter-timeline"><twitter-timeline /></div>
    </div>
  </div>
</template>

<script>
import Top from "./Top.vue"
import Vote from './Vote.vue'
import Organizer from './Organizer.vue'
import TwitterTimeline from './TwitterTimeline.vue'
import VotingSystem from './VotingSystem.vue'
import Sponsor from './Sponsor.vue'
import Contributor from './Contributor.vue'
import MidtermReport from './MidtermReport.vue'

export default {
  name: 'Home',
  components: {
    Top,
    Vote,
    Organizer,
    TwitterTimeline,
    VotingSystem,
    Sponsor,
    Contributor,
    MidtermReport
    
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

</style>
