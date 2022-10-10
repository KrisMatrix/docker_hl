<template>
  <div class="w-full grid gap-x-28 gap-y-28 md:grid-cols-3 py-36">
    <Card :card_img="CardImages[0]" :card_title="CardTitle[0]"></Card>
    <Card :card_img="CardImages[1]" :card_title="CardTitle[1]"></Card>
    <Card :card_img="CardImages[2]" :card_title="CardTitle[2]"></Card>
    <Card :card_img="CardImages[3]" :card_title="CardTitle[3]"></Card>
    <Card :card_img="CardImages[4]" :card_title="CardTitle[4]"></Card>
    <Card :card_img="CardImages[5]" :card_title="CardTitle[5]"></Card>
  </div>
</template>

<script lang="ts">
import Card from "./Card.vue";
import { CardImages, CardTitle } from "@/data/homepage_card";

export default {
  name: "FixedCardsBlock",
  components: {
    Card,
  },
  data: function() {
    return {
      CardImages: CardImages,
      CardTitle: CardTitle,
    }
  }
};
</script>
