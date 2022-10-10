<template>
<div v-for="index, data in episode_data">
    <div class="bg-black hover:bg-zinc-800 text-white py-4 text-2xl cursor-pointer"
        @click="toggleEpisodeLink(data)">
        Season {{data}}
    </div>
    <div :id="'season' + data">
        <div v-for="item in episode_data[data]">
            <EpisodeLink :imgSrc="item.imgSrc" :alt="item.alt" :title="item.title"></EpisodeLink>
        </div>
    </div>
</div>
</template>

<script lang="ts">
    import { episode_data } from '../data/episode_data';
    import EpisodeLink from '../components/EpisodeLink.vue';
    export default {
        name: 'SeasonList',
        data: function() {
            return {
                episode_data: episode_data,
            }
        },
        props: {
            season: Number,
        },
        components: {
            EpisodeLink,
        },
        methods: {
            toggleEpisodeLink(data: String) {
                console.log('toggleEpisodeLink');
                /*const el = document.getElementById('season' + data);
                if (el.style.display == 'none') {
                    el.style.display = 'block';
                }
                else {
                    el.style.display = 'none';
                }
                */
            }
        }
    }
</script>