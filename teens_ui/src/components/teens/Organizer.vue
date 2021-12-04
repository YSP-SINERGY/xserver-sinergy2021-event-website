<template>
  <div class="my-10">
    <h1 class="head-border my-15">
      <a id="index3">
        <strong>Organizer</strong>
      </a>
    </h1>
    <v-row>
      <v-col cols="6 mt-2" >
        <v-img :src="items[0].src" :lazy-src="items[0].src"  class="grey lighten-2" height="88%"/>
      </v-col>
      <v-col cols="6 mt-4">
        <v-img :src="items[1].src" :lazy-src="items[1].src" class="grey lighten-2" />
      </v-col>
    </v-row>  
  </div>
</template>
<script>
export default {
  name: 'Organizer',
  data () {
    return {
      items: [
        { 
          src: require('@/assets/organizer/organizer2.jpg'),
        },
        {
          src: require('@/assets/organizer/organizer_mg.jpg'),
        },
      ]
    }
  },
}
</script>

<style lang="scss" scoped>

.home-about__contents {
  margin-top: 20px;
  justify-content: center;
 
  &-img {
    text-align: center;
  }
 
  &-text {
    word-wrap: break-word;
  }
}

.v-card__text{
  text-align: left; 
  width: 100%;
}
.v-card__title{
  padding: auto;
}
.section__title-text{
  width: 100%;
}
.h1.a{
  text-align: left;
}

</style>