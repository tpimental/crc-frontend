<template>
  <div>
    <div class="header">
      <h2>Hey there!</h2>
      <p class="paragraph">Thanks for visiting my personal portfolio!<br>
      You are the <span class="visitor-text">{{ visitorCount }}</span> visitor! </p>
      <p class="paragraph">This is my submission for the <a href="https://cloudresumechallenge.dev/docs/the-challenge/azure/">Cloud Resume Challenge</a>. 
      This site was made entirely with Azure resources and averages to about 1$ a month!
      </p>
      <p class="paragraph">Feel free to look around and check out what I've been up to!</p>
      <p class="paragraph"></p>
    </div>
    <div class="header">
      <img class="self" src="@/assets/azure.png" />
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
  width: 70%;
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
  padding-top: 10px;
  padding-bottom: 10px;
  align-content: center;
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
const API_BASE = "https://tpimental-apimgmt.azure-api.net/backend-functionapp-current";

export default {
  name: "CounterView",
  data() {
    return {
      visitorCount: "[Fetching...]",
    };
  },
  async mounted() {
    try {
      // increment the counter
      await fetch(`${API_BASE}/increment-count`).catch((error) =>
        console.log("Increment count error:", error)
      );

      // get the new count
      const response = await fetch(`${API_BASE}/get-count`);
      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.message);
      }
      const count = await response.json();
      this.visitorCount = this.addNumberSuffix(count);
    } catch (error) {
      console.error("Get Count Error: ", error);
      this.visitorCount = "?";
    }
  },
  methods: {
    addNumberSuffix(number) {
      if (typeof number !== "number" || isNaN(number)) {
        return "Invalid input";
      }

      const lastDigit = number % 10;
      const secondLastDigit = Math.floor((number % 100) / 10);

      if (secondLastDigit === 1) {
        return number + "th";
      }
      switch (lastDigit) {
        case 1:
          return number + "st";
        case 2:
          return number + "nd";
        case 3:
          return number + "rd";
        default:
          return number + "th";
      }
    },
  },
};
</script>
