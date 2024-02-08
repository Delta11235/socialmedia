<template>
  <div>
    <input type="text" name="" id="" /><br />
    <input type="text" name="" id="" /><br />
    <button type="submit" v-on:click="getUsers()">Zaloguj</button><br />
    <span v-if="data">{{ data }}</span>
  </div>
</template>
<script>
export default {
  name: "LoginForm",
  data() {
    return {
      data: null,
    };
  },
  methods: {
    async getUsers() {
      //   fetch("../php/getUsers.php")
      //     .then((response) => response.text())
      //     .then((data) => document.write(data))
      //     .catch((error) => console.error(error));
      const response = await fetch("../src/php/getUsers.php");
      this.data = await response.text();
    },
  },
};
</script>
<style scoped lang="css">
input {
  margin: 10px;
  padding: 10px;
}
</style>
