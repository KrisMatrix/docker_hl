<template>
  <div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>
    <FancyFormBlock></FancyFormBlock>
    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";
import FancyFormBlock from "../components/FancyFormBlock.vue";
  export default {
    name: "SignIn",
    components: { NavHeader, NavFooter, FancyFormBlock }
}
</script>