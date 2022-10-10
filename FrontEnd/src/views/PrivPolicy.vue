<template>
  <div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>
    <div class="w-full my-24">
      <div
        class="md:mx-24 mx-8 md:p-24 p-8 bg-white md:text-4xl leading-relaxed space-y-8"
      >
        <h2 class="text-center md:text-6xl font-bold">Privacy Policy</h2>
        <p><b>Dated:</b> Jan 28th, 2021</p>
        <p>
          We will collect no information other than details submitted through a
          form (for example, the contact form or comment form). When submitting
          message via the contact form, the information provided is used to
          respond to inquiries and feedback (for example, email address). If you
          send a message via the contact form, it will be transferred over the
          public network like any other email.
        </p>

        <p>
          When submitting a comment, the information provided will be displayed
          on the site (for example, the name provided with the comment). It will
          used for no other purpose. We will never give any personal information
          provided to any other party except as required by law.
        </p>

        <p>We do not use cookies on our site.</p>

        <p>
          Thank you,<br />
          HinduLit, LLC
        </p>
      </div>
      <!-- end of priv-policy -->
    </div>
    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";
export default {
  name: "PrivPolicy",
  components: {
    NavHeader,
    NavFooter,
  },
};
</script>