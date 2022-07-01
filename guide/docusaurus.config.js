// @ts-check
// Note: type annotations allow type checking and IDEs autocompletion

const lightCodeTheme = require('prism-react-renderer/themes/github');
const darkCodeTheme = require('prism-react-renderer/themes/dracula');

const BASE_URL = '/kubernetes-goat/';

/** @type {import('@docusaurus/types').Config} */
const config = {

  title: 'Kubernetes Goat',
  tagline: 'Interactive Kubernetes Security Learning Playground 🚀',
  url: 'https://madhuakula.com',
  baseUrl: `${BASE_URL}`,
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  favicon: 'img/favicon.ico',
  organizationName: 'madhuakula', // Usually your GitHub org/user name.
  projectName: 'kubernetes-goat', // Usually your repo name.

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        googleAnalytics: {
          trackingID: 'UA-15752161-2',
          anonymizeIP: true,
        },
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          sidebarCollapsible: true,
          // Please change this to your repo.
          editUrl: 'https://github.com/madhuakula/kubernetes-goat/edit/next/guide/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */

    (

      {
        image: 'img/kubernetes-goat-docs.png',
        zoom: {
          selector: '.markdown :not(em) > img',
          config: {
            // options you can specify via https://github.com/francoischalifour/medium-zoom#usage
            background: {
              light: 'rgb(255, 255, 255)',
              dark: 'rgb(50, 50, 50)'
            }
          }
        },
        metadata: [{ name: 'keywords', content: 'Kubernetes, Security, Containers, Docker, Cloud, Cloud Native, Pentest, Hacking, Developers, DevOps, CNCF, k8s, vulnerable, Kubernetes Security, Container Security, Cloud Security, Cloud Native Security, Open Source, DevSecOps' }],
        colorMode: {
          defaultMode: 'light',
          disableSwitch: false,
          respectPrefersColorScheme: false,
        },
        announcementBar: {
          id: 'announcementBar-1', // Increment on change
          content: `⭐️ If you like Kubernetes Goat, give it a star on <a target="_blank" rel="noopener noreferrer" href="https://github.com/madhuakula/kubernetes-goat">GitHub</a> and share on <a target="_blank" rel="noopener noreferrer" href="https://twitter.com/intent/tweet/?text=Kubernetes%20Goat,%20an%20intentionally%20vulnerable%20by%20design%20training%20platform%20to%20learn%20%23Kubernetes%20Security%20by%20%40madhuakula.%20Check%20it%20out%20&url=https://github.com/madhuakula/kubernetes-goat">Twitter</a>`,

        },

        navbar: {
          title: 'Kubernetes Goat',
          logo: {
            alt: 'Kubernetes Goat Logo',
            src: 'img/kubernetes-goat.png',
          },

          items: [
            {
              type: 'search',
              position: 'right',
            },

            // {
            //   label: 'GitHub',
            //   href: 'https://github.com/madhuakula/kubernetes-goat',
            //   position: 'right',
            //   className: 'header-icon-link header-github-link',
            //   'aria-label': 'GitHub',
            // },

            // {
            //   label: 'Twitter',
            //   href: 'https://twitter.com/madhuakula',
            //   position: 'right',
            //   className: 'header-icon-link header-twitter-link',
            //   'aria-label': 'Twitter',
            // },

            { to: 'https://www.producthunt.com/posts/kubernetes-goat?utm_source=badge-featured&utm_medium=badge&utm_souce=badge-kubernetes-goat', position: 'right', label: '🔺 Vote' },
            { to: '/docs', position: 'right', label: '📖 Docs' },
            { to: 'https://rebrand.ly/Kubernetes-Goat/', position: 'right', label: '💬 Discord' },
            {
              to: 'https://twitter.com/intent/tweet/?text=Kubernetes%20Goat,%20an%20intentionally%20vulnerable%20by%20design%20training%20platform%20to%20learn%20%23Kubernetes%20Security%20by%20%40madhuakula.%20Check%20it%20out%20&url=https://github.com/madhuakula/kubernetes-goat', position: 'right', label: '❤️ Tweet'
            },
            {
              to: 'https://github.com/madhuakula/kubernetes-goat',
              position: 'right',
              label: '🌟 GitHub',
            },
          ],
        },
        footer: {
          style: 'dark',
          links: [
            {
              label: 'Docs',
              to: '/docs',
            },
            {
              label: 'GitHub',
              to: 'https://github.com/madhuakula/kubernetes-goat',
            },
            {
              label: 'Twitter',
              to: 'https://twitter.com/madhuakula',
            },
            {
              label: 'Discord',
              to: 'https://rebrand.ly/Kubernetes-Goat/',
            },
          ],
          copyright: `Copyright © ${new Date().getFullYear()
            } - <a href="https://madhuakula.com" target = "_blank" rel = "noopener" > Madhu Akula</a > `,
        },
        prism: {
          theme: lightCodeTheme,
          darkTheme: darkCodeTheme,
        },
      }),

  plugins: [require.resolve('docusaurus-lunr-search'), require.resolve("docusaurus-plugin-image-zoom")],
};

module.exports = config;
