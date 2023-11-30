<template>
  <div>
    <img class="self" src="@/assets/Biography/self.jpg" />
    <h2 class="header">Tyler Pimental</h2>
    <h4 class="subtitle" style="padding-bottom: 10px">
        Systems Administration | Cyber Security | Cloud Technologies
    </h4>
    <h4 class="subtitle">Twentynine Palms, CA 📍</h4>
    <div class="badge-grid">
      <img
        class="badge"
        alt="Swift"
        src="https://img.shields.io/badge/-Windows-Green"
      />
      <img
        class="badge"
        alt="Python"
        src="https://img.shields.io/badge/-Azure-blue"
      />
      <img
        class="badge"
        alt="JavaScript"
        src="https://img.shields.io/badge/-Scripting-yellow"
      />
    </div>
    <div class="inner-content">
      <h3 class="heading"><b>About Me</b></h3>
      <p class="paragraph">
        Hello, I'm Tyler! If you've made it this far, you can probably tell I've got a 
        passion for technology. Since I developed a consciousness, I've been intrigued by 
        everything it has to offer. I am a USMC Veteran, having served from 2016 to 2020. 
        Now, I live with my Wife and 2 kids in southern California. Any free time I may get, 
        is usually put towards some kind of project. I like to dabble in creating toys for my 
        little ones made from microcontrollers and LEDS. Or creating a website in the hardest 
        way possible!  
      </p>
    </div>
    <div class="inner-content">
      <h3 class="heading"><b>Resume</b></h3>
      <a
        style="color: #ff5733"
        href="/files/tyler_pimental_resume.pdf"
        class="paragraph"
        >Check out my resume here.</a
      >
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
