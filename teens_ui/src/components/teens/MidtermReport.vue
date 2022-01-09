<template>
  <div class = "midterm-report">

    <h1 class="head-border mt-5 mb-10">
        Midterm Report
    </h1>

      <div class = "hidden-sm-and-down pa-6">
          <img
            alt = "プレゼン シナジー2021 youth"
            src="@/assets/midterm_report/teens_vote_0108_PC_min.jpg" 
            width="100%"
          > 
          <p 
            class = "voting-description 
            grey--text
            text--darken-2
            text-h6"
          ><br>
            1/8終了時点の投票数<br><br>
          </p>
        </div>
          



        <div class = "hidden-sm-and-up pa-2">
          <img
            alt = "プレゼン シナジー2021 youth"
            src="@/assets/midterm_report/teens_vote_0108_sp_min.jpg" 
            width="100%"
          > 
          <p 
            class = "voting-description 
            grey--text 
            text--darken-4
            text-caption"
          ><br>
            1/8終了時点の投票数<br><br>
          </p>
        </div>
          

  </div>
</template>

<script>
export default {
  name: 'MidtermReport',
}
</script>

<style scoped>
.thanks-msg {
  padding: 8%;
  font-size: 0.7rem;
  line-height: 25px;
  text-align: justify;
  text-justify: inter-ideograph;
}
</style>