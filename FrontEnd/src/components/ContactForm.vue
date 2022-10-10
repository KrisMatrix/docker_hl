<template>
  <div class="xl:mx-24 lg:mx-16 md:mx-16 sm:mx-8 mx-8 md:my-24 sm:my-24 my-24">
    <form
      action=""
      method="POST"
      class="bg-blue-900 shadow-md rounded px-8 pt-6 pb-8 mb-4"
    >
      <h2 class="text-white md:text-3xl font-bold text-center">Contact Form</h2>
      <label for="name" class="block text-white md:text-3xl font-bold mb-2">
        Name</label
      >
      <input
        type="text"
        id="name"
        name="name"
        placeholder="Name"
        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline md:text-3xl"
      />

      <label for="email" class="block text-white md:text-3xl font-bold mb-2">
        email</label
      >
      <input
        type="text"
        id="email"
        name="email"
        placeholder="Email Address"
        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline md:text-3xl"
      />

      <label for="subject" class="block text-white md:text-3xl font-bold mb-2">
        Subject</label
      >
      <select name="subject" class="md:text-3xl w-full">
        <option value="bugReport">Bug Report</option>
        <option value="copyRight">Copyright Violation Claim</option>
        <option value="feedback">Feedback</option>
        <option value="sales">Sales</option>
        <option value="legal">Legal</option>
        <option value="other">Other</option>
      </select>

      <label for="message" class="block text-white md:text-3xl font-bold mb-2">
        Message</label
      >
      <textarea
        id="message"
        name="message"
        placeholder="Type Your Message"
        class="md:text-3xl w-full"
        style="height: 150px"
      ></textarea>

      <input
        type="hidden"
        name="secret"
        value="<%==$secret %>"
        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline md:text-3xl"
      />

      <label class="block text-white md:text-3xl font-bold mb-2">Captcha</label>
      <span id="captcha" style="background-color: white; color: black"></span
      ><br />

      <label
        for="userCaptcha"
        class="block text-white md:text-3xl font-bold mb-2"
        >Enter Captcha</label
      >
      <input
        type="text"
        id="userCaptcha"
        name="userCaptcha"
        value=""
        class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline md:text-3xl"
      />

      <input
        type="submit"
        value="Send"
        class="bg-amber-300 hover:bg-amber-300 text-white font-bold py-2 px-4 my-4 rounded focus:outline-none focus:shadow-outline text-3xl"
      />
    </form>
  </div>
</template>

<script lang="ts">
export default {
  name: "ContactForm",
};
</script>
