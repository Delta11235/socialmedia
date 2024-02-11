<template lang="">
  <div id="mainCard">
    {{ imie + " " + nazwisko }}
  </div>
</template>
<script>
export default {
  name: "FriendCard",
  props: {
    id: Number,
    imie: String,
    nazwisko: String,
  },
};
</script>
<style lang="css" scoped>
#mainCard {
  width: 37vh;
  height: 40px;
  background-color: #353b3c;
  border-radius: 30px;
  border: none;
  margin: 10px;
  padding-top: 15px;
}
</style>
