<template>
  <div>
    <neu-header />
    <nuxt />
  </div>
</template>

<script>
import NeuHeader from '~/components/neu-header'

export default {
  components: { NeuHeader }
}
</script>

<style>
html {
  font-family: Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 62.5%;
  color: #e5dfc5;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

body {
  background: radial-gradient(
    farthest-corner at 50% 50%,
    #002237 0%,
    #18121e 70%,
    #000000 100%
  );
  min-height: 100vh;
  font-size: 1.6rem;
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
