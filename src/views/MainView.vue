<template lang="">
  <div>
    <h1>This is a main page</h1>
    <section>
      <SideBar />
      <MainSection />
    </section>
  </div>
</template>
<script>
import SideBar from "@/components/SideBar.vue";
import MainSection from "@/components/MainSection.vue";
export default {
  name: "MainView",
  components: {
    SideBar,
    MainSection,
  },
};
</script>
<style lang="css">
section {
  display: flex;
}
</style>
