<template lang="">
  <div id="main">
    <div v-if="store">
      Zalogowano jako:
      <FriendCard
        :id="store.id"
        :imie="store.imie"
        :nazwisko="store.nazwisko"
      />
    </div>
    <div v-else>loading user...</div>
  </div>
</template>
<script>
import FriendCard from "@/components/FriendCard.vue";
import { store } from "@/store";
export default {
  name: "SideBar",
  data() {
    return {
      store,
    };
  },
  components: {
    FriendCard,
  },
};
</script>
<style lang="css" scoped>
#main {
  padding: 10px;
  height: 100vh;
  width: 20%;
  background-color: #4d5556;
  border-right: solid #7d8a8c;
  color: #eef0f2;
  font-size: large;
  padding: 10px;
}
</style>
