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
      <div className="ilo-player">
        <div className="ilo-player__slider" />
        <div className="ilo-player__main">
          <div className="ilo-player__details">
            <div className="ilo-player__artworkContainer">
              <img className="ilo-player__artwork" src="https://d3t3ozftmdmh3i.cloudfront.net/production/podcast_uploaded_episode/7933362/7933362-1600811899242-e366f8ab2cb7a.jpg" alt="" />
            </div>
            <div className="ilo-player__text">
              <h3 className="ilo-player__title"> Entendiendo el diseño, ¿azul o azul marino? que pasa con titulos más grandes o mucho más grandes la verdad no lo sé</h3>
              <p className="ilo-player__restTime">32min restantes</p>
            </div>
          </div>
          <div className="ilo-player__actions">
            {backTen}
            {play}
            {forwardTen}
          </div>
        </div>
      </div>
    );
  }
}
