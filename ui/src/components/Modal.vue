<template>
  <transition name="modal">
    <div class="modal-mask">
      <div class="modal-wrapper">
        <div class="modal-container">

          <div class="modal-header">
            <slot name="header" mar>
              プレゼンター紹介
            </slot>
          </div>

          <div class="modal-body">
            <slot name="body">
              <div v-html="val.youtubeUrl"></div>
              <p>名前：{{ val.desc }}</p>
              <p>内容：{{ val.range }}</p>
              <!-- <p>：{{ val.lang }}</p> -->
              <b-button @click="sendVote" variant="secondary" class="col btn-dark-blue btn-rounded">投票</b-button>
              <!-- <b-button @click="$emit('close')" variant="secondary" >閉じる</b-button> -->
            </slot>
          </div>

          <div class="modal-footer">
            <slot name="footer">
              <b-button class="modal-default-button btn-rounded" variant="secondary" @click="$emit('close')">
              <!-- <b-button class="modal-default-button" variant="secondary" @click="$emit('close')"> -->
                閉じる
              </b-button>
            </slot>
          </div>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
  import axios from 'axios';

  export default {
    name: 'Modal',
    props: {
      val: { type: Object, required: true }
    },
    data() {
      return {
        error: null,
      };
    },
    methods: {
      async sendVote() {
        // make a POST request to vote endpoint
        let endpoint = "http://localhost:8000/api/v1/votes/";
        try {
          await axios.axios({
            url: endpoint,
            data: { id: this.val.id }
          });
          alert("投票完了しました。")
        } catch (error) {
          this.error = error.response;
          console.log(this.error);
        }
      }
  }
  }
</script>


<style scoped>

.modal-mask {
  position: fixed;
  z-index: 9998;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, .5);
  display: table;
  transition: opacity .3s ease;
}

.modal-wrapper {
  display: table-cell;
  vertical-align: middle;
}

.modal-container {
  width: 650px;
  height: 625px;
  margin: 0px auto;
  padding: 20px 30px;
  background-color: #fff;
  border-radius: 2px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, .33);
  transition: all .3s ease;
  font-family: Helvetica, Arial, sans-serif;
}

.modal-header h3 {
  margin-top: 0;
  color: #42b983;
}
/* 
.modal-body {
  margin:   1px 0;
} */

/* .modal-default-button {
  float: right;
} */
.modal-default-button {
  background: #7474BF;
  background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  color: #fff;
  border: 3px solid #eee; 
  float: right;
}

/*
 * The following styles are auto-applied to elements with
 * transition="modal" when their visibility is toggled
 * by Vue.js.
 *
 * You can easily play with the modal transition by editing
 * these styles.
 */

.modal-enter {
  opacity: 0;
}

.modal-leave-active {
  opacity: 0;
}

.modal-enter .modal-container,
.modal-leave-active .modal-container {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}

.btn-dark-blue {
    background: #7474BF;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #348AC7, #7474BF);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #348AC7, #7474BF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    color: #fff;
    border: 3px solid #eee;
}

.btn-rounded {
    border-radius: 35px;
}
</style>