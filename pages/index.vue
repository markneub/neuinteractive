<template>
  <section class="container">
    <starfield />
    <div class="content">
      <h1 class="title">
        Neu Interactive
      </h1>
      <p>
        is a software consultancy in New York City that makes distinctive products, services, and experiences.
      </p>
      <p>See what we've been up to:</p>
      <div class="arrow">⤑</div>
    </div>
  </section>
</template>

<script>
import Starfield from '~/components/starfield'

export default {
  components: {
    Starfield
  },
  head: {
    title: 'Neu Interactive'
  }
}
</script>

<style lang="scss">
.container {
  margin: 0 auto;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;

  .content {
    max-width: 570px;

    .title {
      display: block;
      font-weight: 400;
      font-size: 4.8rem;
      margin-bottom: 20px;
    }

    p {
      font-weight: 300;
      line-height: 1.25;
      font-size: 2.4rem;
      padding-bottom: 15px;
    }

    .arrow {
      margin-top: 10px;
      font-size: 3rem;
      transform: rotate(90deg);
    }
  }
}
</style>
