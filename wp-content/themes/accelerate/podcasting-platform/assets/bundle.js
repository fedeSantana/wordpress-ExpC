/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./components/parser.js":
/*!******************************!*\
  !*** ./components/parser.js ***!
  \******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "parser": () => (/* binding */ parser),
/* harmony export */   "xmlParse": () => (/* binding */ xmlParse),
/* harmony export */   "htmlParse": () => (/* binding */ htmlParse)
/* harmony export */ });
const parser = new DOMParser();
const xmlParse = (text) => parser.parseFromString(text, 'text/xml');
const htmlParse = (text) => parser.parseFromString(text, 'text/html');


/***/ }),

/***/ "./components/player.js":
/*!******************************!*\
  !*** ./components/player.js ***!
  \******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* binding */ Player)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./parser.js */ "./components/parser.js");
/* harmony import */ var _podcast_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./podcast.js */ "./components/podcast.js");



class Player {
    constructor() {
    }
  }

/***/ }),

/***/ "./components/podcast.js":
/*!*******************************!*\
  !*** ./components/podcast.js ***!
  \*******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "PODCAST_STATE": () => (/* binding */ PODCAST_STATE),
/* harmony export */   "default": () => (/* binding */ PodcastState)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./parser.js */ "./components/parser.js");


const PODCAST_STATE = {
    initial: "initial",
    playing: "playing",
    stopped: "stopped",
    pause: "pause",
    finished: "finished",
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
        return
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
            <button onclick="PodcastState.startPlaying(this, ${this.props})" class="ilo-button ilo-button--outlined yourRippleEffectClass" aria-label="play podcast">
            PodcastingPlatform     <div class="ilo-button__ripple"> </div>
              <span class="ilo-button__label"> ${this.state.time}</span>
            </button>
          </div>
        </div>
      </div>
        `
    }
}

/***/ }),

/***/ "./components/podcastingPlatform.js":
/*!******************************************!*\
  !*** ./components/podcastingPlatform.js ***!
  \******************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* binding */ PodcastingPlatform)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./parser.js */ "./components/parser.js");
/* harmony import */ var _podcasts_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./podcasts.js */ "./components/podcasts.js");
/* harmony import */ var _podcast_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./podcast.js */ "./components/podcast.js");
/* harmony import */ var _player_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./player.js */ "./components/player.js");





class PodcastingPlatform {
    constructor(url) {
      this.url = url;
      this.podcasts = new _podcasts_js__WEBPACK_IMPORTED_MODULE_1__.default();
      this.player = new _player_js__WEBPACK_IMPORTED_MODULE_3__.default();
    }
  
    getItems() {
      return new Promise((resolve, reject) => {
        fetch(this.url)
        .then((response) => {
          if (!response.ok) {
            reject("Network response was not ok");
          }
          return response.text();
        })
        .then((str) => (0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.xmlParse)(str))
        .then((data) => {
          const items = data.querySelectorAll("item");
  
          const podcasts = [...items].map((item, index) => {
            const title = item.querySelector("title").textContent;
  
            const descriptionNode = (0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.htmlParse)(item.querySelector("description").textContent);
            const dateNode = item.querySelector("pubDate");
  
            const description = descriptionNode.querySelector('strong')?.textContent ?? '';
            const date = dayjs().to(dayjs(dateNode.textContent));
  
            const image = item.querySelector("image");
            const artwork = image.getAttribute("href");
  
            const link = item.querySelector("enclosure");
  
            let duration = item.querySelector("duration").innerHTML;
            duration = Math.round(duration / 60);
  
            const time = 2; // debería consultar la base de datos
            const materialLink = null; // debería consultar la base de datos
            const state = _podcast_js__WEBPACK_IMPORTED_MODULE_2__.PODCAST_STATE.initial;
  
            return new _podcast_js__WEBPACK_IMPORTED_MODULE_2__.default(
              title,
              description,
              date,
              artwork,
              link,
              duration,
              materialLink,
              time,
              index,
              state
            );
          });
  
          resolve(podcasts);
        })
        .catch((error) => {
          console.error("Hubo un error con la operacion fetch", error);
          this.renderError(error);
        });
      })
    }

    renderError(){
        const container = document.getElementById("podcastsContainer");
        container.insertAdjacentHTML("afterend", ` <h1> ¡Perdón! Tenemos algún problema y momentaneamente el sitio no se encuentra disponible </h1>`)
    }
  }

/***/ }),

/***/ "./components/podcasts.js":
/*!********************************!*\
  !*** ./components/podcasts.js ***!
  \********************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "ORDER_STATE": () => (/* binding */ ORDER_STATE),
/* harmony export */   "default": () => (/* binding */ Podcasts)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./parser.js */ "./components/parser.js");
/* harmony import */ var _podcast_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./podcast.js */ "./components/podcast.js");
/* harmony import */ var _player_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./player.js */ "./components/player.js");




const ORDER_STATE = {
  newFirst: "newFirst",
  oldFirst: "oldFirst"
}

class Podcasts {
  constructor() {
    this.podcasts = [];
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

    console.warn("Podcasts.reorganize recive something wrong:", how);
    return;
  }

  render() {
    return this.podcasts.map(podcast => podcast.render())
  }
}





/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => (Object.prototype.hasOwnProperty.call(obj, prop))
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!******************!*\
  !*** ./index.js ***!
  \******************/
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _components_parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./components/parser.js */ "./components/parser.js");
/* harmony import */ var _components_podcasts_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./components/podcasts.js */ "./components/podcasts.js");
/* harmony import */ var _components_podcast_js__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./components/podcast.js */ "./components/podcast.js");
/* harmony import */ var _components_player_js__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./components/player.js */ "./components/player.js");
/* harmony import */ var _components_podcastingPlatform_js__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./components/podcastingPlatform.js */ "./components/podcastingPlatform.js");






const RSS_URL = `https://anchor.fm/s/2fe1f008/podcast/rss`;
const podcasts = [];


// Wait until your DOM is fully loaded
document.addEventListener("DOMContentLoaded", function () {
    const podcastingPlatform = new _components_podcastingPlatform_js__WEBPACK_IMPORTED_MODULE_4__.default(RSS_URL);
    console.log(podcastingPlatform);
  
    podcastingPlatform.getItems().then(podcasts => {
      podcastingPlatform.podcasts = podcasts;
    });
  })
})();

/******/ })()
;