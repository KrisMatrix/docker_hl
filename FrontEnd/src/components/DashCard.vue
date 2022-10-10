<template>
    <div class="bg-blue-50 text-center rounded-2xl px-16 py-4 shadow-2xl">
        <img src="@/assets/HinduLit_PodcastBanner.jpg" alt="card image" class="rounded-2xl shadow-2xl"/>
        <RouterLink to="/secure/epPlayer" class="text-4xl w-full bg-zinc-600 text-white">
            {{title}}
        </RouterLink>
    </div>
</template>

<script lang="ts">
    export default {
        name: 'DashCard',
        props: {
            title: String,
        },
    }
</script>