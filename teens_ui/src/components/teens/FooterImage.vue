<template>
  
  <v-footer
    width="100%"
    dark
    padless
  >
    <v-card
      flat
      tile
      class="gray lighten-1 white--text text-center"
    >
      <hr class="hr1 my-1">
      <v-card-text class="white--text pt-6">
        <v-btn 
          text
          :href="'https://www.sinergy-jp.org/contact/'" 
          target="_blank"
          class = "white--text mt-2"
        >
         お問い合わせ
        </v-btn>
      </v-card-text>
      <sns-icon />
      <v-divider />
      <v-card-text class="white--text pt-0">
        Copyright © S!NERGY 2021 All Rights Reserved.<br>
      </v-card-text>
    </v-card>
  </v-footer>
</template>

<script scoped>

import SnsIcon from './SnsIcon.vue'

export default {
  name: 'FooterImage',
  components: {
    SnsIcon
    
  },
}
</script>

<style lang="scss">
.v-card{
  background-image: linear-gradient(-90deg, #62c9bf, #68acce);

}
.v-footer{
  display: block !important;
}
</style>
