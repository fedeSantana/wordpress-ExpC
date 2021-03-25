import createElement from '../utils/createElement.js'
import { xmlParse, htmlParse } from '../parser.js'
import Podcast, { PodcastState, PODCAST_STATE } from '../podcast.js'
import template_initial from './templates/initial.html';
import template_finished from './templates/finished.html';
import template_playing from './templates/playing.html';

//arcs with svg with rounded lines.

//const test = (<div><p>Prueba</p></div>);

//console.log(test);

function polarToCartesian(centerX, centerY, radius, angleInDegrees) {
    var angleInRadians = (angleInDegrees - 90) * Math.PI / 180.0;

    return {
        x: centerX + (radius * Math.cos(angleInRadians)),
        y: centerY + (radius * Math.sin(angleInRadians))
    };
}

class ArcIcon {
    constructor(angle, size, radius) {
        this.angle = angle;
        this.size = size;
        this.radius = radius;
    }

    describeArc(x, y, radius, startAngle, endAngle) {

        var start = polarToCartesian(x, y, radius, endAngle);
        var end = polarToCartesian(x, y, radius, startAngle);

        var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";

        var d = [
            "M", start.x, start.y,
            "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
        ].join(" ");

        return d;
    }

    render() {
        return this.describeArc(this.size / 2, this.size / 2, 0, this.angle);
    }
}

export default class playButton {
    constructor(state) {
        this.state = state;
    }

    render(number) {
        const name = "playButtonContainer-" + number;
        const playButton = document.createElement(name);
        console.log("template_initial:", template_initial);

        switch (this.state.status) {
            case PODCAST_STATE.initial:
                playButton.insertAdjacentHTML( 'beforeend', template_initial );
                break;
            case PODCAST_STATE.pause:
            case PODCAST_STATE.stopped:
                const arc = ArcIcon(this.state.timeAngle, 24, 9.09);
                const timeleft = "quedan " + this.state.timeleft + "minutos";

                playButton.appendChild(
                    htmlParse(
                        `<button class="ilo-button ilo-button--outlined yourRippleEffectClass">
                            <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" aria-label="play podcast">
                                ${arc}
                                <path d="M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z" fill="#0078D4"></path>
                            </svg>
                            <span class="ilo-button__label">${timeleft}</span>
                        </button>`
                    )
                );
                break;

            case PODCAST_STATE.playing:
                playButton.appendChild(htmlParse(template_playing));
                break;

            case PODCAST_STATE.finished:
                playButton.appendChild(htmlParse(template_finished));
                break;
        }

        console.log("holis", playButton);
        return playButton.innerHTML;
    }


}