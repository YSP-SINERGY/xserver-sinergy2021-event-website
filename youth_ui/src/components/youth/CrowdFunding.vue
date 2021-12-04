<template>
  <div class="crowd-funding">
    <v-btn
      v-scroll="onScroll"
      class="green darken-1"
      v-show="fab"
      dark
      fixed
      bottom
      right
      :href="'https://camp-fire.jp/projects/view/522896'"
      target="_blank" 
    >    
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
.v-btn{
  border-radius:5px;
  margin-right: 5px;
  background-image: linear-gradient(-90deg, #a4ca80, #13c49a);
}
</style>
