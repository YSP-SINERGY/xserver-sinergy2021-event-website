<template>
 <v-app>
  <div id="app">
    <div class="teens"><teens></teens>
    </div>
  </div>
   </v-app>
</template>

<script>
import Teens from './components/Teens.vue'
export default {
  name: 'App',
  components: {
      Teens
    },
  data: () => ({
    //
  }),
};
</script>

<style scoped>
#container{
  width: 100%;
  /* background-image: linear-gradient(-90deg, #8f9292, #2e3036); */
}
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}
</style>
