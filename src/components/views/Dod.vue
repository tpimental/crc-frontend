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
        I was put on a small team at Cherry Point, NC. While there I was introduced into the great world of 
        end user support and hardware repairs. Exciting! We fixed laptops, repaired Outlook 
        and diagnosed faulty hard drives, which in turn gave me inspiration to explore engineering.
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
          src="https://img.shields.io/badge/-Win 10-red"
        />
      </div>
      <p class="paragraph">
        I chose to take a position working with the fine folks at a MARSOC headquarters at Stone Bay, NC. 
        While here, I had the opportunity to work closely with the system administration gurus. I joined
         the base's Capital Equipment Replacement Program (CERP) team. My whole purpose was to replace 
         end of life desktops, laptops and docking stations. I personally unpacked, imaged,  and deployed 
         roughly 500 assets to users over the period of a few months. In doing so I troubleshot countless
          issues with WSUS and SCCM. 
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
        After moving to the beautiful Twentynine Palms with my wife and son, I 
        took up contract work for Apex Systems. I started out doing underground cable 
        construction, but soon moved myself over to the Public Works Division utility 
        IT team. While there I was a Jack of all trades. Our budget was very minimal due to
        use working towards authority to operate (ATO). I brought our Linux and Windows
        systems up to what the STIGs required.  
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
  word-spacing: 2px;

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
  padding-top: 10px;
  padding-bottom: 10px;
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
