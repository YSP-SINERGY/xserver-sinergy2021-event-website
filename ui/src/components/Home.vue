<template>
  <div class="home">
    <header-image></header-image>
    <h1>{{ msg }}</h1>

    <!-- <li><a href="#index1" >S!NERGYについて</a></li>  -->
    <li><a href="#index1" ><b-button variant="outline-white" >S!NERGYについて</b-button></a></li> 
    <li><a href="#index２" ><b-button variant="white-dark" >投票</b-button></a></li>
    <li><a href="#index3" ><b-button variant="white-dark" >Organizer</b-button></a></li>
    <li><a href="#index4" ><b-button variant="white-dark" >支援する</b-button></a></li>

    <!-- <buttons-social></buttons-social> -->
    <!-- <div class="top"><top></top></div> -->

    <div class="top"><top></top></div>
    
    <div class="vote"><vote></vote></div>

    <div class="organaizer"><orgnizer></orgnizer></div>

    <div class="donate"><donate></donate></div>

    <div class="donate"><contact></contact></div>
    
    
  </div>
</template>

<script>
import HeaderImage from './HeaderImage.vue'
import Top from "./Top.vue"
import Vote from './Vote.vue'
import Orgnizer from './Orgnizer.vue'
import Donate from './Donate.vue'
import Contact from './Contact.vue'

export default {
  name: 'Home',
  components: {
    HeaderImage,
    Top,
    Vote,
    Orgnizer,
    Donate,
    Contact
  },
  props: {
     msg: { type: String }
  },
  methods: {
    test () {
      console.log("test")
    },
    test2 () {

    }
  }
  
}


</script>

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
  width: 100%; 
}

.top{
  margin: 10em 0px 0 0;
}
.vote{
  margin: 10em 0px 0 0;
}
.organaizer{
  margin: 10em 0px 0 0;
}
.donate{
  margin: 10em 0px 0 0;
}


</style>
