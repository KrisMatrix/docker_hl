<template>
  <div class="w-full bg-zinc-800 px-8 py-8">
    <FeaturedEpisodesBlock></FeaturedEpisodesBlock>
    <FixedCardsBlock></FixedCardsBlock>
  </div>
</template>

<script lang="ts">
import FeaturedEpisodesBlock from "./FeaturedEpisodesBlock.vue";
import FixedCardsBlock from "./FixedCardsBlock.vue";

export default {
  name: "HomeBlock2",
  components: {
    FeaturedEpisodesBlock,
    FixedCardsBlock,
  },
};
</script>
