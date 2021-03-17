const RSS_URL = `https://anchor.fm/s/2fe1f008/podcast/rss`;
const podcasts = [];

const ORDER_STATE = {
  newFirst: "newFirst",
  oldFirst: "oldFirst"
}

const PODCAST_STATE = {
  initial: "initial",
  playing: "playing",
  stopped: "stopped",
  pause: "pause",
  finished: "finished",
}

class Order {
  constructor(podcasts){
    this.order = ORDER_STATE.oldFirst;
    this.podcasts = podcasts;
  }

  oldFirst(){
    if (this.order === ORDER_STATE.oldFirst){
      return;
    }

    this.order = ORDER_STATE.oldFirst;
    this.podcasts.reverse();
  }

  newFirst(){
    if (this.order === ORDER_STATE.newFirst){
      return;
    }
    this.order = ORDER_STATE.newFirst;
    this.podcasts.reverse();
  }

}

class PodcastState {
  constructor(state, time) {
    this._state = state;
    this.time = time;
  }

  get status() {
    return this._state;
  }

  startPlaying() {
    this._state = PODCAST_STATE.playing;
  }

  stop() {
    this._state = PODCAST_STATE.stopped;
  }

  pause() {
    this._state = PODCAST_STATE.pause;
  }

  reset() {
    this._state = PODCAST_STATE.initial;
  }
}

const podcastStateMaker = {
  initial: () => new PodcastState(PODCAST_STATE.initial),
  finished: () => new PodcastState(PODCAST_STATE.finished),
}

class Podcast {
  constructor(title, description, date, artwork, link, duration, materialLink, time, number, state) {
    this.props = Object.freeze({
      title: title,
      description: description,
      date: date,
      duration: duration,
      materialLink: materialLink,
      artwork: artwork,
      link: link,
      number: number,
    })

    if (state === PODCAST_STATE.finished) {
      this.state = podcastStateMaker[PODCAST_STATE.finished]();
    } else {
      this.state = podcastStateMaker[state](time);
    }


  }

  render() {
    const container = document.getElementById("podcastsContainer");

    podcastsContainer.insertAdjacentHTML("afterend",
      `
      <div class="podcastCard" id="podcast${this.props.number}">
      <div class="podcastCard__artworkContainer">
        <img class="podcast__artwork" src="${this.props.artwork}" />
      </div>
      <div class="podcastCard__container">
        <p class="podcastCard__date">${this.props.date}</p>

        <h3 class="podcastCard__title">${this.props.title}</h3>
        <p class="podcastCard__description">${this.props.description}</p>
        <div class="podcastCard__buttons">
          <button class="ilo-button ilo-button--contained yourRippleEffectClass">
            <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" aria-hidden="true" aria-hidden="true">
              <path d="M16.59 9H15V4C15 3.45 14.55 3 14 3H10C9.45 3 9 3.45 9 4V9H7.41C6.52 9 6.07 10.08 6.7 10.71L11.29 15.3C11.68 15.69 12.31 15.69 12.7 15.3L17.29 10.71C17.92 10.08 17.48 9 16.59 9ZM5 19C5 19.55 5.45 20 6 20H18C18.55 20 19 19.55 19 19C19 18.45 18.55 18 18 18H6C5.45 18 5 18.45 5 19Z" fill="white" />
            </svg>
            <div class="ilo-button__ripple contained"></div>
            <span class="ilo-button__label"> material docente </span>
          </button>
          <button class="ilo-button ilo-button--outlined yourRippleEffectClass">
            <div class="ilo-button__ripple"> </div>
            <span class="ilo-button__label"> ${this.state.time}</span>
          </button>
        </div>
      </div>
    </div>
      `
    );


  }
}

/* FETCH */
fetch(RSS_URL)
  .then((response) => {
    if (!response.ok) {
      throw new Error("Network response was not ok");
    }
    return response.text();
  })
  .then((str) => new window.DOMParser().parseFromString(str, "text/xml"))
  .then((data) => {
    const items = data.querySelectorAll("item");

    items.forEach((item, index) => {

      const title = item.querySelector("title").textContent;

      let description = item.querySelector("description").textContent;
      let temp = document.createElement('div');
      temp.innerHTML = description;

      description = temp.querySelector("strong");
      if (!description) {
        description = " ";
      }
      else {
        description = description.textContent;
      }

      const date = item.querySelector("pubDate").innerHTML;

      const image = item.querySelector("image");
      const artwork = image.getAttribute("href");

      const link = item.querySelector("enclosure");

      let duration = item.querySelector("duration").innerHTML;
      duration = Math.round(duration / 60);

      const time = 2; // debería consultar la base de datos
      const materialLink = null; // debería consultar la base de datos
      const state = PODCAST_STATE.initial;
      podcasts.push(
        new Podcast(
          title, description, date, artwork, link, duration, materialLink, time, index, state
        )
      );
    });

    order = new Order(podcasts);

    order.newFirst();

    podcasts.forEach( (podcast)=> {
      podcast.render();
    });

  })
  .catch((error) => {
    console.error("Hubo un error con la operacion fetch", error);
  });