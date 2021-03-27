import createElement from './utils/createElement';
import backTen from '../../asset/inline/backTen.svg';
import play from '../../asset/inline/play.svg';
import forwardTen from '../../asset/inline/forwardTen.svg';

/**
 *
 */
export default class Player {
  constructor(podcast) {
    this.podcast = podcast;
  }

  update(podcast) {
    this.podcat = podcast;
  }

  /**
   *
   * @returns
   */

  render() {
    return (
      <div class="ilo-player">
        <div class="ilo-player__slider" />
        <div class="ilo-player__main">
          <div class="ilo-player__details">
            <div class="ilo-player__artworkContainer">
              <img class="ilo-player__artwork" src="https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_episode/7933362/7933362-1600811899242-e366f8ab2cb7a.jpg" alt="" />
            </div>
            <div class="ilo-player__text">
              <h3 class="ilo-player__title"> Entendiendo el diseño, ¿azul o azul marino? que pasa con titulos más grandes o mucho más grandes la verdad no lo sé</h3>
              <p class="ilo-player__restTime">32min restantes</p>
            </div>
          </div>
          <div class="ilo-player__actions">
            {backTen}
            {play}
            {forwardTen}
          </div>
        </div>
      </div>
    );
  }
}
