<template>
  <div id="particles"></div>
</template>

<script>
const PARTICLE_CONFIG = {
  particles: {
    number: {
      value: 64,
      density: {
        enable: true,
        value_area: 800
      }
    },
    color: {
      value: '#ede4d8'
    },
    shape: {
      type: 'polygon',
      stroke: {
        width: 0,
        color: '#000000'
      },
      polygon: {
        nb_sides: 4
      },
      image: {
        src: 'img/github.svg',
        width: 100,
        height: 100
      }
    },
    opacity: {
      value: 0.05,
      random: true,
      anim: {
        enable: false,
        speed: 0.01,
        opacity_min: 0.1,
        sync: false
      }
    },
    size: {
      value: 32,
      random: true,
      anim: {
        enable: false,
        speed: 40,
        size_min: 0.1,
        sync: false
      }
    },
    line_linked: {
      enable: false,
      distance: 150,
      color: '#ffffff',
      opacity: 0.4,
      width: 1
    },
    move: {
      enable: true,
      speed: 0.25,
      direction: 'none',
      random: true,
      straight: false,
      out_mode: 'out',
      bounce: false,
      attract: {
        enable: false,
        rotateX: 600,
        rotateY: 1200
      }
    }
  },
  interactivity: {
    detect_on: 'canvas',
    events: {
      onhover: {
        enable: true,
        mode: 'bubble'
      },
      onclick: {
        enable: true,
        mode: 'repulse'
      },
      resize: true
    },
    modes: {
      grab: {
        distance: 400,
        line_linked: {
          opacity: 1
        }
      },
      bubble: {
        distance: 194.89853095232286,
        size: 24,
        duration: 0.48724632738080703,
        opacity: 0.05,
        speed: 3
      },
      repulse: {
        distance: 200,
        duration: 0.4
      },
      push: {
        particles_nb: 4
      },
      remove: {
        particles_nb: 2
      }
    }
  },
  retina_detect: true
}

export default {
  name: 'Particles',
  mounted() {
    require('particles.js')
    this.$nextTick(() => {
      particlesJS('particles', PARTICLE_CONFIG)
    })
  }
}
</script>

<style>
#particles {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
}
</style>