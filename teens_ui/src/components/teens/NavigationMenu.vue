
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
          :href="'https://sinergy2021.org'"
          target="_blank"
        >
          YOUTHページへ移動
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
        <v-toolbar-title 
          text 
          class="text-caption"
          >
          Teens
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
            :href="'https://sinergy2021.org'"
            target="_blank"
          >
            YOUTH
          </v-btn>
          <v-btn 
            icon
            target="_blank"
            href="https://twitter.com/ergy_sin">
            <v-icon >mdi-twitter</v-icon>
          </v-btn>
          <v-btn 
            icon
            target="_blank"
            href="https://www.facebook.com/sinergy2016/">
          <v-icon>mdi-facebook</v-icon>
          </v-btn>
          <v-btn 
            icon
            target="_blank"
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

<style lang="scss"  scoped>

.navigationmenu {
    background-image: linear-gradient(-90deg, #62c9bf, #68acce);
}

.v-footer--fixed {
  z-index: 1;
}
#head #head-holder #main-nav #globalnav li.gnli a.primarynav span:last-child {
  display: block;
  font-size: 1rem;
  padding-top: 0.1rem;
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
  background-image: linear-gradient(-90deg, #62c9bf, #68acce);
}
.v-toolbar__content .v-btn.v-btn--icon.v-size--default, .v-toolbar__extension .v-btn.v-btn--icon.v-size--default {
    height: 48px;
    width: 48px;    
}
.text-caption{
  margin-top: 5px;
  margin-left: 5px;
}
@media only screen and (max-width: 600px) {
  ::v-deep {
    .v-toolbar__content {
      padding: 4px 16px 0 0;
    }
  }
}

</style>