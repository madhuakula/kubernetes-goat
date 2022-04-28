import useBaseUrl from '@docusaurus/useBaseUrl';
import React, { useEffect } from 'react';
import clsx from 'clsx';
import styles from './HomepageFeatures.module.css';

type FeatureItem = {
  title: string;
  image: string;
  description: JSX.Element;
};

const FeatureList: FeatureItem[] = [
  {
    title: 'Attackers & Red Teams',
    image: '/img/attackers-redteams.svg',
    description: (
      <>
        Learn to attack or find security issues, misconfigurations, and real-world hacks within containers, Kubernetes, and cloud native environments. Enumerate, exploit and gain access to the workloads right from your browser.
      </>
    ),
  },
  {
    title: 'Defenders & Blue Teams',
    image: '/img/defenders-blueteams.svg',
    description: (
      <>
        Understand how attackers think, work and exploit security issues, and apply these learnings to detect and defend them. Also, learn best practices, defenses, and tools to mitigate, and detect in the real world.
      </>
    ),
  },
  {
    title: 'Developers & DevOps Teams',
    image: '/img/developers-devopsteams.svg',
    description: (
      <>
        Learn the hacks, defenses, and tools. So that you can think like an attacker, and secure your Kubernetes, cloud, and container workloads right from the design, code, and architecture itself to prevent them.
      </>
    ),
  },
  {
    title: 'Products & Vendors',
    image: '/img/products-vendors.svg',
    description: (
      <>
        Use Kubernetes Goat to showcase the effectiveness of the tools, product, and solution. Also, educate the customers and share your product or tool knowledge in an interactive hands-on way.
      </>
    ),
  },
  {
    title: 'Interested in Kubernetes Security',
    image: '/img/everyone.svg',
    description: (
      <>
        Check out the awesome Kubernetes security resources like popular misconfigurations, hacks, defenses, and tools to gain real-world knowledge. Provide your valuable feedback and suggestions.
      </>
    ),
  },
];

function Feature({ title, image, description }: FeatureItem) {
  return (
    <div className={clsx('col col--4')}>
      <div className="text--center">
        <img
          className={styles.featureSvg}
          alt={title}
          src={useBaseUrl(image)}
        />
      </div>
      <div className="text--center padding-horiz--md">
        <h3>{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures(): JSX.Element {
  return (

    <section className={styles.features}>
      <div className="container">
        <h2 className={clsx('margin-bottom--lg', 'text--center')}>
          Don't worry, we've got you covered 🙌
        </h2>
        <br />
        <div className="row items-center">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
