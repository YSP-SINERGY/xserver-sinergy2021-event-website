<template>
  <div class="donate">    
     <h1><a id="index4">支援する</a></h1>
    
     <!-- <head>
     <link rel="stylesheet" type="text/css" href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/reset.css">
     <link rel="stylesheet" type="text/css" href="https://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/7-1-32/css/7-1-32.css"></head>
     <body><a href="https://camp-fire.jp/projects/view/338979" target="_blank" rel="noopener" class="gradient4">クラウドファンディングページはこちら</a></body>   -->

    <!-- <ul><li><a href="https://camp-fire.jp/projects/view/338979" target="_blank" rel="noopener"><b-button class = "main-bottom-button__content" variant="outline-dark" >支援する</b-button></a></li></ul> -->
     <ul><li><a href="https://camp-fire.jp/projects/view/338979" target="_blank" rel="noopener" class="btn-gradient-3d-orange" width="100%">支援する</a></li></ul>
    <!-- <div class="main-bottom-button__content">
    <a href="https://camp-fire.jp/projects/view/300851" target="_blank" rel="noopener" class="button button--primary" > 
    <span class="ellipsis" >クラウドファンディングページはこちら</span></a></div> -->

    <b-button class="col btn btn-dark-gray btn-rounded"  width="100%" variant="secondary"  onclick="location.href='https://camp-fire.jp/projects/view/338979'" >クラウドファンティングで応援する</b-button>
  </div>
  
</template>

<script>
export default {
  name: 'Donate'
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

.main-bottom-button__content {
    /*追従ボタン*/
    position: fixed;
    color: #0e1311;
    bottom: 10px; 
    right: 10px; 
    padding: 6px 40px;
    /* position: sticky; */
    /* position: -webkit-sticky; */
    /* bottom: 50
px
;
    z-index: 109;
    margin: auto; */
}
.btn-gradient-3d-orange {
  position: fixed;
  bottom: 20px; 
  right: 20px; 
  padding: 6px 40px;
  display: inline-block;
  padding: 0.5em 1em;
  text-decoration: none;
  border-radius: 4px;
  color: #ffffff;
  /* background-image: linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%); */
  background-image: linear-gradient(45deg, #ff8b5f 100%, #ff8b5f 100%);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.29);
  border-bottom: solid 3px #c58668;
}

.btn-gradient-3d-orange:active {
  -webkit-transform: translateY(4px);
  transform: translateY(4px);
  box-shadow: 0px 0px 1px rgba(0, 0, 0, 0.2);
  border-bottom: none;
}

.btn-dark-gray {
    /* background: #141E30; 
    background: -webkit-linear-gradient(to right, #97a1ad, #141E30); 
    background: linear-gradient(to right, #3f3e3e, #444549);  */
  display: inline-block;
  padding: 0.5em 1em;
  text-decoration: none;
  border-radius: 4px;
  color: #ffffff;
  background-image: linear-gradient(45deg, #FFC107 0%, #ff8b5f 100%);
  background-image: linear-gradient(45deg, #ff8b5f 100%, #ff8b5f 100%);
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.29);
  border-bottom: solid 3px #c58668;
}

</style>
