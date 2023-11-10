<template>
  <div>
    <div class="inner-content">
      <h3 class="heading"><b>United States Marine Crops</b></h3>
      <h4 class="heading"><b>2016</b></h4>
      <img class="self" src="@/assets/tyler_malcolm.jpg" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Discipline-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-Judgement-red"
        />
      </div>
      <p class="paragraph">
        Shortly after graduating from highschool, I realized attending community college was not
        challenging enough. I wanted to take on a challenge that would push me to my limits. That
        is when I walked into a recruiting office, expecting to speak to someone about the Air Force.
        Somehow I landed in front of USMC recruiter and was sold almost instantly. 
      </p>
    </div>
    <div class="inner-content">
      <h4 class="heading"><b>2017</b></h4>
      <img class="self" src="@/assets/test.png" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Encryption-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-Transmissions-red"
        />
      </div>
      <p class="paragraph">
        While stationed at Camp Lejeune, NC, I was apart of 2nd Marine Division Communications Company. 
        I was apart of the MUX Platoon, where I specialized in satellite communications. Here I learned the 
        fundamentals of transmissions and the importance on encryption across them.
      </p>
    </div>
    <div class="inner-content">
      <h4 class="heading"><b>2018</b></h4>
      <img class="self" src="@/assets/notm.jpg" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Networking-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-CLI-red"
        />
      </div>
      <p class="paragraph">
        Not long after, I began to expand my curiosity to other disciplines of the communications field.
        I began working on our Network on The Move (NOTM) team. We encorporated all aspects of the ecosystem,
        being administrators of networking, transmissions, and end users. We were capable of driving in a convoy
        while maintaing a satellite connection back to a server hundres of miles away in order to provide internet
        connectivity to passengers and other vehicles.
      </p>
    </div>
    <div class="inner-content">
      <h4 class="heading"><b>Norway</b></h4>
      <img class="self" src="@/assets/norway.jpg" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Troubleshooting-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-FITFO-red"
        />
      </div>
      <p class="paragraph">
        I had the amazing oppourtunity to particiapte in the NATO exercise, Trident Juncture 2018. While there
        my operating skills were put to the test with exteremly limited access to the internet. This is where I became
        very aquainted with good 'ol fashion technical manuals. 
      </p>
    </div>
    <div class="inner-content">
      <h4 class="heading"><b>2019</b></h4>
      <img class="self" src="@/assets/29palms.jpeg" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Layer 1!-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-Supervision-red"
        />
      </div>
      <p class="paragraph">
        Wrapping up my enlistment, I participated in the Marine Warfighting Exercise in Twentynine Palms. I was
        a foward position satellite transmissions supervisor that oversaw all Time Division Muliple Access (TDMA) and 
        Frequency Division Muliple Access (FDMA) connections for our company. This is also where I expereinced my longest 
        troubleshooting endevor, lasting only 40 straigh hours. I became very familiar with picking apart the OSI model 
        to properly isolate and identify problems, rather than taking a 'Shotgun Style' approach.
      </p>
    </div>
  </div>
</template>

<style scoped>
.badge-grid {
  text-align: center;
  display: flex;
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
  margin-top: 20px;
  margin-bottom: 20px;
  /* border-radius: 5px; */
}

.subtitle {
  font-size: 12px;
  color: gray;
}

.heading {
  padding-bottom: 5px;
  text-align: center;

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
