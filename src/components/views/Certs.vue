<template>
  <div>
    <div class="inner-content" v-for="cert in certs" :key="cert.credlyId">
      <h3 class="heading"><b>{{ cert.title }}</b></h3>
      <div class="img-container">
        <iframe
          name="acclaim-badge"
          allowtransparency="true"
          frameborder="0"
          :id="'embedded-badge-' + cert.credlyId"
          scrolling="no"
          :src="'//www.credly.com/embedded_badge/' + cert.credlyId"
          style="width: 150px; height: 270px"
          title="View my verified achievement on Credly."
        ></iframe>
        <div class="badge-grid">
          <img
            v-for="tag in cert.tags"
            :key="tag.label"
            class="badge"
            :alt="tag.label"
            :src="`https://img.shields.io/badge/-${tag.label}-${tag.color}`"
          />
        </div>
      </div>
      <p class="paragraph" v-html="cert.description"></p>
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
.img-container{
  text-align: center;
}

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

.paragraph{
  word-spacing: 2px;
}

.inner-content {
  padding-top: 30px;
}

h2,
h4,
h3 {
  padding: 0;
  margin: 0;
}
</style>

<script>
// All content lives in src/content/certs.js — edit that file, not this one.
import certs from "@/content/certs.js";

export default {
  name: "CertsView",
  data() {
    return { certs };
  },
};
</script>
