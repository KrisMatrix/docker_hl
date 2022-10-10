<template>
  <div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>
    <ContactForm></ContactForm>
    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";
import ContactForm from "../components/ContactForm.vue";
export default {
  name: "Contact",
  components: {
    NavHeader,
    NavFooter,
    ContactForm,
  },
};
</script>
