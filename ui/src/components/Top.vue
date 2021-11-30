<template>
  <div class="top">
    <h1><a id="index1">S!NERGYについて</a></h1>
    <p>
      「若者のアイディアが、社会や世界を変える」をコンセプトとした、<br>
      青年・学生によるプレゼンテーション・イベントです。<br>
      全国各地から集まった青年・学生の代表者が１０分間で、自分の考えた新しいアイディアを、<br>
      自由に観衆の前で発表します。<br>
      S!NERGYの魅力は3つのシナジーで表現することができます。</p>

      <div class="resizeimage">
      <img src="@/assets/examples/synergy2020.png" width="50%">
      <!-- <div class = "toplogo"><span>S!NERGY</span></div> -->
      </div>  
    <!-- </p><img src="@/assets/examples/synergy2020.png" width="800" height="500" alt="*" style="margin: 60px 20px 20px 20px;">  -->

  </div>
</template>

<script>
export default {
  name: 'Top'
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  margin: 40px 0 0;
}

ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
   color: #0e1311;

}

p {
   margin: 3em 40px 0 0;
   color: #0e1311;
}

.resizeimage img { 
  width: 30;
  position: relative;
  display:inline-block;
  margin: 60px 20px 20px 20px;
}


</style>
