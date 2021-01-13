<template>
  <div>
    <section>
      <neu-header @scroll-to="scrollTo" />
      <div class="splash">
        <particles />
        <h1>
          Neu Interactive
        </h1>
        <h2>
          Design-minded software solutions
        </h2>
      </div>
    </section>
    <section id="about">
      <div class="content">
        <h3>about</h3>
        <p class="large">
          Neu Interactive is the work of NYC-based technologist <a href="https://www.markneuburger.com/" rel="noopener noreferrer" target="_blank">Mark Neuburger</a> and collaborators. We provide digital and tangible engineering services, specializing in front end engineering and full stack app development for early stage startups, creative agencies, and other businesses.
        </p>
      </div>
    </section>
    <section id="spotlight">
      <div class="content">
        <h3>spotlight</h3>
        <div class="spotlight-wrap">
          <img src="~/assets/logomosh.gif" alt="Glitchy Neu Interactive logo" />
          <p>
            LA-based <a href="https://www.airtight.cc/" rel="noopener noreferrer" target="_blank">Airtight</a> partnered with Neu Interactive to collaborate on the next version of their popular online glitch art tool, PhotoMosh. We spearheaded a complete rewrite of PhotoMosh as a cross-platform desktop app sporting a new UI, support for high-res exports, and many more new features. Learn more about <a href="https://photomosh.com/pro/" rel="noopener noreferrer" target="_blank">PhotoMosh-Pro</a>.
          </p>
        </div>
      </div>
    </section>
    <section id="work">
      <div class="content">
        <h3>work</h3>
        <div
          v-for="(work, idx) in works"
          :key="idx"
          class="work"
        >
          <dl>
            <dt>Client</dt>
            <dd>{{ work.client }}</dd>
            <dt>Service</dt>
            <dd>{{ work.service }}</dd>
            <dt>Tech stack</dt>
            <dd>{{ work.stack }}</dd>
          </dl>
          <!-- eslint-disable-next-line vue/no-v-html -->
          <p v-html="work.description"></p>
        </div>
      </div>
    </section>
    <section id="contact">
      <div class="content">
        <h3>contact</h3>
        <p class="large">
          Let’s make something together! Whether you’re looking for help building your product or seeking a partner to work with you on a creative project, we’d love to talk. Get in touch at <a href="mailto:mark@neuinteractive.com">mark@neuinteractive.com</a> and let’s chat about your project.
        </p>
        <p class="copyright">
          © 2021 Neu Interactive LLC. <a href="https://www.github.com/markneub/neuinteractive/" rel="noopener noreferrer" target="_blank">View the source code for this website</a>.
        </p>
      </div>
    </section>
  </div>
</template>

<script>
import { TweenLite, ScrollToPlugin, Power1 } from 'gsap/all'
import NeuHeader from '~/components/neu-header'
import Particles from '~/components/particles'

const stp = ScrollToPlugin // eslint-disable-line no-unused-vars

export default {
  components: {
    NeuHeader,
    Particles
  },
  data () {
    return {
      works: [{
        client: 'Siimpl',
        service: 'Back end development',
        stack: 'NodeJS, Express, Jest',
        description: 'Neu Interactive worked with Seattle-based software consultancy Siimpl on behalf of a client that was behind schedule and struggling with a complicated codebase. We refactored spaghetti code to fix errors and standardize on modern syntax, added comprehensive unit test coverage with Jest to check for bugs and avoid regressions, and created and implemented a security plan to prioritize and mitigate critical errors before launch.'
      }, {
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
        description: 'The artist, composer and musician Meredith Monk was seeking a new website to coincide with promotion of an upcoming benefit concert. The new site would need to advertise upcoming events and host her performance repertory, educational workshops, and store. We partnered with <a href="https://computerlab.io/" rel="noopener noreferrer" target="_blank">Computer Lab</a> to create a new online experience that would not only meet her short term goals, but would be flexible enough to grow as she continued to expand her presence. A WordPress backend allows her team full editing control.'
      }]
    }
  },
  head () {
    return {
      title: 'Neu Interactive'
    }
  },
  methods: {
    scrollTo (target) {
      TweenLite.to(window, 0.75, {
        scrollTo: target,
        ease: Power1.easeInOut
      })
    }
  }
}
</script>

<style lang="scss">
@import '~assets/_common';

section {
  padding-bottom: 8rem;
  padding-left: 1.6rem;
  padding-right: 1.6rem;

  &:first-of-type {
    margin-top: 0;
    padding-bottom: 0;
    height: 60vh;
    min-height: 600px;
    position: relative; // contain the particles

    &:after {
      position: absolute;
      left: 0;
      right: 0;
      bottom: 0;
      height: 10rem;
      background: linear-gradient(to bottom, rgba(32,35,36,0) 0%,rgba(32,35,36,1) 100%);
      pointer-events: none;
      content: '';
    }
  }

  margin: 0 auto;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  background: $grey;

  .splash {
    h1 {
      font-size: 3.4rem;
      @include headlineFont;
      color: $accent;
      @media screen and (min-width: 400px) {
        font-size: 4rem;
      }
      @media screen and (min-width: 500px) {
        font-size: 5rem;
      }
    }

    h2 {
      font-size: 1.8rem;
      font-weight: 400;
      @media screen and (min-width: 400px) {
        font-size: 2.1rem;
      }
      @media screen and (min-width: 500px) {
        font-size: 2.7rem;
      }
    }
  }

  .spotlight-wrap {
    display: flex;
    flex-direction: column;

    @media screen and (min-width: 500px) {
      flex-direction: row;
    }

    img {
      width: 100px;
      height: 96px;
    }

    p {
      margin-top: 1.6rem;
      @media screen and (min-width: 500px) {
        margin-top: -0.4rem;
        margin-left: 1.6rem;
      }
    }
  }

  .content {
    max-width: 680px;
    width: 100%;
    text-align: left;
    overflow: visible;
    @media screen and (min-width: 900px) {
      margin-left: 3.2rem;
    }

    h3 {
      display: inline-block;
      @include headlineFont;
      color: $accent;
      font-size: 2.4rem;
      margin-bottom: 1.8rem;

      @media screen and (min-width: 900px) {
        transform: translateX(-100%);
      }
    }

    p {
      line-height: 1.4;

      &.large {
        font-size: 2rem;
        line-height: 1.5;
      }

      &.copyright {
        opacity: 0.6;
        font-size: 1.3rem;
        margin-top: 7.2rem;
        transition: opacity 0.2s;

        &:hover {
          opacity: 1;
        }
      }
    }

    .work {
      margin-top: 4.8rem;
      &:first-of-type { margin-top: 0; }

      dl {
        overflow: auto;
        margin-bottom: 1rem;
              
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
