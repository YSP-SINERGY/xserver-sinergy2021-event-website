<template>
  <div class="crowd-funding">
    <v-btn
      v-scroll="onScroll"
      class="crowd-funding-button"
      v-show="fab"
      dark
      fixed
      bottom
      right
      :href="'https://camp-fire.jp/projects/view/522896'"
      target="_blank" 
    >    
      
        <img 
          src="@/assets/examples/synergy.png"
          class = "synergy-icon mr-1">
      支援  
    </v-btn>
  </div>  
</template>

<script>
export default {
  name: 'CrowdFunding',
  props: {
    msg: { type: String }
  },
  data () {
    return {
      fab: false
    }
  },
  methods: {
    test () {
      console.log("test")
    },
    test2 () {
    },
    onScroll (e) {
      if (typeof window === 'undefined') return
      const top = window.pageYOffset ||   e.target.scrollTop || 0
      this.fab = top > 20
    },
    toTop () {
      this.$vuetify.goTo(0)
    }
  }
}
</script>

<style lang="scss" scoped>
::v-deep {
.crowd-funding-button{
  border-radius: 5px;
  margin-right: 5px;
  font-size: 1rem;
  width: 80px;
  // background-color: #49535e;
  background-image: linear-gradient(- 400deg,#16170c,#7a7a98,#060629,#010102);
  // background-image: linear-gradient(-50deg, #996690, #400fb36b);
  // background-image: linear-gradient(-90deg, #a4ca80, #13c49a);
}
.synergy-icon{
  width: 0.7%;
}
}

</style>
