<template>
  <div>
    <img class="self" src="@/assets/crcdiagram.png" />
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

h2,
h4,
h3 {
  padding: 0;
  margin: 0;
}
</style>
