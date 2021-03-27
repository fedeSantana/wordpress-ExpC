import createElement from './utils/createElement';

export const ORDER_STATE = {
  newFirst: 'newFirst',
  oldFirst: 'oldFirst',
};

export default class Podcasts {
  constructor(podcasts = []) {
    this.podcasts = podcasts;
    this.order = ORDER_STATE.oldFirst;
  }

  add(podcast) {
    this.podcasts.add(podcast);
  }

  sort(how) {
    if (how === this.order) {
      return;
    }

    const availableSorts = [ORDER_STATE.newFirst, ORDER_STATE.oldFirst];

    if (availableSorts.includes(how)) {
      this.podcasts.reverse();
      return;
    }

    console.warn('Podcasts.reorganize recive something wrong:', how);
  }

  render() {
    return (<div>{this.podcasts.map((podcast) => podcast.render())}</div>);
  }
}
