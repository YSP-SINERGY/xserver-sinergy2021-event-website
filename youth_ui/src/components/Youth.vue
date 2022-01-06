<template>
 <section class="youth fade-in-bottom">
      <div id="container">
         <img
          alt = "プレゼン シナジー2021 youth"
          class = "mt-14" 
          src="@/assets/examples/top_youth_mini.jpg" 
          width="100%"
        > 
        <v-card-text
         class="white--text text-center"
        >
          <strong >S!NERGY（シナジー)</strong> 
          <v-divider></v-divider>
        </v-card-text>      
        <home class="mb-15"/>
        <footer-image />        
     </div>
  </section>
</template>

<script>
import Home from './youth/Home.vue'
import FooterImage from './youth/FooterImage.vue'

export default {
  name: 'Youth',

  components: {
    Home,
    FooterImage
  },

  data: () => ({
 
  }),
};
</script>

<style lang="scss">
#container{
  
  width: 100%;
  background-image: linear-gradient(- 100deg,#16170c,#7a7a98,#060629,#010102);
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
/*下からフェードイン*/
.fade-in-bottom {
   opacity: 0;
   animation-delay: .1s;
   animation-name: fadein-bottom;
   animation-duration: 0.5s;
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