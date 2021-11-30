<template>
  <div class="organizer">

    <!-- <h1><a id="index3" margin: 30em 0px;>Organizer</a></h1> -->
<!-- 1.カルーセルパネルの配置 -->
    <div class="container">
      <h1 ><a id="index3" >Organizer</a></h1>      
      <div class="carousel slide" id="sample" data-ride="carousel" >
        <ol class="carousel-indicators" > 
          <li data-target="#sample" data-slide-to="0" class="active"></li>
          <li data-target="#sample" data-slide-to="1"></li>
          <li data-target="#sample" data-slide-to="2"></li>
          <li data-target="#sample" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner carousel-fade">
          <div class="carousel-item active">
            <a href="#">
                <img src="@/assets/img/organizer1.png" width="90%">
                <div class="carousel-caption d-none d-sm-block">
                    <h2>S!NERGY 2021 実行委員代表</h2>
                     <p class="blocktext" width="100%">どうもはじめまして。<br>
                      皆様はS!NERGY2020の特設ページにどのようにたどり着かれましたでしょうか？<br>
                      ご友人やお知り合いから、はたまた検索をかけてたどり着かれた方、動画や他のページから来られた方、<br>
                      その経路は様々だと思います。<br>
                      けれども、たどり着かれた皆様が一様に抱かれている想いは、<br>
                      「熱量のある若者に出会えるという期待感」ではないでしょうか？<br>
                      いつの時代も未来を創ったのは若者たちです。<br>
                      今の若者たちが持つ「熱量」を、「アイデア」を、「想い」を、<br>
                      感じ取ることのできるイベントに仕上がっていると思いますので、<br>
                      11月22日（日）14時開演をどうぞ楽しみにお待ちくださいますよう、お願い申し上げます。<br>
                      S!NERGYの魅力は3つのシナジーで表現することができます。<br>
                      <br>
                     アオキ</p>
                </div>
            </a>          
          </div>
          <div class="carousel-item">
            <img src="@/assets/img/organizer2.png" width="90%">
            <div class="carousel-caption d-none d-sm-block">
              <h2>S!NERGY 2021 実行委員副代表</h2>
              <p class="blocktext" width="100%" >
                 2020年はコロナ禍の影響で様々な困難がありましたが、<br>
                  今年もS!NERGYの全国大会をオンライン配信という形で開催する運びとなりました。<br>
                  多くご支援のもとに無事に開催できることを大変嬉しく思っております。<br>
                  私たち実行委員会には新たなメンバーも加わり、学生だけでなく、<br>
                  過去にS!NERGYに登壇したことのある社会人の先輩方からも見えないところで多くのサポートをいただきました。<br>
                  今年は「つなげろ、想像力！」というテーマで、当方も大学院生の立場から企画・運営に携わって参りました。<br>
                  想像力を通したアイデア同士の「つながり」、人と人との「つながり」、オンライン配信を通した世界中との「つながり」、そして、<br>
                  2020年の節目から未来に向けた新時代への「つながり」等々、様々な「つながり」を通して、<br>
                  平和をデザインする若者同士の「相乗効果（シナジー）」を起こしていっていただきたく思います。<br>
                  <br>
                  シノダ</p>      
            </div>  
          </div>
          <div class="carousel-item">
            <img src="@/assets/img/organizer3.png" width="90%">
            <div class="carousel-caption d-none d-sm-block">
            </div>
          </div>
        </div>
        <a href="#sample" class="carousel-control-prev" data-slide="prev">
          <span class="carousel-control-prev-icon"></span>
          <!-- <span class="sr-only"></span> -->
        </a>
        <a href="#sample" class="carousel-control-next" data-slide="next">
          <span class="carousel-control-next-icon"></span>
          <!-- <span class="sr-only"></span> -->
        </a>
      </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  </div>
</template>

<script>
export default {
  name: 'Organizer'
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

h1 {
  margin: 50px 0;
}

h2 {
  margin: 10px 0;
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

P.blocktext {
    margin-left: auto;
    margin-right: auto;
    text-align: inherit;
    width: 100%;
    }


</style>
