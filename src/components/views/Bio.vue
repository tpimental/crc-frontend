<template>
  <div>
    <img class="self" :src="bio.photo" />
    <h2 class="header">{{ bio.name }}</h2>
    <h4 class="subtitle" style="padding-bottom: 10px">{{ bio.title }}</h4>
    <h4 class="subtitle">{{ bio.location }}</h4>
    <div class="badge-grid">
      <img
        v-for="badge in bio.badges"
        :key="badge.label"
        class="badge"
        :alt="badge.label"
        :src="`https://img.shields.io/badge/-${badge.label}-${badge.color}`"
      />
    </div>
    <div class="inner-content">
      <h3 class="heading"><b>About Me</b></h3>
      <p class="paragraph" v-html="bio.about"></p>
    </div>
    <div class="inner-content">
      <h3 class="heading"><b>Resume</b></h3>
      <a style="color: #ff5733" :href="bio.resume.href" class="paragraph">{{ bio.resume.text }}</a>
    </div>
  </div>
</template>

<style scoped>
.badge-grid {
  display: table;
  align-items: center;
  margin-top: 20px;
}

.badge {
  width: auto;
  height: 20px;
  border-radius: 0px;
  font-size: 12px;
  padding-right: 10px;
  /* box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.12), 0 6px 20px 0 rgba(0, 0, 0, 0.1); */
}

.self {
  width: 100%;
  height: auto;
  /* border-radius: 5px; */
}

.subtitle {
  font-size: 12px;
  color: gray;
}

.heading {
  padding-bottom: 5px;
}

.header {
  padding-top: 20px;
  padding-bottom: 20px;
}

.inner-content {
  padding-top: 30px;
}

.paragraph {
  word-spacing: 2px;
}

h2,
h4,
h3 {
  padding: 0;
  margin: 0;
}
</style>

<script>
// All content lives in src/content/bio.js — edit that file, not this one.
import bio from "@/content/bio.js";

export default {
  name: "BioView",
  data() {
    return { bio };
  },
};
</script>
