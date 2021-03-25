/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./components/PlayButton/PlayButton.js":
/*!*********************************************!*\
  !*** ./components/PlayButton/PlayButton.js ***!
  \*********************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (/* binding */ playButton)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../parser.js */ "./components/parser.js");
/* harmony import */ var _podcast_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../podcast.js */ "./components/podcast.js");
/* harmony import */ var _templates_initial_html__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./templates/initial.html */ "./components/PlayButton/templates/initial.html");
/* harmony import */ var _templates_finished_html__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./templates/finished.html */ "./components/PlayButton/templates/finished.html");
/* harmony import */ var _templates_playing_html__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./templates/playing.html */ "./components/PlayButton/templates/playing.html");
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }





 //arcs with svg with rounded lines.

function polarToCartesian(centerX, centerY, radius, angleInDegrees) {
  var angleInRadians = (angleInDegrees - 90) * Math.PI / 180.0;
  return {
    x: centerX + radius * Math.cos(angleInRadians),
    y: centerY + radius * Math.sin(angleInRadians)
  };
}

var ArcIcon = /*#__PURE__*/function () {
  function ArcIcon(angle, size, radius) {
    _classCallCheck(this, ArcIcon);

    this.angle = angle;
    this.size = size;
    this.radius = radius;
  }

  _createClass(ArcIcon, [{
    key: "describeArc",
    value: function describeArc(x, y, radius, startAngle, endAngle) {
      var start = polarToCartesian(x, y, radius, endAngle);
      var end = polarToCartesian(x, y, radius, startAngle);
      var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";
      var d = ["M", start.x, start.y, "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y].join(" ");
      return d;
    }
  }, {
    key: "render",
    value: function render() {
      return this.describeArc(this.size / 2, this.size / 2, 0, this.angle);
    }
  }]);

  return ArcIcon;
}();

var playButton = /*#__PURE__*/function () {
  function playButton(state) {
    _classCallCheck(this, playButton);

    this.state = state;
  }

  _createClass(playButton, [{
    key: "render",
    value: function render(number) {
      var name = "playButtonContainer-" + number;

      var _playButton = document.createElement(name);

      console.log("template_initial:", _templates_initial_html__WEBPACK_IMPORTED_MODULE_2__.default);

      switch (this.state.status) {
        case _podcast_js__WEBPACK_IMPORTED_MODULE_1__.PODCAST_STATE.initial:
          _playButton.insertAdjacentHTML('beforeend', _templates_initial_html__WEBPACK_IMPORTED_MODULE_2__.default);

          break;

        case _podcast_js__WEBPACK_IMPORTED_MODULE_1__.PODCAST_STATE.pause:
        case _podcast_js__WEBPACK_IMPORTED_MODULE_1__.PODCAST_STATE.stopped:
          var arc = ArcIcon(this.state.timeAngle, 24, 9.09);
          var timeleft = "quedan " + this.state.timeleft + "minutos";

          _playButton.appendChild((0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.htmlParse)("<button class=\"ilo-button ilo-button--outlined yourRippleEffectClass\">\n                            <svg class=\"ilo-button-icon\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" aria-label=\"play podcast\">\n                                ".concat(arc, "\n                                <path d=\"M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z\" fill=\"#0078D4\"></path>\n                            </svg>\n                            <span class=\"ilo-button__label\">").concat(timeleft, "</span>\n                        </button>")));

          break;

        case _podcast_js__WEBPACK_IMPORTED_MODULE_1__.PODCAST_STATE.playing:
          _playButton.appendChild((0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.htmlParse)(_templates_playing_html__WEBPACK_IMPORTED_MODULE_4__.default));

          break;

        case _podcast_js__WEBPACK_IMPORTED_MODULE_1__.PODCAST_STATE.finished:
          _playButton.appendChild((0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.htmlParse)(_templates_finished_html__WEBPACK_IMPORTED_MODULE_3__.default));

          break;
      }

      console.log("holis", _playButton);
      return _playButton.innerHTML;
    }
  }]);

  return playButton;
}();



/***/ }),

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
var parser = new DOMParser();
var xmlParse = function xmlParse(text) {
  return parser.parseFromString(text, 'text/xml');
};
var htmlParse = function htmlParse(text) {
  return parser.parseFromString(text, 'text/html');
};

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
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }




var Player = function Player() {
  _classCallCheck(this, Player);
};



/***/ }),

/***/ "./components/podcast.js":
/*!*******************************!*\
  !*** ./components/podcast.js ***!
  \*******************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "PODCAST_STATE": () => (/* binding */ PODCAST_STATE),
/* harmony export */   "PodcastState": () => (/* binding */ PodcastState),
/* harmony export */   "default": () => (/* binding */ Podcast)
/* harmony export */ });
/* harmony import */ var _parser_js__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./parser.js */ "./components/parser.js");
/* harmony import */ var _PlayButton_PlayButton_js__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./PlayButton/PlayButton.js */ "./components/PlayButton/PlayButton.js");
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }



var PODCAST_STATE = {
  initial: "initial",
  playing: "playing",
  stopped: "stopped",
  pause: "pause",
  finished: "finished"
};
var PodcastState = /*#__PURE__*/function () {
  function PodcastState(state, time, duration) {
    _classCallCheck(this, PodcastState);

    this._state = state;
    this.time = time;
    this.duration = duration;
  }

  _createClass(PodcastState, [{
    key: "timeLeft",
    get: function get() {
      return this.duration - this.time;
    }
  }, {
    key: "timeAngle",
    get: function get() {
      return this.time / this.duration * 360;
    }
  }, {
    key: "status",
    get: function get() {
      return this._state;
    }
  }, {
    key: "startPlaying",
    value: function startPlaying() {
      this._state = PODCAST_STATE.playing;
    }
  }, {
    key: "stop",
    value: function stop() {
      this._state = PODCAST_STATE.stopped;
    }
  }, {
    key: "pause",
    value: function pause() {
      this._state = PODCAST_STATE.pause;
    }
  }, {
    key: "reset",
    value: function reset() {
      this._state = PODCAST_STATE.initial;
    }
  }]);

  return PodcastState;
}();

var Podcast = /*#__PURE__*/function () {
  function Podcast(title, description, date, artwork, link, duration, materialLink, time, number, state) {
    _classCallCheck(this, Podcast);

    this.props = Object.freeze({
      title: title,
      description: description,
      date: date,
      duration: duration,
      materialLink: materialLink,
      artwork: artwork,
      link: link,
      number: number
    });

    if (state === PODCAST_STATE.finished) {
      this.state = new PodcastState(PODCAST_STATE.finished, duration, duration);
    } else {
      this.state = new PodcastState(PODCAST_STATE.initial, time, duration);
    }

    this.playButton = new _PlayButton_PlayButton_js__WEBPACK_IMPORTED_MODULE_1__.default(this.state);
  }

  _createClass(Podcast, [{
    key: "render",
    value: function render() {
      return "\n        <div class=\"podcastCard\" id=\"podcast".concat(this.props.number, "\">\n        <div class=\"podcastCard__artworkContainer\">\n          <img class=\"podcast__artwork\" src=\"").concat(this.props.artwork, "\" />\n        </div>\n        <div class=\"podcastCard__container\">\n          <p class=\"podcastCard__date\">").concat(this.props.date, "</p>\n  \n          <h3 class=\"podcastCard__title\">").concat(this.props.title, "</h3>\n          <p class=\"podcastCard__description\">").concat(this.props.description, "</p>\n          <div class=\"podcastCard__buttons\">\n            <button class=\"ilo-button ilo-button--contained yourRippleEffectClass\">\n              <svg class=\"ilo-button-icon\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" aria-hidden=\"true\">\n                <path d=\"M16.59 9H15V4C15 3.45 14.55 3 14 3H10C9.45 3 9 3.45 9 4V9H7.41C6.52 9 6.07 10.08 6.7 10.71L11.29 15.3C11.68 15.69 12.31 15.69 12.7 15.3L17.29 10.71C17.92 10.08 17.48 9 16.59 9ZM5 19C5 19.55 5.45 20 6 20H18C18.55 20 19 19.55 19 19C19 18.45 18.55 18 18 18H6C5.45 18 5 18.45 5 19Z\" fill=\"white\" />\n              </svg>\n              <div class=\"ilo-button__ripple contained\"></div>\n              <span class=\"ilo-button__label\"> material docente </span>\n            </button>\n            ").concat(this.playButton.render(this.props.number), "\n          </div>\n        </div>\n      </div>\n        ");
    }
  }]);

  return Podcast;
}();



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
function _toConsumableArray(arr) { return _arrayWithoutHoles(arr) || _iterableToArray(arr) || _unsupportedIterableToArray(arr) || _nonIterableSpread(); }

function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method."); }

function _unsupportedIterableToArray(o, minLen) { if (!o) return; if (typeof o === "string") return _arrayLikeToArray(o, minLen); var n = Object.prototype.toString.call(o).slice(8, -1); if (n === "Object" && o.constructor) n = o.constructor.name; if (n === "Map" || n === "Set") return Array.from(o); if (n === "Arguments" || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n)) return _arrayLikeToArray(o, minLen); }

function _iterableToArray(iter) { if (typeof Symbol !== "undefined" && Symbol.iterator in Object(iter)) return Array.from(iter); }

function _arrayWithoutHoles(arr) { if (Array.isArray(arr)) return _arrayLikeToArray(arr); }

function _arrayLikeToArray(arr, len) { if (len == null || len > arr.length) len = arr.length; for (var i = 0, arr2 = new Array(len); i < len; i++) { arr2[i] = arr[i]; } return arr2; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }






var PodcastingPlatform = /*#__PURE__*/function () {
  function PodcastingPlatform(url) {
    _classCallCheck(this, PodcastingPlatform);

    this.url = url;
    this.podcasts = new _podcasts_js__WEBPACK_IMPORTED_MODULE_1__.default();
    this.player = new _player_js__WEBPACK_IMPORTED_MODULE_3__.default();
  }

  _createClass(PodcastingPlatform, [{
    key: "getItems",
    value: function getItems() {
      var _this = this;

      return new Promise(function (resolve, reject) {
        fetch(_this.url).then(function (response) {
          if (!response.ok) {
            reject("Network response was not ok");
          }

          return response.text();
        }).then(function (str) {
          return (0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.xmlParse)(str);
        }).then(function (data) {
          var items = data.querySelectorAll("item");

          var podcasts = _toConsumableArray(items).map(function (item, index) {
            var _descriptionNode$quer, _descriptionNode$quer2;

            var title = item.querySelector("title").textContent;
            var descriptionNode = (0,_parser_js__WEBPACK_IMPORTED_MODULE_0__.htmlParse)(item.querySelector("description").textContent);
            var dateNode = item.querySelector("pubDate");
            var description = (_descriptionNode$quer = (_descriptionNode$quer2 = descriptionNode.querySelector('strong')) === null || _descriptionNode$quer2 === void 0 ? void 0 : _descriptionNode$quer2.textContent) !== null && _descriptionNode$quer !== void 0 ? _descriptionNode$quer : '';
            var date = dayjs().to(dayjs(dateNode.textContent));
            var image = item.querySelector("image");
            var artwork = image.getAttribute("href");
            var link = item.querySelector("enclosure");
            var duration = item.querySelector("duration").innerHTML;
            duration = Math.round(duration / 60);
            var time = 2; // debería consultar la base de datos

            var materialLink = null; // debería consultar la base de datos

            var state = _podcast_js__WEBPACK_IMPORTED_MODULE_2__.PODCAST_STATE.initial;
            return new _podcast_js__WEBPACK_IMPORTED_MODULE_2__.default(title, description, date, artwork, link, duration, materialLink, time, index, state);
          });

          _this.podcasts = new _podcasts_js__WEBPACK_IMPORTED_MODULE_1__.default(podcasts);
          resolve();
        })["catch"](function (error) {
          console.error("Hubo un error con la operacion fetch", error);

          _this.renderError(error);
        });
      });
    }
  }, {
    key: "renderError",
    value: function renderError() {
      var container = document.getElementById("podcastsContainer");
      container.insertAdjacentHTML("afterend", " <h1> \xA1Perd\xF3n! Tenemos alg\xFAn problema y momentaneamente el sitio no se encuentra disponible </h1>");
    }
  }]);

  return PodcastingPlatform;
}();



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
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } }

function _createClass(Constructor, protoProps, staticProps) { if (protoProps) _defineProperties(Constructor.prototype, protoProps); if (staticProps) _defineProperties(Constructor, staticProps); return Constructor; }




var ORDER_STATE = {
  newFirst: "newFirst",
  oldFirst: "oldFirst"
};

var Podcasts = /*#__PURE__*/function () {
  function Podcasts() {
    var podcasts = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : [];

    _classCallCheck(this, Podcasts);

    this.podcasts = podcasts;
    this.order = ORDER_STATE.oldFirst;
  }

  _createClass(Podcasts, [{
    key: "add",
    value: function add(podcast) {
      this.podcasts.add(podcast);
    }
  }, {
    key: "sort",
    value: function sort(how) {
      if (how === this.order) {
        return;
      }

      var availableSorts = [ORDER_STATE.newFirst, ORDER_STATE.oldFirst];

      if (availableSorts.includes(how)) {
        this.podcasts.reverse();
        return;
      }

      console.warn("Podcasts.reorganize recive something wrong:", how);
      return;
    }
  }, {
    key: "render",
    value: function render() {
      console.log("podcasts.render()", this.podcasts);
      return this.podcasts.map(function (podcast) {
        return podcast.render();
      });
    }
  }]);

  return Podcasts;
}();



/***/ }),

/***/ "./components/PlayButton/templates/finished.html":
/*!*******************************************************!*\
  !*** ./components/PlayButton/templates/finished.html ***!
  \*******************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
// Module
var code = "<button class=\"ilo-button ilo-button--outlined yourRippleEffectClass\">\n    <svg class=\"ilo-button-icon\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\"\n      xmlns=\"http://www.w3.org/2000/svg\">\n      <path fill-rule=\"evenodd\" clip-rule=\"evenodd\"\n        d=\"M12 20.1818C13.0745 20.1818 14.1384 19.9702 15.131 19.559C16.1237 19.1478 17.0257 18.5452 17.7854 17.7854C18.5452 17.0257 19.1478 16.1237 19.559 15.131C19.9702 14.1384 20.1818 13.0745 20.1818 12C20.1818 10.9255 19.9702 9.86162 19.559 8.86895C19.1478 7.87629 18.5452 6.97433 17.7854 6.21458C17.0257 5.45483 16.1237 4.85216 15.131 4.44099C14.1384 4.02981 13.0745 3.81818 12 3.81818C9.83005 3.81818 7.74897 4.68019 6.21458 6.21458C4.68019 7.74897 3.81818 9.83005 3.81818 12C3.81818 14.17 4.68019 16.251 6.21458 17.7854C7.74897 19.3198 9.83005 20.1818 12 20.1818V20.1818ZM12 22C17.5227 22 22 17.5227 22 12C22 6.47727 17.5227 2 12 2C6.47727 2 2 6.47727 2 12C2 17.5227 6.47727 22 12 22Z\"\n        fill=\"#D0D0D0\" />\n      <path d=\"M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z\" fill=\"#D0D0D0\" />\n      <circle cx=\"18\" cy=\"18\" r=\"6\" fill=\"white\" />\n      <path\n        d=\"M16.5 20.0852L14.765 18.3502C14.57 18.1552 14.255 18.1552 14.06 18.3502C13.865 18.5452 13.865 18.8602 14.06 19.0552L16.15 21.1452C16.345 21.3402 16.66 21.3402 16.855 21.1452L22.145 15.8552C22.34 15.6602 22.34 15.3452 22.145 15.1502C21.95 14.9552 21.635 14.9552 21.44 15.1502L16.5 20.0852Z\"\n        fill=\"#3F8F3D\" />\n    </svg>\n    <span class=\"ilo-button__label\">enabled</span>\n  </button>";
// Exports
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (code);

/***/ }),

/***/ "./components/PlayButton/templates/initial.html":
/*!******************************************************!*\
  !*** ./components/PlayButton/templates/initial.html ***!
  \******************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
// Module
var code = "<button class=\"ilo-button ilo-button--outlined yourRippleEffectClass\">\n    <svg class=\"ilo-button-icon\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" aria-label=\"play podcast\">\n      <path id=\"arc1\" fill=\"none\" stroke=\"#0078D4\" stroke-width=\"1.82\" d=\"M 11.841357625485093 2.911384451028404 A 9.09 9.09 0 1 0 12 2.91\"></path>\n      <path d=\"M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z\" fill=\"#0078D4\"></path>\n    </svg>\n    <span class=\"ilo-button__label\">enabled</span>\n</button>";
// Exports
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (code);

/***/ }),

/***/ "./components/PlayButton/templates/playing.html":
/*!******************************************************!*\
  !*** ./components/PlayButton/templates/playing.html ***!
  \******************************************************/
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "default": () => (__WEBPACK_DEFAULT_EXPORT__)
/* harmony export */ });
// Module
var code = "<button class=\"ilo-button ilo-button--outlined yourRippleEffectClass\">\n    <svg id=\"svgSound-playing0\" class=\"svgSound-playing\" style=\"display: block;\" height=\"24px\" stroke-width=\"4\" viewBox=\"-12 -12 24 24\">\n        <g jsname=\"HGYFec\">\n          <line class=\"leftLine\" x1=\"-6\" x2=\"-6\" y1=\"8\" y2=\"-8\"></line>\n          <line class=\"middleLine\" x1=\"0\" x2=\"0\" y1=\"8\" y2=\"-8\"></line>\n          <line class=\"rightLine\" x1=\"6\" x2=\"6\" y1=\"8\" y2=\"-8\"></line>\n        </g>\n    </svg>\n    <span class=\"ilo-button__label\"> reproduciendo </span>\n</button>\n";
// Exports
/* harmony default export */ const __WEBPACK_DEFAULT_EXPORT__ = (code);

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
function asyncGeneratorStep(gen, resolve, reject, _next, _throw, key, arg) { try { var info = gen[key](arg); var value = info.value; } catch (error) { reject(error); return; } if (info.done) { resolve(value); } else { Promise.resolve(value).then(_next, _throw); } }

function _asyncToGenerator(fn) { return function () { var self = this, args = arguments; return new Promise(function (resolve, reject) { var gen = fn.apply(self, args); function _next(value) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "next", value); } function _throw(err) { asyncGeneratorStep(gen, resolve, reject, _next, _throw, "throw", err); } _next(undefined); }); }; }






var RSS_URL = "https://anchor.fm/s/2fe1f008/podcast/rss";
var podcasts = []; // Wait until your DOM is fully loaded

document.addEventListener("DOMContentLoaded", /*#__PURE__*/_asyncToGenerator( /*#__PURE__*/regeneratorRuntime.mark(function _callee() {
  var podcastingPlatform, podcasts, podcastHTML, renderOutput;
  return regeneratorRuntime.wrap(function _callee$(_context) {
    while (1) {
      switch (_context.prev = _context.next) {
        case 0:
          podcastingPlatform = new _components_podcastingPlatform_js__WEBPACK_IMPORTED_MODULE_4__.default(RSS_URL);
          _context.next = 3;
          return podcastingPlatform.getItems();

        case 3:
          podcasts = _context.sent;
          podcastHTML = document.getElementById("podcastsContainer");
          renderOutput = document.createElement("podcasting-platform");
          renderOutput.innerHTML = podcastingPlatform.podcasts.render();
          podcastHTML.appendChild(renderOutput);

        case 8:
        case "end":
          return _context.stop();
      }
    }
  }, _callee);
})));
})();

/******/ })()
;