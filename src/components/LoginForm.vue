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
import { store } from "@/store";
export default {
  name: "LoginForm",
  data() {
    return {
      data: null,
      login: null,
      haslo: null,
      store,
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
          this.data = JSON.parse(this.data);
          console.log(this.data.imie);
          if (this.data) {
            store.id = this.data.id;
            store.imie = this.data.imie;
            store.nazwisko = this.data.nazwisko;
            this.$router.push("/main");
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
