<template>
   <div> 
    <h1 class="head-border my-10">
      <a id="index1">
        <strong>What's S!NERGY ?</strong>
      </a>
    </h1>
    
    <v-container 
     fluid 
     class="grey lighten-4 my-15"
     >
      <div class = "top-youtube">
        <iframe
          src="https://www.youtube.com/embed/LYyG_tsCshc"
          frameborder="0"
          allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        />
      </div>
     </v-container>
     <div class="top-msg-font">
        <p><strong>S!NERGY（シナジー)</strong><br><br>
        それは、地域社会や世界をワクワクさせたい若者たちのプレゼン・イベント。<br><br>
        そんな若者たちの頂点として、一番ワクワクする『アイデア』と『熱量』を持つプレゼンターにベストシナジスト賞（賞金30万円）を贈っている。<br><br>
        2016年初開催以来、累計観客動員数は13,000名、Youtube総再生回数は約5万回を達成。<br><br>
        一度きりの思い出ではなく、『ワクワク』させることに本気になった若者たちを見て下さい。<br><br>
        あなたの『当たり前』が変わるはずです。<br>
        </p>
     </div>
  </div>
</template>

<script>
export default {
  name: 'Top'
}
</script>

<style scoped>
.top-youtube{
	position:relative;
	padding-top:60%;  
}
iframe{
	position:absolute;
	top:0;
	left:0;
	width:100%;
	height:100%;
}

p{
  padding: 8%;
  line-height:25px;
  text-align: justify;
  text-justify: inter-ideograph;
}

.top-msg-font{
  font-size:90%;
}
</style>

