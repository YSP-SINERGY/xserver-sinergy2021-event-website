<template>
<section class="teens">
      <div id="container">
        <navigation-menu />
        <div class= "realizeimage" />
        <img
          alt = "topimage"
          class = "mt-14" 
          src="@/assets/examples/top_teens.jpg" 
          width="100%"
        >
        <v-card-text
         class="white--text text-center"
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
import FooterImage from './teens/FooterImage.vue'
import CrowdFunding from './teens/CrowdFunding.vue'


export default {
  name: 'Teens',

  components: {
    NavigationMenu,
    Home,
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
</style>

