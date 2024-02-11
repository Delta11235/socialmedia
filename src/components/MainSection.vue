<template lang="">
  <div id="main">
    <div id="posts" v-if="this.posts">
      <PostCard
        v-for="post in posts"
        :key="post.id"
        :id="post.id"
        :imie="post.imie"
        :nazwisko="post.nazwisko"
        :tresc="post.tresc"
      />
    </div>
    <div v-else>loading posts...</div>
  </div>
</template>
<script>
import PostCard from "./PostCard.vue";
export default {
  name: "MainSection",
  components: {
    PostCard,
  },
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
  padding: 10px;
  height: 100vh;
  width: 60%;
  background-color: #353b3c;
  color: #eef0f2;
}
#posts {
  flex-direction: column-reverse;
  display: flex;
  align-items: center;
}
</style>
