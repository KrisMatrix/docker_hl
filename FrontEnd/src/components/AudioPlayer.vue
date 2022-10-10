<template>
  <div class="mx-24 my-12 px-24 text-center">
    <!--
    <audio controls autoplay>
      <source src="@/assets/Podcast1.mp3" type="audio/mp3">
    </audio>
    -->
    <div class="w-full">
      <div class="mx-5 py-8 bg-zinc-300 rounded-2xl shadow-2xl">
        <div class="mx-32 shadow-2xl rounded-2xl bg-amber-900">
          <img src="@/assets/HinduLit_PodcastBanner.jpg" alt="mp3 image" class="rounded-full shadow-2xl object-cover vinyl-rotate"/>
        </div>

        <!-- This is the progress bar -->
        <div class="mx-24 my-8 bg-zinc-500 h-4">
          <div class="w-1/4 bg-blue-200 h-4"></div>
        </div>

        <!-- This is the title and author area -->
        <h2 class="text-5xl py-4">Podcast 1</h2>
        <h2 class="text-5xl py-4">Krishna Karnamadakala</h2>
        
        <!-- These are the controls -->
        <div class="mx-24 py-8 grid grid-cols-3">
          <font-awesome-icon icon="fa-solid fa-backward-step" class="w-full text-6xl cursor-pointer hover:text-red-600"/>
          <font-awesome-icon icon="fa-solid fa-play" class="w-full text-6xl cursor-pointer hover:text-red-600"/>
          <!-- 
            <font-awesome-icon icon="fa-solid fa-pause" class="w-full text-6xl cursor-pointer hover:text-red-600"/>
          -->
          <font-awesome-icon icon="fa-solid fa-forward-step" class="w-full text-6xl cursor-pointer hover:text-red-600"/>
        </div>

      </div>
    </div>

  </div>
</template>

<style scoped>

.vinyl-rotate {
  border: 5rem solid black;
  animation: spin 10s linear infinite;
}
</style>

<script lang="ts">
  import Card from '../components/Card.vue';
  export default {
    name: 'AudioPlayer',
    components: {
      Card,
    }
  }
</script>