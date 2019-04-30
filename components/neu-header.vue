<template>
  <nav id="neu-header">
    <img class="logomark" src="~/assets/logomark.png" alt="Neu logomark" />
    <span @click="$emit('scroll-to', '#about')">about</span>
    <span @click="$emit('scroll-to', '#work')">work</span>
    <span @click="$emit('scroll-to', '#contact')">contact</span>
  </nav>
</template>

<script>
import { TweenLite, Power1 } from 'gsap/all'

export default {
  props: ['scrollto'],
  mounted () {
    const scene = this.$scrollmagic.scene({
      triggerHook: 0,
      duration: '250px',
      reverse: true
    })

    this.$scrollmagic.addScene(
      scene
        .setTween(
          TweenLite.to(this.$el, 10, {
            autoAlpha: 0,
            yPercent: -50,
            ease: Power1.easeInOut
          })
        )
    )
  }
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
  z-index: 2;

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

  > span {
    cursor: pointer;
  }
}
</style>