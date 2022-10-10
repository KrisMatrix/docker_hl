<template>
<div class='grid grid-cols-5 cursor-pointer hover:bg-zinc-700 hover:text-white'>
    <div class='col-span-1'>
        <img :src="imgSrc" :alt="alt"/>
    </div>
    <div class='col-span-4 w-full py-4 px-4'>
        {{title}}
    </div>
</div>
</template>

<script lang="ts">
    export default {
        name: 'EpisodeLink',
        props: {
            imgSrc: String,
            alt: String,
            title: String,
        },
    }
</script>
