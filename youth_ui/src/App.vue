<template>
 <v-app>

  <div id="app">
    <div class="youth">
      <router-view />
    </div>
  </div>
   </v-app>
</template>

<script>

export default {
  name: 'App',
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
