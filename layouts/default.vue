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
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

.page {
  padding-top: 80px;
  max-width: 800px;
  margin: 0 auto;
}
</style>
