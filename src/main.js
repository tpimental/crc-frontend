import { createApp } from "vue";
import App from "./App.vue";
import store from "./store";
import Interact from "./components/template/Interact.vue";
import { icon } from "./utils/icons";

const app = createApp(App);

app.use(store);

// Local Vue 3 port of the old vue-interactjs <interact> wrapper
app.component("interact", Interact);

// Icon URL helper available in all templates (replaces webpack require())
app.config.globalProperties.$icon = icon;

app.mount("#app");
