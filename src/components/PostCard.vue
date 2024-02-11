<template lang="">
  <div id="container">
    <div id="user">{{ imie + " " + nazwisko }}</div>
    <div id="tresc">{{ tresc }}</div>
  </div>
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
</style>
