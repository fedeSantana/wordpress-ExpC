import {xmlParse, htmlParse} from './components/parser.js'
import Podcasts, { ORDER_STATE } from './components/podcasts.js'
import Podcast, { PODCAST_STATE } from './components/podcast.js'
import Player from './components/player.js'
import PodcastingPlatform from './components/podcastingPlatform.js'

const RSS_URL = `https://anchor.fm/s/2fe1f008/podcast/rss`;
const podcasts = [];


// Wait until your DOM is fully loaded
document.addEventListener("DOMContentLoaded", function () {
    const podcastingPlatform = new PodcastingPlatform(RSS_URL);
    console.log(podcastingPlatform);
  
    podcastingPlatform.getItems().then(podcasts => {
      podcastingPlatform.podcasts = podcasts;
    });
  })