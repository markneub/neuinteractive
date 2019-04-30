<template>
  <nav id="neu-header">
    <img class="logomark" src="~/assets/logomark.png" alt="Neu logomark" />
    <span>about</span>
    <span>work</span>
    <span>contact</span>
  </nav>
</template>

<script>
export default {
}
</script>

<style lang="scss">
@import '~assets/_common';

#neu-header {
  position: fixed;
  width: 100%;
  height: 100px;
  top: 0;
  left: 0;

  display: flex;
  align-items: center;
  justify-content: center;

  > * {
    margin: 0 10px;
  }

  img.logomark {
    width: 50px;
    height: auto;
    -ms-interpolation-mode: nearest-neighbor;
    image-rendering: -moz-crisp-edges;
    image-rendering: pixelated;
  }
}
</style>