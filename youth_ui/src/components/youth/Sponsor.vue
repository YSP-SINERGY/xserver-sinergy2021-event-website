<template>
  <div class = "sponsor">
    
    <h1 class="head-border mt-10 mb-13">
      SPONSOR
    </h1>

      <v-row justify="space-around px-7">
        <v-col cols="5">
          <v-img
            src="@/assets/sponsor/cosmo_foods1.jpg"
            aspect-ratio="2"
          ></v-img>
        </v-col>

        <v-col cols="5">
          <v-img
            src="@/assets/sponsor/cosmo_foods2.jpg"
            aspect-ratio="2"
            contain
          ></v-img>
        </v-col>
      </v-row>

  </div>
</template>

<script>
export default {
  name: 'Sponsor',
}
</script>
