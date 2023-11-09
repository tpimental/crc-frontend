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
        I am currently a Cloud Specialist dedicated to optimizing 
        system performance and driving innovation. Passionate about 
        leveraging cloud technologies to enhance efficiency and scalability. 
        Skilled in troubleshooting complex issues and providing expert solutions. 
        Constantly seeking opportunities to expand knowledge and stay at the forefront 
        of emerging trends. Adept at collaborating with cross-functional teams, 
        utilizing effective communication to foster seamless integration and achieve
        organizational goals. Former United States Marine Corps service has instilled 
        discipline, adaptability, and a relentless drive for excellence.
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

h2,
h4,
h3 {
  padding: 0;
  margin: 0;
}
</style>
