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

<style lang="scss">
#container{
  width: 100%;
  /* background-image: linear-gradient(-90deg, #8f9292, #2e3036); */
  // background-image: linear-gradient(-90deg, #767575, #242324);
  background-image: linear-gradient(-90deg, #302b30, #18091f);
}
.home {
  max-width: 1200px;
  margin: auto;
  width: 95%;
  background-color: rgb(255, 255, 255);
  border-radius: 1px 1px 1px 1px;
  padding:40px 10px 10px 10px;
  &-container {
    max-width: 1000px;
    margin: auto;
    position:relative;
    text-align: center;
    font-size: 1rem;
  }
}
</style>