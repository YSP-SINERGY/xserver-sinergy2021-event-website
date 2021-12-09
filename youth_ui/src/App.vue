<template>
<section class="youth fade-in-bottom">
 <v-app>
  <div id="app">
    <div class="avigation-menu"><avigation-menu></avigation-menu></div>
    <navigation-menu />
    <div class="youth"><youth></youth></div>
    <div class="crowd-funding"><crowd-funding></crowd-funding></div>
  </div>
   </v-app>
   </section>
</template>

<script>
import Youth from './components/Youth.vue'
import NavigationMenu from './components/youth/NavigationMenu.vue'
import CrowdFunding from './components/youth/CrowdFunding.vue'
export default {
  name: 'App',
  components: {
    Youth,
    CrowdFunding,
    NavigationMenu
  },
  data: () => ({
  }),
};
</script>

<style scoped>
#container{
  width: 100%;
}
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}

/*下からフェードイン*/
.fade-in-bottom {
   opacity: 0;
   animation-delay: .5s;
   animation-name: fadein-bottom;
   animation-duration: 2s;
   animation-timing-function: ease-out;
   animation-fill-mode: forwards;
}
@keyframes fadein-bottom {
   0% {
      opacity: 0;
      transform: translateY(20px);
   }
   100% {
      opacity: 1;
      transform: translateY(0);
   }
}
</style>
