
<template>
  <v-container>
    <h1 class="head-border mt-0 mb-10">
      <a id="index3">
        <strong>FINAL RESULTS</strong>
      </a>
    </h1>

<!-- 最終結果画像        --> 
    <div class = "pa-1">
      <!-- PC        --> 
      <img
          alt = "プレゼン シナジー2021 teens"
          src="@/assets/final_results/teens_result_min.jpg" 
          width="100%"
          class ="hidden-sm-and-down"
      > 
     <!-- SP        --> 
      <img
          alt = "プレゼン シナジー2021 teens"
          src="@/assets/final_results/teens_result_sp_min.jpg" 
          width="100%"
          class ="hidden-sm-and-up "
      >
       <!-- PC        --> 
        <p 
          class = "
          text--darken-2
          text-h4
          hidden-sm-and-down
          pa-10"
        ><br>
          <strong>優勝者紹介</strong>
        </p>
      <!-- SP        --> 
        <p 
          class = "
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
      <!-- PC        --> 
        <div class ="hidden-sm-and-down">
          <img
            alt = "プレゼン シナジー2021 youth"
            src="@/assets/final_results/teens_1st_min.jpg" 
            width="100%"
            class = "pa-1"
          >
        </div>
      <!-- SP        --> 
        <div class ="hidden-sm-and-up">
          <img
            alt = "プレゼン シナジー2021 youth"
            src="@/assets/final_results/teens_1st_sp_min.jpg" 
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
</style>