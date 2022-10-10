import { fileURLToPath, URL } from "node:url";

import { defineConfig } from "vite";
import vue from "@vitejs/plugin-vue";

import { VitePWA } from "vite-plugin-pwa";

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    port: 5173
  },
  plugins: [vue(), VitePWA({
      registerType: "autoUpdate",
      devOptions: {
        enabled: true,
      },
      manifest: {
        name: "HinduLit App",
        theme_color: '#ff5e3a',
        icons: [
          {
            src: "HL_logo.png",
            sizes: "192x192",
            type: "image/png",
          },
        ],
      },
      workbox: {
        globPatterns: ["**/*.{js,css,html,png,jpg}"]
      }
    }),
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", import.meta.url)),
    },
  },
  /* BEGIN kk add */
  /*server: {*/
    /*proxy: {
      '/backend': {
        target: 'http://localhost:3000/'
      },
    },*/
  /*},*/
  /* END kk add */
});
