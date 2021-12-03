<template>
<section class="youth">
      <div id="container">
        <navigation-menu />
        <top-image class="mb-0"/> 
        <v-card-text
         class="white--text pt-0 text-center"
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
import TopImage from './youth/TopImage.vue'
import FooterImage from './youth/FooterImage.vue'
import CrowdFunding from './youth/CrowdFunding.vue'


export default {
  name: 'Youth',

  components: {
    NavigationMenu,
    Home,
    TopImage,
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
@import url('https://fonts.googleapis.com/css?family=Noto+Sans+JP');
.v-application{
 font-family: 'Noto Sans JP', sans-serif;
}
</style>