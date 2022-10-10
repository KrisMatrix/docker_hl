<template>
  <div class="">
    <img class="w-full" :src="card_img" :alt="card_title" />
    <div class="w-full bg-white px-2 py-4 text-4xl text-center font-hind">
      {{ card_title }}
    </div>
  </div>
</template>

<script lang="ts">
export default {
  name: "Card",
  props: {
    card_img: String,
    card_title: String,
  }
};
</script>
