import {xmlParse, htmlParse} from './components/parser.js'
import Podcasts, { ORDER_STATE } from './components/podcasts.js'
import Podcast, { PODCAST_STATE } from './components/podcast.js'
import Player from './components/player.js'
import PodcastingPlatform from './components/podcastingPlatform.js'

const RSS_URL = `https://anchor.fm/s/2fe1f008/podcast/rss`;
const podcasts = [];

// Wait until your DOM is fully loaded
document.addEventListener("DOMContentLoaded", async function () {
    const podcastingPlatform = new PodcastingPlatform(RSS_URL);
  
    const podcasts = await podcastingPlatform.getItems();

    const podcastHTML = document.getElementById(`podcastsContainer`);
    
    const renderOutput = document.createElement("podcasting-platform-podcasts");

    renderOutput.innerHTML = podcastingPlatform.podcasts.render();
    
    podcastHTML.appendChild(renderOutput);
    podcastHTML.appendChild(podcastingPlatform.player.render());


})