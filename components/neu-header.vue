<template>
  <header>
    <nav class="main">
      <div class="left">
        <n-link to="/">N</n-link>
      </div>
      <div class="center">
        <n-link to="/about">about</n-link>•
        <n-link to="/work">work</n-link>•
        <n-link to="/contact">contact</n-link>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'NeuHeader'
}
</script>

<style lang="scss">
@import '../assets/common.scss';

nav {
  position: absolute;
  height: 48px;
  width: 100%;
  background: rgba($color-secondary, 0.05);
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 20px;

  display: none;

  a,
  span {
    font-size: 2rem;
    margin: 0 10px;
    color: $color-primary;
    text-decoration: none;
  }
}
</style>