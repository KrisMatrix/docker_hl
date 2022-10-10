<template>
  <div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>

    <div class="md:m-24 md:p-24 bg-white text-4xl space-y-8">
      <h2 class="text-6xl font-bold">Attribution</h2>

      <div class="font-bold">Google's Material Icons</div>
      <p>
        We are using Google's Material Icons on HinduLit&trade;. This use is
        permitted under the
        <a href="apacheLicense_2_0" class="no-underline hover:underline text-blue-700">Apache license version 2.0</a>. We are
        thankful to Google for providing these fonts.
      </p>

      <div class="font-bold">
        Homepage background image of temple with Idols
      </div>
      <img
        src="@/assets/images/BatuCaves_Krishna_attr.jpg"
        alt="Batu Caves Attribution"
      />
      <p>
        <q>BatuCaves</q> by <i>Megan Crowley</i> who has given Hindulit&trade;
        non-exclusive license to use the image for any purpose related to
        HinduLit&trade; and social media use.
      </p>

      <div class="font-bold">
        About page background image of large idol of Vishnu on a chariot
      </div>
      <img
        src="@/assets/images/LittleIndia_KL_attr.jpg"
        alt="Little India Attribution"
      />
      <p>
        <q>LittleIndia_KL</q> by <i>Megan Crowley</i> who has given hindulit.com
        non-exclusive license to use the image for any purpose related to
        HinduLit&trade; and social media use.
      </p>
      <div class="font-bold">About page image of Megan  Crowley on a hammock</div>
      <img src="@/assets/images/ProfilePic-M_attr.jpeg" alt="Profile Pic of Megan Crowley 
        attribution">
      <p><q>Megan Crowley Hammock</q> by <i>Megan Crowley</i> who has given 
      HinduLit&trade; non-exclusive license to use the image for any purpose related 
      to HinduLit&trade;.</p>

      <div class="font-bold">Map of India</div>
      <p>
        Our maps are based of a template of a map available in public domain at
        <a
          href="https://commons.wikimedia.org/wiki/File:Map-of-india-political-enlarge-view.gif"
          class="no-underline hover:underline text-blue-700"
          >Wikimedia Commons</a
        >. The map is made available under the Creative Commons CC0 1.0
        Universal Public Domain Dedication (<a
          href="https://creativecommons.org/publicdomain/zero/1.0/deed.en"
          class="no-underline hover:underline text-blue-700"
          >link</a
        >).
      </p>

      <div class="font-bold">All Other Content</div>
      <p>
        All other content on this site including written content, artwork, and
        audio, are copyright of HinduLit, LLC and owned by HinduLit, LLC.
      </p>
    </div>
    <!-- end of attribution-area -->

    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
import NavHeader from "../components/NavHeader.vue";
import NavFooter from "../components/NavFooter.vue";

export default {
  name: "Attribution",
  components: {
    NavHeader,
    NavFooter,
  },
};
</script>
