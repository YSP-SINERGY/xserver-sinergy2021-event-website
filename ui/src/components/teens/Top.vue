<template>
  <div> 
    <h1 class="head-border mb-10">
      <a id="index1">
        <strong>What's S!NERGY ?</strong>
      </a>
    </h1>
    
    <v-container 
     fluid 
     class="grey lighten-4 mb-15"
     >
      <v-card>
        <iframe
          src="https://www.youtube.com/embed/lUbQjAXRqKY"
          frameborder="0"
          allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen
        />
      </v-card>
     </v-container>
     
     <div class="top-message my-6" >
       <img src="@/assets/examples/top_mg.jpg" width="100%">
    </div>
  </div>
</template>

<script>
export default {
  name: 'Top'
}
</script>

<style scoped>
.v-card{
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
.top-message{
  text-align: center;
   object-fit: cover;
}
</style>

