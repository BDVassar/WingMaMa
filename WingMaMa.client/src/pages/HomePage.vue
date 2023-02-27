<template>
  <div class="container-fluid bg-color">
    <section class="row">
      <div class="col-12 text-center">
        <h1>WingMaMa</h1>
      </div>
    </section>
    <section class="row justify-content-around">

      <div class="col-4 text-center mt-5">
        <button class="btn btn-warning mdi mdi-baby-bottle">Feeding</button>
      </div>
      <div class="col-4 text-center mt-5">
        <button class="btn btn-warning mdi mdi-human-baby-changing-table"> Diaper </button>
      </div>
      <div class="col-4 text-center mt-5">
        <button class="btn btn-warning mdi mdi-sleep">Nap</button>
      </div>
    </section>

  </div>
</template>

<script>
export default {
  setup() {
    return {}
  }
}
</script>

<style scoped lang="scss">
.bg-color {
  background-color: rgb(24, 159, 208);
  height: 100vh;
}
</style>
