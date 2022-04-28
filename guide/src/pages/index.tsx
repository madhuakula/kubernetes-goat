import React from 'react';
import clsx from 'clsx';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import styles from './index.module.css';
import HomepageFeatures from '../components/HomepageFeatures';
import IframeResizer from 'iframe-resizer-react'
function HomepageHeader() {
  const { siteConfig } = useDocusaurusContext();
  return (
    <header className={clsx('hero hero--primary', styles.heroBanner)}>
      <div className="container">
        <img src="img/kubernetes-goat.png" alt="" width="25%" height="auto" />
        <h1 className="hero__title">{siteConfig.title}</h1>
        <p className="hero__subtitle">{siteConfig.tagline}</p>
        <Link
          to="/docs/">
          <div className={styles.button}>
            Get started with Kubernetes Goat 🎉
          </div>
        </Link>
      </div>
    </header>
  );
}

export default function Home(): JSX.Element {
  const { siteConfig } = useDocusaurusContext();
  return (
    <Layout
      title={`Welcome to ${siteConfig.title}`}
      description="Interactive Kubernetes Security Learning Playground">
      <HomepageHeader />
      <main>
        <HomepageFeatures />
      </main>
      <TestimonialSection />
    </Layout>
  );
}



function TestimonialSection() {
  return (
    <section className={clsx('hero', styles.section)}>
      <div className="container">
        <h2 className={clsx('margin-bottom--lg', 'text--center')}>
          <a href='docs/wall-of-love'>What people say about Kubernetes Goat ❤️</a>
        </h2>
        <div className="row items-center">

          <IframeResizer
            src="https://embed.testimonial.to/grid/selected/kubernetes-goat?card=small&loadMore=on&initialCount=4"
            style={{ width: "1px", minWidth: "100%" }}
          />

        </div>
      </div >
    </section >
  );
}
