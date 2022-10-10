<template>
    <div class="w-full">
        <SeasonList :season="1"></SeasonList>
    </div>
</template>

<script lang="ts">
    import { episode_data } from '../data/episode_data'; 
    import SeasonList from '../components/SeasonList.vue';
    export default {
        name: 'SideNav',
        data: function() {
            return {
                episode_data: episode_data,
            }
        },
        components: {
            SeasonList,
        },
    }
</script>