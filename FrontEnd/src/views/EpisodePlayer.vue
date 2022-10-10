<template>
  <NavHeader></NavHeader>
  <div class="w-full bg-white grid grid-cols-5 text-center">
    <div class="bg-zinc-500 col-span-1">
      <SideNav></SideNav>
    </div>
    <div class="bg-amber-300 col-span-4">
      <AudioPlayer></AudioPlayer>
      <Transcript></Transcript>
      <References></References>
    </div>
  </div>
  <NavFooter></NavFooter>
</template>

<script lang="ts">
  import NavHeader from '../components/NavHeader.vue';
  import NavFooter from '../components/NavFooter.vue';
  import Transcript from '../components/Transcript.vue';
  import AudioPlayer from '../components/AudioPlayer.vue';
  import References from '../components/References.vue';
  import SideNav from '../components/SideNav.vue';

  export default {
    name: 'EpisodePlayer',
    components: {
      NavHeader,
      NavFooter,
      Transcript,
      AudioPlayer,
      References,
      SideNav,
    }
  }
</script>