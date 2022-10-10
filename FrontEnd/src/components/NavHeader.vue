<template>
  <div class="w-full flex bg-zinc-800 text-center">
    <RouterLink to="/" 
      class="flex-auto w-10 h-10 font-serif text-4xl font-bold text-yellow-500 cursor-pointer hover:bg-amber-300 hover:text-black font-arvo-bold">Home</RouterLink>
    <RouterLink to="/pricing" 
      class="flex-auto w-10 h-10 font-serif text-4xl font-bold text-yellow-500 cursor-pointer hover:bg-amber-300 hover:text-black font-arvo-bold">Pricing</RouterLink>
    <RouterLink to="/signin" 
      class="flex-auto w-10 h-10 font-serif text-4xl font-bold text-yellow-500 cursor-pointer hover:bg-amber-300 hover:text-black font-arvo-bold">Sign In</RouterLink>
  </div>
</template>

<script lang="ts">
export default {
  name: "Header",
  data: function () {
    return {};
  },
};
</script>
