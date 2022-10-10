<template>
  <div class="w-full bg-zinc-800 text-white">
    <div
      class="grid mx-24 md:grid-cols-3 grid-cols-1 gap-x-3 text-center text-2xl"
    >
      <span class="hover:text-amber-400 cursor-pointer">
        <RouterLink to="/contact"> Contact </RouterLink>
      </span>
      <span class="hover:text-amber-400 cursor-pointer">
        <RouterLink to="/privPolicy"> Privacy Policy </RouterLink>
      </span>
      <span class="hover:text-amber-400 cursor-pointer">
        <RouterLink to="/attribution">Attribution</RouterLink>
      </span>
      <span class="hover:text-amber-400 cursor-pointer">
        <RouterLink to="/social">Social Media</RouterLink>
      </span>
      <span class="hover:text-amber-400 cursor-pointer">
        <RouterLink to="/faq">F.A.Q</RouterLink>
      </span>
    </div>
    <div class="w-full text-center text-md py-2">
      Copyright 2020 HinduLit, LLC. All Rights Reserved.
    </div>
    <div class="w-full text-center text-sm py-2">
      All content including images, audio and written work are the Copyright of
      HinduLit, LLC.
    </div>
  </div>
</template>

<script lang="ts">
import { RouterLink } from "vue-router";
export default {
  name: "Footer",
  data: function () {
    return {};
  },
};
</script>
