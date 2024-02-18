<template lang="">
  <div id="container">
    <div id="user">{{ imie + " " + nazwisko }}</div>
    <div id="tresc">{{ tresc }}</div>
    <div id="data">
      <div id="likes" v-if="!liked">
        <button v-on:click="liked = !liked">
          <span class="material-symbols-outlined"> favorite </span>
        </button>
      </div>
      <div id="likes" v-else-if="liked">
        <button v-on:click="liked = !liked">
          <span class="material-symbols-outlined" id="liked"> favorite </span>
        </button>
      </div>
      <div id="coms">
        <button>
          <span class="material-symbols-outlined"> chat </span>
        </button>
      </div>
    </div>
  </div>
  <!-- googlefonts -->
  <link
    rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
  />
</template>
<script>
export default {
  name: "PostCard",
  props: {
    id: Number,
    imie: String,
    nazwisko: String,
    tresc: String,
  },
  data() {
    return {
      liked: false,
    };
  },
};
</script>
<style lang="css" scoped>
#container {
  width: 50vh;
  height: 50vh;
  border: solid hidden 2px;
  margin: 5px;
  border-radius: 1%;
  text-align: left;
  background-color: #4d5556;
  color: #eef0f2;
  position: relative;
}
#user {
  float: left;
  padding: 1vh;
  width: 98%;
  padding: 10px;
  border-radius: 2%;
  font-size: large;
}
#tresc {
  display: block;
  overflow: hidden;
  padding: 10px;
  font-family: Arial, Helvetica, sans-serif;
}
#data {
  margin: 20px;
  position: absolute;
  bottom: 0;
  display: flex;
}
#likes {
  color: black;
  width: 40px;
  height: 40px;
  background-color: inherit;
}
#coms {
  width: 40px;
  height: 40px;
  background-color: inherit;
}
button {
  background-color: inherit;
  justify-content: center;
  align-items: center;
  border: none;
}
/* googlefonts */
.material-symbols-outlined {
  font-variation-settings: "FILL" 1, "wght" 400, "GRAD" 0, "opsz" 24;
  font-size: 36px;
  color: #eef0f2;
  cursor: pointer;
}
#liked {
  color: red;
}
</style>
