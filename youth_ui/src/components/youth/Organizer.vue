<template>
  <v-container>
    <h1 class="head-border mt-15 mb-15">
      <a id="index3">
        ORGANIZER
      </a>
    </h1>
    <v-row>
      <v-col cols="12" sm="4" class="pa-0">
        <div class="zoom zoom-1">
          <img src="@/assets/organizer/organizer1-min.jpg" alt="">
        </div>
      </v-col>
      <v-col cols="12" sm="8">
        <div class="organizer-text-box">
          <p class="grey--text ma-0 font-size">
            S!NERGY2021実行委員代表
          </p>
          <h4 class="mb-2 "><strong>青木晃胤</strong>  KOUIN AOKI</h4>
          <p class="mb-1">
            <strong>代表挨拶</strong><br>
          </p>
          <p class="font-size grey--text text--darken-2">
            あなたは、『コロンブスの卵』を聞いたことがあるだろうか。<br>
            誰でも出来る簡単な事でも、最初に行うのは難しいことの喩えなのだが、
            どうにもいつの時代も最初に思いつくのは『常識』に囚われていない人の様に思える。<br>
            彼らは、心の赴くままに他の人が出来ないことをやり遂げる。<br><br>
            僕は、今年のS!NERGYのテーマを決める時、<br><br>『常識を覆せ』をテーマにしたいと思った。<br><br>
            Withコロナ/Afterコロナの時代には、心の赴くままに、新しい『常識』を見出している人がたくさんいるのではないかと感じたことがきっかけだ。<br>
            そんな人たちと出会えたなら、どんなにワクワクするだろう。<br><br>
          </p>
        </div>
      </v-col>
    </v-row>
    <v-row class="column-reserve-row">
      <v-col cols="12" sm="8" class="margin-height-auto ">
        <div class="organizer-text-box">
          <strong>さぁ、『常識』を覆そう。</strong><br><br>        
          <p class="font-size grey--text text--darken-2">
            話す人も聞く人も全員が、あっと驚く、そんな少し先の世界を覗き見よう。<br>
            そして、応援したい人がいたら、全力で応援しよう。<br><br>
            SNSのフォロワーになったり、商品を買ったり、何なら一緒に立ち上げてもいい。<br>
            コロンブスの時代には、SNSは無かったし、ECも無かったし、何なら、同乗者は受刑者だった。
            さぁ、あなたの『常識』を覆す一人に出会うのは、今日だ。<br><br>
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
  height: auto;
  text-align: left;
  padding: 0 3%;
}
.margin-height-auto {
  margin: auto 0;
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