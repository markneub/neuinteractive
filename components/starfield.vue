<template>
  <div class="starfield">
    <star :x="100" :y="120" />
    <star :x="140" :y="160" />
    <star :x="120" :y="210" />
  </div>
</template>

<script>
import Star from './star'

export default {
  components: {
    Star
  }
}
</script>

<style lang="scss">
.starfield {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
</style>