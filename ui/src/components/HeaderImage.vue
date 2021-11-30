
<template>
  <div id="app"><buttons-social></buttons-social>
    <div class="resizeimage">
      <img alt="topimg" src="../assets/examples/logo_1.png" class="text__slideIn">
      <!-- <div class = "toplogo"><span>S!NERGY</span></div> -->
      </div>      

      <div class="wrap">
        <div class="content">
          <p class="fadein txt01">S</p>
          <p class="fadein txt02">!</p>
          <p class="fadein txt03">N</p>
          <p class="fadein txt04">E</p>
          <p class="fadein txt05">R</p>
          <p class="fadein txt06">G</p>
          <p class="fadein txt07">Y</p>
        </div>
        
      </div> 
  </div>
</template>

<script>
import ButtonsSocial from './ButtonsSocial.vue'

export default {
  name: 'HeaderImage',
  components: {
    ButtonsSocial
  }
}
</script>

<style scoped>

.resizeimage img { 
  width: 100%; 
  position: relative;
  display:inline-block;
}

.toplogo{
  position: absolute;
  top: 0;
  left: 0;
  max-width: 100%; 
  max-height: 100%; 
  padding: 80px; 
  text-align: left;
  color: white;
  font-size: 3em;
}

span {
  position: absolute;
  top: 0;
  left: 0;
  color:white;    
  font-size: 2rem;
  font-weight: 600;
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  top: 30%;
  left: 30%; 
}

.text__slideIn {
  /* animation: slideIn 1.6s infinite; */
  animation: slideIn 1.6s;
}

@keyframes slideIn {
  0% {
    opacity: 0;
    transform: translateX(100px);
  }
  100% {
    opacity: 1;
    transform: translateX(0);
  }
}

* {
    margin: 0;
    padding: 0;
}

.wrap { 
  position: absolute;
  top: 0;
  left: 0;
  max-width: 100%; 
  max-height: 100%; 
  padding: 120px; 
  text-align: left;
  color: white;
  font-size: 10em; 
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

.content {      
    width:auto;
    height: auto;
}

p {
    font-size: 50px;
    color: #fff;
    line-height: 5em;
}
 
/*以下フェードイン表示の指定*/
.fadein {
    opacity: 0;
    animation: fadein 6s ease forwards;
}
@keyframes fadein {
    100% {  opacity: 1;}
}
 
/*以下遅延の指定*/
.txt01 {
  display: inline;
  animation-delay: 0.2s;
  }
.txt02 {
  display: inline;
  animation-delay: 0.4s;
  }
.txt03 {
  display: inline;
  animation-delay: 0.6s;
  }
.txt04 {
  display: inline;
  animation-delay: 0.8s;
  }
.txt05 {
  display: inline;
  animation-delay: 1;
  }
.txt06 {
  display: inline;
  animation-delay: 1.2s;
  }
.txt06 {
  display: inline;
  animation-delay: 1.4;
  }
.txt07 {
  display: inline;
  animation-delay: 1.4;
}

</style>