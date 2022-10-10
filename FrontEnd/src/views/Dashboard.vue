<template>
    <div class="bg-amber-300 w-full">

    <NavHeader></NavHeader>
        <div class="grid grid-cols-2 gap-8 m-24">
            <DashCard title="Episodes"></DashCard>
            <DashCard title="Subscribe"></DashCard>
            <DashCard title="Cancel Subscription"></DashCard>
            <DashCard title="Maps"></DashCard>
        </div>
    <NavFooter></NavFooter>
    </div>
</template>

<script lang="ts">
    import NavHeader from '@/components/NavHeader.vue';
    import NavFooter from '@/components/NavFooter.vue';
    import DashCard from '@/components/DashCard.vue';
    export default {
        name: 'Dashboard',
        components: {
            NavHeader,
            NavFooter,
            DashCard,
        }
    }
</script>