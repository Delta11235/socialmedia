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
    <button type="submit" v-on:click="loginUser()">Zaloguj</button><br />
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
    //
    async loginUser() {
      let formData = new FormData();
      formData.append("login", this.login);
      formData.append("haslo", this.haslo);

      fetch("http://localhost/vue+php/socialmedia/src/php/login.php", {
        method: "POST",
        body: formData,
      })
        .then((response) => response.text())
        .then((data) => {
          this.data = data;
          if (this.data == 1) {
            this.$router.push("/about");
          }
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
