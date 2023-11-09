<template>
  <div>
    <h2 class="header">Congratulations!</h2>
    <div class="inner-content">
      <p class="paragraph">You are the</p><span class="subtitle" id="visitor-count"></span><p class="paragraph">visitor to this site!</p>
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

<script>
export default{
  mounted() {
    const outputElement = document.getElementById("visitor-count");

    //increment the counter
    fetch("https://tpimental-apimgmt.azure-api.net/backend-functionapp-current/increment-count")
        .then(response => {

        })
        .catch(error => {
            console.log("Increment count error:", error);

        })
    //get the new count
    fetch("https://tpimental-apimgmt.azure-api.net/backend-functionapp-current/get-count")
        .then(response => {
            if(response.ok){
                return response.json();
            }else {
                return response.json().then(data => {
                    throw new Error(data.message); // If not successful, throw an error with the message
                });
            }
        })
        .then(data => {
            //Process the data from the API response
            const responseData = data;

            outputElement.innerHTML = addNumberSuffix(data);
            console.log(responseData);
        })
        .catch(error => {
            // Error handling
            console.error("Get Count Error: ", error);
        });

    function addNumberSuffix(number) {
        if (typeof number !== 'number' || isNaN(number)) {
            return 'Invalid input';
        }

        const lastDigit = number % 10;
        const secondLastDigit = Math.floor((number % 100) / 10);

        if (secondLastDigit === 1) {
            return number + 'th';
        } else {
            switch (lastDigit) {
                case 1:
                    return number + 'st';
                case 2:
                    return number + 'nd';
                case 3:
                    return number + 'rd';
                default:
                    return number + 'th';
            }
        }
    }
  }
}

</script>
