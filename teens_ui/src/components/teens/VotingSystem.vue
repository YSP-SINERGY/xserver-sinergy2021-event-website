<template>
  <div class = "voting-system ">

   <h1 class="head-border mt-15 mb-15">
        VOTING SYSTEM 
    </h1>

    <div class = "px=6">

      <p class="text-h5 mt-15 mb-5">
        投票期間
      </p>

        <div class = "hidden-sm-and-down">
          <img
            alt = "プレゼン シナジー2021 teens"
            src="@/assets/voting_system_teens/voting_period_teens.png" 
            width="100%"
          > 
        </div>
          <p 
            class = "voting-description 
            hidden-sm-and-down 
            grey--text
            text--darken-2
            text-subtitle-1"
          ><br>
            投票期間は1月8日から10日までの３日間となります。<br><br>
            ３日目の1月10日に投票結果をこちらのサイトで公開します。<br>
          </p>

        <div class = "hidden-sm-and-up">
          <img
            alt = "プレゼン シナジー2021 teens"
            src="@/assets/voting_system_teens/voting_period_sm_teens.png" 
            width="100%"
          > 
        </div>
          <p 
            class = "voting-description 
            hidden-sm-and-up 
            grey--text 
            text--darken-4
            text-caption"
          ><br>
            投票期間は1月8日から10日までの３日間となります。<br><br>
            ３日目の1月10日に、<br><br>投票結果をこちらのサイトで公開します。<br>
          </p>

      <p class="text-h5 mt-15 mb-5">
          投票方法
      </p>

        <div class ="hidden-sm-and-down">
          <img 
            alt = "プレゼン シナジー2021 teens"
            src="@/assets/voting_system_teens/voting_teens.png" 
            width="100%"
          > 
        </div>
          <p 
            class = "voting-description 
            hidden-sm-and-down 
            grey--text
            text--darken-2
            text-subtitle-1"
          ><br>
            プレゼンターをクリックし、投票ボタンを押したら投票が完了します。<br><br>
            投票できる回数は１日１票です。<br><br>
            ３日間で合計３票投票できます。<br>
          </p>

        <div class = "hidden-sm-and-up">
          <img
            alt = "プレゼン シナジー2021 teens"
            src="@/assets/voting_system_teens/voting_sm_teens.png" 
            width="100%"
          > 
        </div>
          <p 
            class = "voting-description 
            hidden-sm-and-up 
            grey--text 
            text--darken-4
            text-caption"
          ><br>
            プレゼンターをクリックし、<br><br>投票ボタンを押したら投票が完了します。<br><br>
            投票できる回数は１日１票です。<br><br>
            ３日間で合計３票投票できます。<br>
          </p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'VotingSystem',
}
</script>
