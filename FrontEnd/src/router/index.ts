import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/Home.vue";

function is_user_loggedin() {
  console.log('Yes! The user is signed in!');
  return true;
  //return false;
}

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    /* Header Icon */
    {
      path: "/",
      name: "home",
      component: Home,
    },
    {
      path: "/pricing",
      name: "pricing",
      component: () => import("../views/Pricing.vue"),
    },
    {
      path: '/signin',
      name: 'signin',
      component: () => import('../views/SignIn.vue'),
    },
    /* Footer Icon */
    {
      path: "/about",
      name: "about",
      // route level code-splitting
      // this generates a separate chunk (About.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import("../views/About.vue"),
    },
    {
      path: "/privPolicy",
      name: "privPolicy",
      component: () => import("../views/PrivPolicy.vue"),
    },
    {
      path: "/attribution",
      name: "attribution",
      component: () => import("../views/Attribution.vue"),
    },
    {
      path: "/contact",
      name: "contact",
      component: () => import("../views/Contact.vue"),
    },
    {
      path: '/faq',
      name: 'faq',
      component: () => import('../views/FAQ.vue'),
    },
    {
      path: '/social',
      name: 'social',
      component: () => import('../views/SocialMedia.vue'),
    },
    {
      path: '/secure/dashboard',
      name: 'dashboard',
      component: () => import('../views/Dashboard.vue'),
      beforeEnter: [is_user_loggedin]
    },
    {
      path: '/secure/epPlayer/:id?',
      name: 'epPlayer',
      component: () => import('../views/EpisodePlayer.vue'),
    }
  ],
});

export default router;
