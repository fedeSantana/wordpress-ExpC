import { xmlParse, htmlParse } from './parser';
import Podcasts from './Podcasts';
import Podcast from './podcast.vue';
import { PODCAST_STATE } from './PodcastState';
import Player from './player';

/**
 * element
 */
export default class PodcastingPlatform {
  constructor(url) {
    this.url = url;
    this.podcasts = new Podcasts();
    this.player = new Player();
  }

  /**
     *
     * @returns {Promise} Promise object with fetch data
     */
  getItems() {
    return new Promise((resolve, reject) => {
      fetch(this.url)
        .then((response) => {
          if (!response.ok) {
            reject(new Error('Network response was not ok'));
          }
          return response.text();
        })
        .then((str) => xmlParse(str))
        .then((data) => {
          const items = data.querySelectorAll('item');

          const podcasts = [...items].map((item, index) => {
            const title = item.querySelector('title').textContent;

            const descriptionNode = htmlParse(item.querySelector('description').textContent);
            const dateNode = item.querySelector('pubDate');

            const description = descriptionNode.querySelector('strong')?.textContent ?? '';
            // eslint-disable-next-line no-undef
            const date = dayjs().to(dayjs(dateNode.textContent));

            const image = item.querySelector('image');
            const artwork = image.getAttribute('href');

            const link = item.querySelector('enclosure');

            let duration = item.querySelector('duration').innerHTML;
            duration = Math.round(duration / 60);

            const time = 15; // debería consultar la base de datos
            const materialLink = null; // debería consultar la base de datos
            const state = PODCAST_STATE.initial;

            return new Podcast(
              title,
              description,
              date,
              artwork,
              link,
              duration,
              materialLink,
              time,
              index,
              state,
            );
          });

          this.podcasts = new Podcasts(podcasts);

          resolve();
        })
        .catch((error) => {
          console.error('Hubo un error con la operacion fetch', error);
          this.renderError(error);
        });
    });
  }

  static renderError() {
    const container = document.getElementById('podcastsContainer');
    container.insertAdjacentHTML('afterend', ' <h1> ¡Perdón! Tenemos algún problema y momentaneamente el sitio no se encuentra disponible </h1>');
  }
}
