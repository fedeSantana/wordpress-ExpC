import { xmlParse, htmlParse } from './parser.js'
import createElement from './utils/createElement.js'
import PlayButton from './PlayButton/PlayButton.js'

export const PODCAST_STATE = {
    initial: "initial",
    playing: "playing",
    stopped: "stopped",
    pause: "pause",
    finished: "finished",
}

export class PodcastState {
    constructor(state, time, duration) {
        this._state = state;
        this.time = time;
        this.duration = duration;
    }

    get timeLeft() {
        return this.duration - this.time;
    }

    get timeAngle() {
        return (this.time / this.duration) * 360;
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

export default class Podcast {
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

        this.state = new PodcastState(state, time, duration);

        this.playButton = new PlayButton(this.state);
    }
    /**
     * 
     * @returns {Element}
     */
    render() {
        console.log("this.playButtonrender()", this.playButton.render());
        return (
            <div class="podcastCard" id={`podcast-${this.props.number}`}>
                <div class="podcastCard__artworkContainer">
                    <img class="podcast__artwork" src={`${this.props.artwork}`} />
                </div>
                <div class="podcastCard__container">
                    <p class="podcastCard__date">{this.props.date}</p>
                    <h3 class="podcastCard__title">{this.props.title}</h3>
                    <p class="podcastCard__description">{this.props.description}</p>
                    <div class="podcastCard__buttons">
                        <button class="ilo-button ilo-button--contained yourRippleEffectClass">
                            <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" aria-hidden="true" aria-hidden="true">
                                <path d="M16.59 9H15V4C15 3.45 14.55 3 14 3H10C9.45 3 9 3.45 9 4V9H7.41C6.52 9 6.07 10.08 6.7 10.71L11.29 15.3C11.68 15.69 12.31 15.69 12.7 15.3L17.29 10.71C17.92 10.08 17.48 9 16.59 9ZM5 19C5 19.55 5.45 20 6 20H18C18.55 20 19 19.55 19 19C19 18.45 18.55 18 18 18H6C5.45 18 5 18.45 5 19Z" fill="white" />
                            </svg>
                            <div class="ilo-button__ripple contained"></div>
                            <span class="ilo-button__label"> material docente </span>
                        </button>
                        {this.playButton.render(this.props.number)}
                    </div>
                </div>
            </div>
        )
    }
}