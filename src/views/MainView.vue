<template lang="">
  <div>
    <h1>This is a main page</h1>
    <section>
      <SideBar />
      <MainSection />
      <FriendsBar />
    </section>
  </div>
</template>
<script>
import SideBar from "@/components/SideBar.vue";
import MainSection from "@/components/MainSection.vue";
import FriendsBar from "@/components/FriendsBar.vue";
export default {
  name: "MainView",
  components: {
    SideBar,
    MainSection,
    FriendsBar,
  },
};
</script>
<style lang="css">
section {
  display: flex;
}
</style>
