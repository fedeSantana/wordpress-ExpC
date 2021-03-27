export const PODCAST_STATE = {
  initial: 'initial',
  playing: 'playing',
  stopped: 'stopped',
  pause: 'pause',
  finished: 'finished',
};

export default class PodcastState {
  constructor(state, time, duration) {
    this.state = state;
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
    return this.state;
  }

  startPlaying() {
    this.state = PODCAST_STATE.playing;
  }

  stop() {
    this.state = PODCAST_STATE.stopped;
  }

  pause() {
    this.state = PODCAST_STATE.pause;
  }

  reset() {
    this.state = PODCAST_STATE.initial;
  }
}
