<template>
<section class="teens">
      <div id="container">
        <navigation-menu />
        <div class= "realizeimage" />
        <img
          alt = "プレゼン シナジー2021 teens"
          class = "mt-14" 
          src="@/assets/examples/top_teens_mini.jpg" 
          width="100%"
        >
        <v-card-text
         class="white--text text-center"
        >
        <strong>S!NERGY Teens 2021 特設サイト</strong>
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

<style lang="scss">
#container{
  width: 100%;
  background-image: linear-gradient(-90deg, #62c9bf, #68acce);
}

#container{
 width: 100%;
  background-image: linear-gradient(-90deg, #62c9bf, #68acce);
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
/*========= body背景色の変化CSS ===============*/

@keyframes bggradient{
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
</style>

