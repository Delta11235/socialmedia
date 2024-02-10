<template lang="">
  <div id="main">
    MainSection
    <div>{{ posts }}</div>
  </div>
</template>
<script>
export default {
  name: "MainSection",
  data() {
    return {
      posts: null,
    };
  },
  mounted() {
    fetch("http://localhost/vue+php/socialmedia/src/php/showPosts.php", {
      method: "POST",
    })
      .then((response) => response.json())
      .then((data) => {
        this.posts = data;
        // console.log(data);
        // console.log(this.posts[0]);
        // console.log(this.posts[1]);
      })
      .catch((error) => console.error(error));
  },
};
</script>
<style lang="css" scoped>
#main {
  height: 100vh;
  width: 80%;
  background-color: #eee7e7;
}
div {
  min-height: 30px;
}
</style>
