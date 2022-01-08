
<template>
  <div class="application-form text-center" id="AppFormModal">
    <v-dialog
      v-model="dialog"
      width="800"
    >
      <v-card> 
        <v-card-title 
          class="
          justify-center 
          text-h4 
          orange  
          lighten-2
          hidden-sm-and-down"
        >
          Amazonギフト券1,000円が当たるチャンス！
        </v-card-title>

        <v-card-title 
          class="
          justify-center 
          text-caption
          orange 
          lighten-2
          hidden-sm-and-up"
        >
          <strong>Amazonギフト券1,000円が当たるチャンス！</strong>
        </v-card-title>

        <v-card-text>
          <a href="https://forms.gle/o8asiUhFbfRmXAHh9" target="_blank">
            <v-img
              src="@/assets/application_form/present.jpg"               
              class = "pa-5 mt-10"
              aspect-ratio="2"
              contain          
            ></v-img>
          </a>
        </v-card-text>

        <v-divider></v-divider>

        <v-card-actions>
          <v-spacer></v-spacer>

          <v-btn
            color="gray lighten-2"
            text
            @click="$emit('update:dialog', false)"
          >
            閉じる
          </v-btn>

          <v-btn
            color="red lighten-1"
            text
            :href="'https://forms.gle/o8asiUhFbfRmXAHh9'" 
            target="_blank"            
          >
            応募する
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  name: 'ApplicationForm',
  props: {
    dialog: { type: Boolean, required: true }
  }
}
</script>