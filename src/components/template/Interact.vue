<script>
/*
 * Vue 3 port of the vue-interactjs <interact> wrapper component.
 * Wraps interact.js and re-emits its drag/resize/gesture/pointer events.
 */
import { h } from "vue";
import interact from "interactjs";

const dragEvents = ["dragstart", "dragmove", "draginertiastart", "dragend"];
const resizeEvents = ["resizestart", "resizemove", "resizeinertiastart", "resizeend"];
const dropEvents = ["dropactivate", "dropdeactivate", "dragenter", "dragleave", "dropmove", "drop"];
const gestureEvents = ["gesturestart", "gesturemove", "gestureend"];
const pointerEvents = ["down", "move", "up", "cancel", "tap", "doubletap", "hold"];

export default {
  name: "Interact",
  props: {
    draggable: { type: Boolean, default: false },
    dragOption: { type: Object, default: () => ({}) },
    resizable: { type: Boolean, default: false },
    resizeOption: { type: Object, default: () => ({}) },
    droppable: { type: Boolean, default: false },
    dropOption: { type: Object, default: () => ({}) },
    gesturable: { type: Boolean, default: false },
    gestureOption: { type: Object, default: () => ({}) },
    tag: { type: String, default: "div" },
  },
  emits: [
    "ready",
    ...dragEvents,
    ...resizeEvents,
    ...dropEvents,
    ...gestureEvents,
    ...pointerEvents,
  ],
  data() {
    return { interactInstance: null };
  },
  watch: {
    draggable: "reset",
    resizable: "reset",
    droppable: "reset",
    gesturable: "reset",
  },
  mounted() {
    this.init();
  },
  unmounted() {
    this.destroy();
  },
  methods: {
    init() {
      if (!this.interactInstance) {
        this.interactInstance = interact(this.$el);
        this.bindEvents(pointerEvents);
        this.$emit("ready", this.interactInstance);
      }
      if (this.draggable) {
        this.interactInstance.draggable(this.dragOption);
        this.bindEvents(dragEvents);
      }
      if (this.resizable) {
        this.interactInstance.resizable(this.resizeOption);
        this.bindEvents(resizeEvents);
      }
      if (this.droppable) {
        this.interactInstance.dropzone(this.dropOption);
        this.bindEvents(dropEvents);
      }
      if (this.gesturable) {
        this.interactInstance.gesturable(this.gestureOption);
        this.bindEvents(gestureEvents);
      }
    },
    bindEvents(events) {
      events.forEach((eventName) => {
        this.interactInstance.on(eventName, (...args) => {
          this.$emit(eventName, ...args);
        });
      });
    },
    reset() {
      this.destroy();
      this.init();
    },
    destroy() {
      if (this.interactInstance) {
        this.interactInstance.unset();
        this.interactInstance = null;
      }
    },
  },
  render() {
    return h(this.tag, { class: "interact" }, this.$slots.default ? this.$slots.default() : []);
  },
};
</script>
