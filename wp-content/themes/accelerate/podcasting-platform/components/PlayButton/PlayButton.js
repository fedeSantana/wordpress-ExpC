import createElement from '../utils/createElement.js'
import { xmlParse, htmlParse } from '../parser.js'
import Podcast, { PodcastState, PODCAST_STATE } from '../podcast.js'

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

        const start = polarToCartesian(x, y, radius, endAngle);
        const end = polarToCartesian(x, y, radius, startAngle);

        const largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";
        console.log("startAngle", startAngle, "endAngle", endAngle);
        const d = `M ${start.x} ${start.y} A ${radius} ${radius} 0 ${largeArcFlag} 0 ${end.x} ${end.y}`;

        const output = (
            <path 
            id="arc1"
            fill="none" 
            stroke="#0078D4" 
            stroke-width="1.82" 
            d={d}>
            </path>);

        return output;
        /*
        return ("M", { start.x },)
        var d = [
            "M", start.x, start.y,
            "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
        ].join(" ");

        return d;
        */
    }

    render() {
        return this.describeArc(this.size / 2, this.size / 2, 9.09,  0, this.angle);
    }
}

const ICONS = {
    initial: (
        <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" aria-label="play podcast">
            <path id="arc1" fill="none" stroke="#0078D4" stroke-width="1.82" d="M 11.841357625485093 2.911384451028404 A 9.09 9.09 0 1 0 12 2.91"></path>
            <path d="M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z" fill="#0078D4"></path>
        </svg>),

    playing: (
        <svg id="svgSound-playing0" class="svgSound-playing" style="display: block;" height="24px" stroke-width="4" viewBox="-12 -12 24 24">
            <g jsname="HGYFec">
                <line class="leftLine" x1="-6" x2="-6" y1="8" y2="-8"></line>
                <line class="middleLine" x1="0" x2="0" y1="8" y2="-8"></line>
                <line class="rightLine" x1="6" x2="6" y1="8" y2="-8"></line>
            </g>
        </svg>),
    finished: (
        <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" fill="none"
            xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" clip-rule="evenodd"
                d="M12 20.1818C13.0745 20.1818 14.1384 19.9702 15.131 19.559C16.1237 19.1478 17.0257 18.5452 17.7854 17.7854C18.5452 17.0257 19.1478 16.1237 19.559 15.131C19.9702 14.1384 20.1818 13.0745 20.1818 12C20.1818 10.9255 19.9702 9.86162 19.559 8.86895C19.1478 7.87629 18.5452 6.97433 17.7854 6.21458C17.0257 5.45483 16.1237 4.85216 15.131 4.44099C14.1384 4.02981 13.0745 3.81818 12 3.81818C9.83005 3.81818 7.74897 4.68019 6.21458 6.21458C4.68019 7.74897 3.81818 9.83005 3.81818 12C3.81818 14.17 4.68019 16.251 6.21458 17.7854C7.74897 19.3198 9.83005 20.1818 12 20.1818V20.1818ZM12 22C17.5227 22 22 17.5227 22 12C22 6.47727 17.5227 2 12 2C6.47727 2 2 6.47727 2 12C2 17.5227 6.47727 22 12 22Z"
                fill="#D0D0D0" />
            <path d="M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z" fill="#D0D0D0" />
            <circle cx="18" cy="18" r="6" fill="white" />
            <path
                d="M16.5 20.0852L14.765 18.3502C14.57 18.1552 14.255 18.1552 14.06 18.3502C13.865 18.5452 13.865 18.8602 14.06 19.0552L16.15 21.1452C16.345 21.3402 16.66 21.3402 16.855 21.1452L22.145 15.8552C22.34 15.6602 22.34 15.3452 22.145 15.1502C21.95 14.9552 21.635 14.9552 21.44 15.1502L16.5 20.0852Z"
                fill="#3F8F3D" />
        </svg>),

    pause: (angle, size, diameter) => {
        const arc = new ArcIcon(angle, size, diameter);
        console.log("arc.render():", arc.render());
        return (
            <svg class="ilo-button-icon" width="24" height="24" viewBox="0 0 24 24" aria-label="play podcast">
                {arc.render()}
                <path d="M15.6359 11.9998L10.1814 15.9362V8.06348L15.6359 11.9998Z" fill="#0078D4"></path>
            </svg>)    // ...is what `this` is here.
    }
}

export default class playButton {
    constructor(state) {
        this.state = state;
    }

    render(number) {
        let playButton;
        console.log("state:", this.state.status);
        switch (this.state.status) {

            case PODCAST_STATE.initial:
                playButton = (
                    <button class="ilo-button ilo-button--outlined yourRippleEffectClass" aria-label="play podcast">
                        {ICONS.initial}
                        <span class="ilo-button__label"> {this.state.duration} minutos</span>
                    </button>);
                break;
            case PODCAST_STATE.pause:
            case PODCAST_STATE.stopped:
                console.log("this.state.timeAngle", this.state.timeAngle);
                const icon = ICONS.pause(this.state.timeAngle, 24, 9.09);
                playButton = (
                    <button class="ilo-button ilo-button--outlined yourRippleEffectClass" aria-label="play podcast">
                        {icon}
                        <span class="ilo-button__label"> quedan {this.state.timeLeft} minutos</span>
                    </button>
                );
                break;

            case PODCAST_STATE.playing:
                playButton = (
                    <button class="ilo-button ilo-button--outlined yourRippleEffectClass">
                        {ICONS.playing}
                        <span class="ilo-button__label"> reproduciendo </span>
                    </button>
                );
                break;

            case PODCAST_STATE.finished:
                playButton = (
                    <button class="ilo-button ilo-button--outlined yourRippleEffectClass">
                        {ICONS.finished}
                        <span class="ilo-button__label"> Finalizado </span>
                    </button>
                );
                break;
        }

        return playButton.outerHTML;
    }


}