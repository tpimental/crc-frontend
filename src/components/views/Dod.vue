<template>
  <div>
    <div class="inner-content">
      <h1 class="heading"><b>Contracting for the DoD</b></h1>
      <h2 class="heading"><b>Eliassen Group - NMCI </b></h2>
      <img class="self" src="@/assets/nmci.png" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-Hardware-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-Troubleshooting-red"
        />
      </div>
      <p class="paragraph">
        After ending my active duty contract with the USMC, I took up contracting work with Eliassen Group. 
        I was put on a small team at Cherry Point, NC. While there I was introuduced into the great world
        of end user support and hardware repairs. Exciting! 
      </p>
    </div>
    <div class="inner-content">
      <h2 class="heading"><b>Jacobs - MARSOC</b></h2>
      <img class="self" src="@/assets/marsoc.png" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-End User Support-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-M365-red"
        />
      </div>
      <p class="paragraph">
        I chose to take a position working with the fine folks at a MARSOC headquarters at Stone Bay, NC. While here,
        I was exposed to great world of systems administraton. I joined the base's CERP team and our whole purpose to was to
        replace end of life hardware. I personally unpacked, imaged and deployed roughly 500 assets to users over a few month period.
      </p>
    </div>
    <div class="inner-content">
      <img class="self" src="@/assets/twentyninepalms.png" />
      <div class="badge-grid">
        <img
          class="badge"
          alt="Swift"
          src="https://img.shields.io/badge/-System Administration-gold"
        />
        <img
          class="badge"
          alt="Python"
          src="https://img.shields.io/badge/-STIG'in-red"
        />
      </div>
      <p class="paragraph">
        After moving to the beautiful Twentynine Palms with my wife and son, I took up contract work for Apex Systems. I started out doing
        underground cable construction, but soon moved myself over to the Public Works Division utility IT team. While there I was kind of a Jack of all trades.
        Our budget was very minimal due to use working towards authority to operate (ATO). 
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

.paragraph{
  font-size: 20px;
  font-weight: bold;
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
