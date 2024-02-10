<template lang="">
  <div>
    <nav>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link> |
      <router-link to="/login">Login</router-link>
    </nav>
    <h1>This is a login page</h1>
    <LoginForm />
  </div>
</template>
<script>
import LoginForm from "@/components/LoginForm.vue";
export default {
  name: "LoginView",
  components: {
    LoginForm,
  },
};
</script>
<style lang="css" scoped></style>
