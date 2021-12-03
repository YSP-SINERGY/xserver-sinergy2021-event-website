
<template>
  <div class="top-image" >
    <div class="resizeimage" />
  </div>   
</template>

<script>

export default {
  name: 'HeaderImage'
}
</script>

<style scoped>

.resizeimage img { 
  width: 100%; 
  margin-top: 10px;
}
.top-image {
  background-image: url("../../assets/examples/top_youth.jpg");
  padding-bottom: calc(100%*1365/2048);
  background-size: 100% auto;
}
</style>