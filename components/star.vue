<template>
  <div ref="star" class="star">
    <svg ref="body-svg" class="body-svg" xmlns="http://www.w3.org/2000/svg" width="1in" height="1in" viewBox="0 0 72 72">
      <filter id="blurMe">
        <feGaussianBlur in="SourceGraphic" stdDeviation="5" />
      </filter>
      <rect class="body-blur" x="23.27" y="23.27" width="25.46" height="25.46" transform="translate(-14.91 36) rotate(-45)" filter="url(#blurMe)" />
      <rect class="body" x="23.27" y="23.27" width="25.46" height="25.46" transform="translate(-14.91 36) rotate(-45)" />
    </svg>
    <svg ref="spikes-svg" class="spikes-svg" xmlns="http://www.w3.org/2000/svg" width="1in" height="1in" viewBox="0 0 72 72">
      <polyline class="spikes" points="0 36 31.5 31.5 35.88 0 40.5 31.5 72 36.25 40.5 40.5 36 72 31.5 40.5" />
    </svg>
  </div>
</template>

<script>
import { TimelineLite, TweenLite } from 'gsap/all'

export default {
  props: ['x', 'y'], // eslint-disable-line
  data () {
    return {
      tl: new TimelineLite()
    }
  },
  computed: {
    starStyle () {
      return {
        top: this.x,
        left: this.y,
        border: '1px solid red'
      }
    }
  },
  mounted () {
    this.tl
      .set(this.$refs.star, { x: this.x, y: this.y })
      .set([this.$refs['body-svg'], this.$refs['spikes-svg']], { scale: 0.05 } )
    window.setTimeout(() => {
      TweenLite.fromTo(this.$refs['body-svg'], 0.5, {
        scale: 0.1
      }, {
        scale: 1
      })
      TweenLite.fromTo(this.$refs['spikes-svg'], 0.5, {
        scale: 0.1
      }, {
        scale: 1
      })
    }, 1000)
  }
}
</script>

<style lang="scss">
.star {
  position: absolute;

  .body-svg,
  .spikes-svg {
    position: absolute;
    top: 0;
    left: 0;
    transform: translate(-50%, -50%);
    width: 40px;
    height: 40px;
  }

  .spikes {
    fill: #CCFAFF;
  }

  .body,
  .body-blur {
    fill: #CCFAFF;
  }
}
</style>