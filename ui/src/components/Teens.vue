<template>
<section class="teens">
      <div id="container">
        <navigation-menu />
        <top-image class="mb-0"/>
        <v-card-text
         class="white--text pt-0 text-center"
        >
        <p>S!NERGY TEENS 2021 特設サイト</p>
        <v-divider></v-divider>
        </v-card-text> 
        <home class="mb-15" />
        <footer-image />
        <crowd-funding />
     </div>
     </section>
</template>

<script>
import NavigationMenu from './teens/NavigationMenu';
import Home from './teens/Home.vue'
import TopImage from './teens/TopImage.vue'
import FooterImage from './teens/FooterImage.vue'
import CrowdFunding from './teens/CrowdFunding.vue'


export default {
  name: 'Teens',

  components: {
    NavigationMenu,
    Home,
    TopImage,
    FooterImage,
    CrowdFunding
  },

  data: () => ({
    
  }),
};
</script>

<style scoped>
#container{
  width: 100%;
  background-image: linear-gradient(-90deg, #62c9bf, #68acce);
}
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}
</style>

