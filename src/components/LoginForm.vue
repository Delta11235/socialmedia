<template>
  <div>
    <input
      type="text"
      name=""
      id=""
      v-model="login"
      placeholder="login"
    /><br />
    <input
      type="text"
      name=""
      id=""
      v-model="haslo"
      placeholder="haslo"
    /><br />
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
      login: null,
      haslo: null,
    };
  },
  methods: {
    async getUsers() {
      let formData = new FormData();
      formData.append("login", this.login);
      formData.append("haslo", this.haslo);

      fetch("http://localhost/vue+php/socialmedia/src/php/getUsers.php", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.text())
        .then((data) => {
          this.data = data;
        })
        .catch((error) => console.error(error));
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
