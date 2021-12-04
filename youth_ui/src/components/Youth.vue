<template>
<section class="youth">
      <div id="container">
        <navigation-menu />
         <img
          class = "mt-14" 
          src="@/assets/examples/top_youth.jpg" 
          width="100%"
        > 
        <v-card-text
         class="white--text text-center"
        >
        <p>S!NERGY 2021 特設サイト</p>
        <v-divider></v-divider>
        </v-card-text>      
        <home class="mb-15" />
        <footer-image />
        <crowd-funding />
     </div>
     </section>
</template>

<script>
import NavigationMenu from './youth/NavigationMenu.vue'
import Home from './youth/Home.vue'
import FooterImage from './youth/FooterImage.vue'
import CrowdFunding from './youth/CrowdFunding.vue'


export default {
  name: 'Youth',

  components: {
    NavigationMenu,
    Home,
    FooterImage,
    CrowdFunding
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
  background-image: linear-gradient(-90deg, #767575, #242324);
}
</style>