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
    <section>
      <div class="content">
        <h3>work</h3>
        <div
          v-for="(work, idx) in works"
          :key="idx"
          class="work"
        >
          <dl>
            <dt>Client</dt>
            <dd v-html="work.client"></dd>
            <dt>Service</dt>
            <dd v-html="work.service"></dd>
            <dt>Tech stack</dt>
            <dd v-html="work.stack"></dd>
          </dl>
          <p v-html="work.description"></p>
        </div>
      </div>
    </section>
    <section>
      <div class="content">
        <h3>contact</h3>
        <p class="large">
          Let’s make something together! Whether you’re looking for help building your product or seeking a partner to work with you on a creative project, we’d love to talk. Get in touch at mark@neuinteractive.com and let’s chat about your project.
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
  data () {
    return {
      works: [{
        client: 'Ask Lorem',
        service: 'Front end development',
        stack: 'React, GraphQL, Apollo',
        description: 'Ask Lorem had recently raised another round of funding and was looking to build out their engineering team, but didn’t want to rush their hiring process. In the meantime, we built the next version of Lorem’s realtime chat and collaboration app, used by thousands of customers and freelance professionals worldwide.'
      }, {
        client: 'Temple University',
        service: 'Design + full stack development',
        stack: 'Javascript, PHP, PostgresQL',
        description: 'Temple University’s Kornberg School of Dentistry needed to modernize an existing computer based program for treating anxiety. We provided Temple with UI/UX design and end-to-end full stack development services to create a new, web-based version of the program, integrating new video content, simpler and friendlier user experience, and intuitive administrative tools for querying study data.'
      }, {
        client: 'Meredith Monk/The House Foundation',
        service: 'Design + full stack development',
        stack: 'React, Next.js, WordPress, Google Cloud',
        description: 'The artist, composer and musician Meredith Monk was seeking a new website to coincide with promotion of an upcoming benefit concert. The new site would need to advertise upcoming events and host her performance repertory, educational workshops, and store. We partnered with Computer Lab to create a new online experience that would not only meet her short term goals, but would be flexible enough to grow as she continued to expand their her presence. A WordPress background allows her foundation full editing control over content.'
      }]
    }
  },
  head: {
    title: 'Neu Interactive'
  }
}
</script>

<style lang="scss">
@import '~assets/_common';

section {
  padding-bottom: 8rem;

  &:first-of-type {
    margin-top: 0;
    height: 80vh;
    min-height: 600px;
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
      margin-bottom: 1.8rem;
    }

    p {
      line-height: 1.4;

      &.large {
        font-size: 2rem;
      }
    }

    .work {
      margin-top: 4rem;
      &:first-of-type { margin-top: 0; }

      dl {
        overflow: auto;
        margin-bottom: 1.2rem;
              
        dt {
          @include headlineFont;
          color: $accent;
          font-size: 1.4rem;
          text-transform: uppercase;
          float: left;
          clear: left;
          margin-right: 6px;
          margin-bottom: 10px;
        }
        dd {
          float: left;
          margin-bottom: 10px;
        }
      }

      p {
        clear: left;
      }
    }
  }
}
</style>
