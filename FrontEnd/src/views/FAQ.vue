<template>
  <div class="w-full bg-amber-300 font-poppins">
    <NavHeader></NavHeader>
    <div class="my-12">
      <div v-for="(question, index) in questions">
        <div class="bg-zinc-400 mx-24 px-8 py-2 text-xl cursor-pointer hover:bg-zinc-500" @click="toggle_faq(answers[index])">
        {{question}}
        </div>
        <div class="bg-white mx-24 px-8 py-2 text-xl" style="display: none;" :id=answers[index]>
        {{answers[index]}}
        </div>
      </div>
    </div>
    <NavFooter></NavFooter>
  </div>
</template>

<script lang="ts">
  import NavHeader from '../components/NavHeader.vue';
  import NavFooter from '../components/NavFooter.vue';
  import {questions, answers} from '../data/faq';
  export default {
    name: 'FAQ',
    data: function() {
      return {
        questions: questions,
        answers: answers,
      }
    },
    components: {
      NavHeader,
      NavFooter,
    },
    methods: {
      toggle_faq: (element: string): void => {
        let faq_el = document.getElementById(element) as HTMLElement;
        if (faq_el.style.display == 'none') {
          faq_el.style.display = 'block';
        }
        else {
          faq_el.style.display = 'none';
        }
      },
    }
  }
</script>