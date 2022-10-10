<template>
  <div class="w-full bg-amber-300">
    <NavHeader></NavHeader>
    <div class="w-full bg-amber-300 my-24">
      <div class="md:mx-24 mx-8 md:p-24 p-8 bg-white md:text-4xl leading-relaxed space-y-8">
        <h2 class="text-center md:text-6xl font-bold">Pricing</h2>
        <div class="w-full bg-zinc-800 text-center py-24 shadow-2xl shadow-black rounded-lg">
          <div class="w-full bg-red-900 text-yellow-400 py-4">Monthly</div>
          <div class="w-full text-yellow-400 py-12">$ 2.00 / month</div>
          <button class="bg-red-800 hover:bg-red-700 text-white hover:text-yellow-400 cursor-pointer p-4 rounded-lg"><RouterLink to="/signup">Subscribe</RouterLink></button>
        </div>
      </div>
      <!-- end of priv-policy -->
    </div>
    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";
export default {
  name: "Pricing",
  components: {
    NavHeader,
    NavFooter,
  },
};
</script>
