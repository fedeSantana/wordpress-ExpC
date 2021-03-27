import PodcastingPlatform from './components/podcastingPlatform';

const RSS_URL = 'https://anchor.fm/s/2fe1f008/podcast/rss';

// Wait until your DOM is fully loaded
document.addEventListener('DOMContentLoaded', async () => {
  const podcastingPlatform = new PodcastingPlatform(RSS_URL);

  await podcastingPlatform.getItems();

  const podcastHTML = document.getElementById('podcastsContainer');

  podcastHTML.append(podcastingPlatform.podcasts.render());
  podcastHTML.appendChild(podcastingPlatform.player.render());
});
