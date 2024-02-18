<template lang="">
  <div id="addPostForm">
    <h1>Dodaj nowy post</h1>
    <textarea name="" id="" cols="60" rows="5" v-model="tresc"></textarea>
    <!-- {{ this.tresc + " " + this.id }} -->
    <br />
    <button v-on:click="makePost()">Opublikuj</button>
  </div>
</template>
<script>
import { store } from "@/store";
export default {
  name: "addPostForm",
  data() {
    return {
      tresc: null,
      id: store.id,
    };
  },
  methods: {
    async makePost() {
      let formData = new FormData();
      formData.append("id", this.id);
      formData.append("tresc", this.tresc);

      fetch("http://localhost/vue+php/socialmedia/src/php/makePost.php", {
        method: "POST",
        body: formData,
      }).catch((error) => console.error(error));
      this.tresc = null;
    },
  },
};
</script>
<style lang="css" scoped>
div {
  margin-top: 50px;
  position: absolute;
  width: 100vh;
  height: 200px;
  z-index: 1;
  background-color: rgba(77, 85, 86, 0.61);

  backdrop-filter: blur(2px);
}
h1 {
  margin: 10px;
}
textarea {
  background-color: rgba(77, 85, 86);
  color: #eef0f2;
  border-color: #eef0f2;
  resize: vertical;
  padding: 5px;
  font-size: medium;
  font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande",
    "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
}
</style>
