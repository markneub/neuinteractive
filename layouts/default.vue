<template>
  <div>
    <nuxt />
  </div>
</template>

<script>
export default {
}
</script>

<style lang="scss">
@import '~assets/_common';

html {
  font-size: 62.5%;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

body {
  font-size: 1.6rem;
  background-color: $grey;
  color: $white;
  @include bodyFont;

  a {
    color: $accent;
    text-decoration: none;
    border-bottom: 1px solid $accent;
  }
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}
</style>
