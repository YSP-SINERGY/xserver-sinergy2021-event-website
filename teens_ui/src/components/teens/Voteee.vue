<template>
  <div class="my-10">
    <h1 class="head-border my-15">
      <a id="index3">
        <strong>ORGANIZER</strong>
      </a>
    </h1>
      <div class="zoom zoom-1">
        <img src="@/assets/organizer/organizer2.jpg" alt=""> 
      </div>
      <div class="organizer-msg-font">
        <p><strong>代表挨拶</strong><br>
        <br>
        みんなは、『好きな人』はいるだろうか。<br>
        あるいは、『好きなこと』はあるだろうか。<br>
        <br>
        誰かを好きになったり、何か熱中することが出来るのは、きっと僕らの特権のように思う。<br><br>
        だから僕はこのサイトに来てくれた人にお願いしたい。<br><br>
        何かに熱中して、頑張っている人を良く見て、応援して欲しい。
        堂々と発表している裏で一生懸命練習していたこと、先輩に詰められたこと、アイデアが浮かばなくて泣いたこと、全てひっくるめて、『かっこいい』と思わない？<br><br>
        <strong>さぁ、『常識』をひっくり返そう</strong><br><br>

        頑張る人を見て、自分を変えたいと思った人もきっといるだろう。
        頑張る人を見るだけでは、もの足りなくなった人もきっといるだろう。<br><br>
        そう思ったなら、君は、『好きなこと』がある人だ。<br>
        さぁ、『常識』をひっくり返す、ワクワクするプレゼンに出会おう。<br><br>
        S!NERGY2021実行委員代表
        青木晃胤
        </p>
      </div>
    </div>
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
      max-width: 80%;
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
.organizer-text.p{
  text-align: justify;
  text-justify: inter-ideograph;
}

p{
  padding: 8%;
  line-height:25px;
  text-align: justify;
  text-justify: inter-ideograph;
}

.organizer-msg-font{
  font-size:90%;
}
</style>