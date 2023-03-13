<template>
  <div class="container-fluid bg-color">
    <section class="row">
      <div class="col-12 text-center">
        <h1>WingMaMa</h1>
      </div>
    </section>
    <section class="row justify-content-around">

      <div class="col-4 text-center mt-5">
        <button @click="createFeed" class="button-size btn btn-warning mdi mdi-baby-bottle">Feeding</button>
      </div>
      <div class="col-4 text-center mt-5">
        <button class="button-size btn btn-warning mdi mdi-human-baby-changing-table"> Diaper </button>
      </div>
      <div class="col-4 text-center mt-5">
        <button class="button-size btn btn-warning mdi mdi-sleep">Nap</button>
      </div>
    </section>

  </div>
</template>

<script>
import { logger } from "../utils/Logger";
import { feedService } from "../services/FeedService"

export default {
  setup() {




    return {

      async createFeed() {
        try {

          let date = new Date
          await feedService.createFeed(new date.toDateString)
        } catch (error) {
          return logger.error(error.message)
        }

      }



    }
  }
}
</script>

<style scoped lang="scss">
.bg-color {
  background-color: rgb(24, 159, 208);
  height: 100vh;
}

.button-size {
  width: 20vh;
  height: 20vh;
}
</style>
