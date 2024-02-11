<template lang="">
  <div id="main">
    Znajomi:
    <FriendCard
      v-for="user in users"
      :key="user.id"
      :id="user.id"
      :imie="user.imie"
      :nazwisko="user.nazwisko"
    />
  </div>
</template>
<script>
import FriendCard from "@/components/FriendCard.vue";
export default {
  name: "FriendsBar",
  components: {
    FriendCard,
  },
  data() {
    return {
      users: null,
    };
  },
  mounted() {
    fetch("http://localhost/vue+php/socialmedia/src/php/showUsers.php", {
      method: "POST",
    })
      .then((response) => response.json())
      .then((data) => {
        this.users = data;
        // console.log(data);
        console.log(this.users[0]);
        // console.log(this.posts[1]);
      })
      .catch((error) => console.error(error));
  },
};
</script>
<style lang="css" scoped>
#main {
  background-color: #4d5556;
  width: 40vh;
  border-left: solid #7d8a8c;
  font-size: large;
  color: #eef0f2;
  padding: 10px;
  font-family: Arial, Helvetica, sans-serif;
  align-items: center;
  justify-content: center;
}
</style>
