
<template>
 <div class = "navigation-menu">
   <v-navigation-drawer 
    app 
    v-model= "drawer" 
    class="hidden-sm-and-up" 
    clipped 
    >   
     <img src="@/assets/examples/logo_synergy1.png" width="80%">
     <br>
     <img src="@/assets/examples/synergy.png" width="15%">
      <hr class="hr1">
        <v-btn text v-scroll-to = "index1" class = "white--text mt-2">S!NERGYについて</v-btn>
        <v-spacer></v-spacer>
        <v-btn text v-scroll-to = "index2" class = "white--text mt-2">投票</v-btn>
        <v-spacer></v-spacer>
        <v-btn text v-scroll-to = "index3" class = "white--text mt-2">Organizer</v-btn>
        <v-spacer></v-spacer>
        <v-btn 
          text
          :href="'https://camp-fire.jp/projects/view/522896'" 
          target="_blank"
          class = "white--text mt-2"
        >
         支援する
        </v-btn>
        <v-spacer></v-spacer>
        <v-btn 
          text 
          class="white--text mt-2"
          to ="/teens"
        >
          Teensへ移動
        </v-btn>
  </v-navigation-drawer> 

     <v-app-bar 
       color="black"
       dark
       app
       clipped-left
       class="navigationmenu"
    >
      <div class="hidden-sm-and-up">
        <v-app-bar-nav-icon
          @click= "drawer=!drawer"
        />
      </div>
        <v-toolbar-title>
          <strong>S!NERGY</strong>
        </v-toolbar-title>
         <v-spacer></v-spacer>
         <v-btn text v-scroll-to = "index1" class="hidden-xs-only">SINERGYについて</v-btn>
         <v-btn text v-scroll-to = "index2" class="hidden-xs-only">投票</v-btn>
         <v-btn text v-scroll-to = "index3" class="hidden-xs-only">Organizer</v-btn>
         <v-btn 
            text 
            class="hidden-xs-only"
            :href="'https://camp-fire.jp/projects/view/522896'" 
            target="_blank"
            >
            支援する
        </v-btn>
        <v-btn 
          text 
          class="hidden-xs-only"
          to ="/teens"
        >
          Teens
        </v-btn>
        <v-btn 
          icon
          href="https://twitter.com/ergy_sin">
        <v-icon >mdi-twitter</v-icon>
        </v-btn>
        <v-btn icon
          href="https://www.facebook.com/sinergy2016/">
        <v-icon>mdi-facebook</v-icon>
        </v-btn>
        <v-btn icon
          href="https://www.instagram.com/sinergy_2021/?utm_medium=copy_link">
        <v-icon>mdi-instagram</v-icon>
        </v-btn>
   </v-app-bar>
  </div>
</template>

<script>

export default {
  data(){
    return{
      drawer: false,
      index1: "#index1",
      index2: "#index2",
      index3: "#index3",
      name: 'navigationmenu',
    }
  }
}
</script>

<style scoped>

.navigationmenu {
  /* background-image: linear-gradient(-90deg, #666e6e, #202227); */
  background-image: linear-gradient(-90deg, #767575, #242324);
}
.v-footer--fixed {
  z-index: 1;
}

#head #head-holder #main-nav #globalnav li.gnli a.primarynav span:last-child {
  display: block;
  font-size: 1rem;
  padding-top: 0.1
rem
;
  text-align: center;
  color: rgba(255, 255, 255, 0.7);
    
}
a {
  text-decoration: none;
  color: inherit;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}
.v-navigation-drawer{
  text-align: center;
  /* background-image: linear-gradient(-90deg, #8f9292, #47494f); */
  background-image: linear-gradient(-90deg, #767575, #242324);
}

</style>