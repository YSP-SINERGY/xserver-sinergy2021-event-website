<template>
 <v-app>
  <div id="app">
    <navigation-menu />
    <div class="youth"><youth></youth></div>
    <div class="crowd-funding"><crowd-funding></crowd-funding></div>
  </div>
   </v-app>
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
</style>
