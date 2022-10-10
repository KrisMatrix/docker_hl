import { createApp } from "vue";
import { createPinia } from "pinia";

import App from "./App.vue";
import router from "./router";

import "./assets/main.css";
import "./index.css";

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'

/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faPlay, faBackwardStep, faPause, faForwardStep } from '@fortawesome/free-solid-svg-icons'
/* add icons to the library */
library.add(faPlay, faBackwardStep, faPause, faForwardStep)

import { registerSW } from 'virtual:pwa-register';

registerSW({ immediate: true });

const app = createApp(App);

app.component('font-awesome-icon', FontAwesomeIcon);
app.use(createPinia());
app.use(router);

app.mount("#app");