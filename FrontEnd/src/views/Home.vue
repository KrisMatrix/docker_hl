<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import HomeBlock1 from "../components/HomeBlock1.vue";
import HomeBlock2 from "../components/HomeBlock2.vue";
import HomeBlock3 from "../components/HomeBlock3.vue";
import NavFooter from "../components/NavFooter.vue";

export default {
  name: "Home",
  components: {
    NavHeader,
    HomeBlock1,
    HomeBlock2,
    HomeBlock3,
    NavFooter,
  },
};
</script>

<template>
  <NavHeader></NavHeader>
  <HomeBlock1></HomeBlock1>
  <HomeBlock2></HomeBlock2>
  <HomeBlock3></HomeBlock3>
  <NavFooter></NavFooter>
</template>
