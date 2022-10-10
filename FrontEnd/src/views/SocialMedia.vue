<template>
<div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>
    This is social media page
    <NavFooter></NavFooter>
</div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";
    export default {
    name: "SocialMedia",
    components: { NavHeader, NavFooter }
}
</script>