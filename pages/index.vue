<template>
  <div>
    <section>
      <neu-header />
      <div class="splash">
        <h1>
          Neu Interactive
        </h1>
        <h2>
          Design-minded software solutions
        </h2>
      </div>
    </section>
    <section>
      <div class="content">
        <h3>about</h3>
        <p class="large">
          Neu Interactive is the work of NYC-based technologist Mark Neuburger and collaborators. We provide digital and tangible engineering services, specializing in front end engineering and web development for early stage startups, creative agencies, and other businesses.
        </p>
      </div>
    </section>
  </div>
</template>

<script>
import NeuHeader from '~/components/neu-header'

export default {
  components: {
    NeuHeader
  },
  head: {
    title: 'Neu Interactive'
  }
}
</script>

<style lang="scss">
@import '~assets/_common';

section {
  &:first-of-type {
    min-height: 100vh;
  }

  margin: 0 auto;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  background: $grey;

  .splash {
    h1 {
      font-size: 5rem;
      @include headlineFont;
      color: $accent;
    }

    h2 {
      font-size: 2.7rem;
      font-weight: 400;
    }
  }

  .content {
    max-width: 680px;
    width: 100%;
    text-align: left;
    overflow: visible;
    margin-left: 3.2rem;

    h3 {
      display: inline-block;
      transform: translateX(-100%);
      @include headlineFont;
      color: $accent;
      font-size: 2.4rem;
      margin-bottom: 1.2rem;
    }

    p {
      line-height: 1.4;

      &.large {
        font-size: 2rem;
      }
    }
  }
}
</style>
