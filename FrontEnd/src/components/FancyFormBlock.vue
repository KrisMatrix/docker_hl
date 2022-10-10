<template>
  <div class="mx-12 my-24 grid lg:grid-cols-2 grid-cols-1 lg:mx-24">

    <div class="bg-teal-700 lg:block hidden p-8">
      <img class="h-full" src="../assets/LittleIndia_KL.jpg" alt="Temporary image" />
    </div>

    <div class="bg-zinc-800 text-white py-12 px-12">
      <h2 class="text-5xl font-bold py-12 text-center">Sign In</h2>

      <Form class="bg-blue-900 shadow-md rounded px-8 pt-6 pb-8 mb-4" 
        @submit="onSubmit" :validation-schema="signInSchema">
        <label for="username" class="block text-white md:text-3xl font-bold mb-2">
          Username</label>
        <Field name="username" type="text"
          class="shadow appearance-none border rounded w-full py-2 px-3 
                 text-gray-700 leading-tight focus:outline-none 
                 focus:shadow-outline md:text-3xl" />
        <ErrorMessage name="username" />

        <label for="password" class="block text-white md:text-3xl font-bold mb-2">
          Password</label>
        <Field name="password" type="password"
          class="shadow appearance-none border rounded w-full py-2 px-3 
                 text-gray-700 leading-tight focus:outline-none 
                 focus:shadow-outline md:text-3xl" />
        <ErrorMessage name="password" />
      
        <Field
          type="hidden"
          name="secret"
          value="<%==$secret %>"
          class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline md:text-3xl"
        />

        <label class="block text-white md:text-3xl font-bold mb-2">Captcha</label>
        <span id="captcha" style="background-color: white; color: black"></span><br />

        <label
          for="userCaptcha"
          class="block text-white md:text-3xl font-bold mb-2"
          >Enter Captcha</label>
        <Field type="text" name="userCaptcha" id="userCaptcha"
          class="shadow appearance-none border rounded w-full py-2 px-3 
                text-gray-700 leading-tight focus:outline-none 
                focus:shadow-outline md:text-3xl"/>
        <ErrorMessage name="userCaptcha" />
        
        <button type="submit" 
          class="bg-amber-600 hover:bg-amber-800 cursor-pointer text-white 
                 font-bold py-2 px-4 my-4 rounded focus:outline-none 
                 focus:shadow-outline text-3xl w-full">Sign In</button>
      </Form>

      <div class="w-full bg-teal-700 text-center">
        <button class=" text-3xl text-yellow-400 hover:bg-zinc-700 py-2 px-2">
          <RouterLink to="/forgotPw">Forgot Password</RouterLink>
        </button>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import {Field, Form, ErrorMessage} from 'vee-validate';
import { defineRule } from 'vee-validate';
import { alpha_num } from '@vee-validate/rules';
import { defineComponent } from 'vue';

import VueCookies from 'vue-cookies';

defineRule('required', (value: string) => {
  if (!value || !value.length) {
    return 'This field is required';
  }
  return true;
});

defineRule('minMax', (value: string, [min, max]:number[]): boolean|string => {
  // The field is empty so it should pass
  if (!value || !value.length) {
    return true;
  }
  const numericValue = Number(value);
  if (numericValue < min) {
    return `This field must be greater than ${min}`;
  }
  if (numericValue > max) {
    return `This field must be less than ${max}`;
  }
  return true;
});

defineRule('alpha_num', alpha_num);

const signInSchema = {
  username: 'required|minMax:2,30|alpha_num',
  password: 'required|minMax:8,100',
};

  export default defineComponent({
    name: 'FancyFormBlock',
    data: function() {
      return {
        username: "",
        password: "",
        secret: "",
        userCaptcha: "",
        signInSchema: signInSchema,
      }
    },
    components: {
      Form,
      Field,
      ErrorMessage,
    },
    methods: {
      async user_validated(data:number) {
        console.log("This is within user_valdiated!");
        console.log(data);
        //$cookies.set('token', data, 300);
        console.log('Got here');
        this.$router.push('/secure/dashboard');

        /*
        await fetch('/backend/signin2')
        .then((response) => {
          response.json().then((data) => {
            console.log(data);
          })
          .catch((error) => {
            console.error('Error: ', error);
          })
        });
        */
        /* ffor Reference
        import jwt from 'jsonwebtoken';
        const { sign, verify } = jwt;
        const token = sign({"d":"dd"}, "secret", {expiresIn: 300})
        console.log(token);
        const verifycode = verify(token, "secret");
        console.log(verifycode);
        */
      },
      async onSubmit() {
        //await fetch('/backend/signin')
        await fetch('/backend/signin3')
        .then((response) => {
          response.json().then((data) => {
            console.log("type = "+typeof(data));
            this.user_validated(data);
          })
          .catch((error) => {
            console.error('Error: ', error);
          })
        });
      },
    },
  })
</script>