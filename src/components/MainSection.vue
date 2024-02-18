<template lang="">
  <div id="main">
    <div id="asdasd">
      <addPostForm v-if="showAddPostForm" />
    </div>
    <div id="addPostContainer">
      <div id="addPost" v-on:click="showAddPostForm = !showAddPostForm">
        <span class="material-symbols-outlined"> draw </span>
        <span id="dodajPostText">dodaj nowy post</span>
      </div>
    </div>

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
import addPostForm from "./addPostForm.vue";
export default {
  name: "MainSection",
  components: {
    PostCard,
    addPostForm,
  },
  data() {
    return {
      posts: null,
      showAddPostForm: false,
    };
  },
  mounted() {
    setInterval(() => {
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
    }, 5000);
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
  position: relative;
}
#posts {
  flex-direction: column-reverse;
  display: flex;
  align-items: center;
}
#addPost {
  height: 30px;
  background-color: #4d5556;
  width: 50vh;
  padding-top: 10px;
  padding-bottom: 5px;
  justify-content: center;
  align-items: center;
  border-radius: 1vh;
  border: hidden;
}
#addPostContainer {
  display: flex;
  flex-direction: column-reverse;
  align-items: center;
  margin: 10px;
}
#addPost:hover {
  cursor: pointer;
}
#asdasd {
  position: absolute;
  z-index: 1;
  display: flex;
}
#dodajPostText {
  font-size: large;
}
</style>
