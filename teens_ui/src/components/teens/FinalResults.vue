
<template>
  <v-container>
    <h1 class="head-border mt-0 mb-10">
      <a id="index3">
        <strong>FINAL RESULTS</strong>
      </a>
    </h1>

<!-- 最終結果画像        --> 
    <div class = "pa-1">
      <img
          alt = "プレゼン シナジー2021 youth"
          src="@/assets/final_results/teens_result_min.jpg" 
          width="100%"
      > 
       <!-- PC        --> 
        <p 
          class = "voting-description 
          text--darken-2
          text-h4
          hidden-sm-and-down
          pa-10"
        ><br>
          <strong>優勝者紹介</strong>
        </p>
      <!-- SP        --> 
        <p 
          class = "voting-description 
          text--darken-2
          text-h6
          hidden-sm-and-up
          pa-3"
        ><br>
          <strong>優勝者紹介</strong>
        </p>
    </div>

<!-- presenter情報   ベストシナジスト    --> 
    <v-row>
        <div>
          <img
            alt = "プレゼン シナジー2021 youth"
            src="@/assets/final_results/teens_1st_min.jpg" 
            width="100%"
            class = "pa-1"
          >
        </div>


<!-- presenter情報   ベストシナジスト   youtube   -->
<!-- PC        --> 
            <div class ="my-15 mb-15 hidden-sm-and-down">  
              <v-container 
                fluid 
                class="grey lighten-4 pa-1"
              >
                <div class = "top-youtube">
                  <iframe
                    src="https://www.youtube.com/embed/8iQw6p-h6wY"
                    frameborder="0"
                    allow="accelerometer; 
                    autoplay; 
                    encrypted-media; 
                    gyroscope; 
                    picture-in-picture"
                    allowfullscreen
                  />
                </div>       
              </v-container> 
            </div> 

          <!-- SP        --> 
            <div class ="my-4 mb-10 hidden-sm-and-up">  
              <v-container 
                fluid 
                class="grey lighten-4 pa-1"
              >
                <div class = "top-youtube">
                  <iframe
                    src="https://www.youtube.com/embed/8iQw6p-h6wY"
                    frameborder="0"
                    allow="accelerometer; 
                    autoplay; 
                    encrypted-media; 
                    gyroscope; 
                    picture-in-picture"
                    allowfullscreen
                  />
                </div>       
              </v-container> 
            </div> 

    </v-row>
</v-container>

</template>

<script>
export default {
  name: 'FinalResults',
}
</script>

<style lang="scss" scoped>

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