<template>
  <v-container>
    <h1 class="head-border mt-15 mb-15">
      <a id="index3">
        <strong>ORGANIZER</strong>
      </a>
    </h1>
    <v-row>
      <v-col cols="12" sm="4" class="pa-0">
        <div class="zoom zoom-1">
          <img src="@/assets/organizer/oorganizer1-min.jpg" alt=""> 
        </div>
      </v-col>
      <v-col cols="12" sm="8" class="margin-height-auto">
        <div class="organizer-text-box">
          <p class="grey--text ma-0 font-size">
            S!NERGY2021実行委員代表
          </p>
            <h4 class="mb-2"><strong>青木晃胤</strong></h4>
          <p class="mb-1">
            <strong>代表挨拶</strong><br>
          </p>
          <p class="font-size grey--text text--darken-2">
            みんなは、『好きな人』はいるだろうか。<br>
            あるいは、『好きなこと』はあるだろうか。<br>
            誰かを好きになったり、何か熱中することが出来るのは、きっと僕らの特権のように思う。<br><br>
            だから僕はこのサイトに来てくれた人にお願いしたい。<br><br>
            何かに熱中して、頑張っている人を良く見て、応援して欲しい。<br>
            堂々と発表している裏で一生懸命練習していたこと、先輩に詰められたこと、アイデアが浮かばなくて泣いたこと、全てひっくるめて、『かっこいい』と思わない？<br><br>
          </p>
        </div>
      </v-col>
    </v-row>
    <v-row class="column-reserve-row">
      <v-col cols="12" sm="8" class="margin-height-auto">
        <div class="organizer-text-box">
          <strong>さぁ、『常識』をひっくり返そう</strong><br><br>

          <p class="font-size grey--text text--darken-2">
            頑張る人を見て、自分を変えたいと思った人もきっといるだろう。<br>
            頑張る人を見る だけでは、もの足りなくなった人もきっといるだろう。<br><br>
            そう思ったなら、君は、『好きなこと』がある人だ。<br>
            さぁ、『常識』をひっくり返す、ワクワクするプレゼンに出会おう。<br><br>
          </p>
        </div>
      </v-col>
      <v-col cols="12" sm="4" class="pa-0">
        <div class="zoom zoom-1">
          <img src="@/assets/organizer/organizer2-min.jpg" alt=""> 
        </div>
      </v-col>
    </v-row>
  </v-container>
</template>
<script>
export default {
  name: 'Organizer',
}
</script>

<style lang="scss" scoped>

.home-about__contents {
  margin-top: 20px;
  justify-content: center;
 
  &-img {
    text-align: center;
  }
 
  &-text {
    word-wrap: break-word;
  }
}

.v-card__text{
  text-align: left; 
  width: 100%;
}
.v-card__title{
  padding: auto;
}
.section__title-text{
  width: 100%;
}
.h1.a{
  text-align: left;
}
.zoom-1 img {
  max-width: 90%;
  height: auto;
  animation: animationZoom2 10s ease-in-out infinite;
}
.zoom {
  max-width: 100%;
  height: auto;
  overflow: hidden;
  margin-bottom: 30px
}
@keyframes animationZoom2 {
  50% { transform:scale(1.1)} 
}
.margin-height-auto {
  margin: auto 0;
}
.p-class {
  padding: 8%;
  line-height: 25px;
  text-align: justify;
  text-justify: inter-ideograph;
}
.font-size {
  font-size: 0.7rem;
}
.organizer-text-box {
  text-align: left;
  padding: 0 3%;
}
@media only screen and (max-width: 600px) {
  .font-size {
    font-size: 0.6rem;
  }  
  .organizer-text-box {
    font-size: .75rem;
  }
  .mobile-organizer-text-box {
    padding: 0 1%;
  }
  .column-reserve-row {
    flex-direction: column-reverse;
  }
}
</style>