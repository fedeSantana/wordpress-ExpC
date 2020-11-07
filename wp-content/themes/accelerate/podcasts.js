const materialLinks = [
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente11.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente10.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente9.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente8.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente7.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente6.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente5.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente4.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente3.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente2.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente1.pdf",
  "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente1.pdf",
]

const socialMediaLinks = {
  youtube: "https://www.youtube.com/playlist?list=PLWLB02c4hhG2TWsNKNny1xH8LMNg0vkUu",
  spotify: "https://open.spotify.com/show/3YmEDGnww1YKpld1d0UxCr",
};



let podcast = {
  title: "null",
  description: "null",
  date: "null",
  duration: "null",
  materialLink: "null",
  artwork: "null",
  show: "true",
  link: null,
  soundButton: null,
  svgSoundButton: {
    pley: null,
    playing: null,
  },
};

let reproductorProps = {
  style: null,
  artwork: null,
  title: null,
  restTime: null,
  source: null,
  audio: null,
  reproductor: null,
  playButton: null,
};


let props = {
  podcasts: [], // array de podcast
  reproductor: reproductorProps,
  quantityPodcasts: 0,
  socialMediaLinks: socialMediaLinks,
};

let state = {
  state: "default",
  subState: "none",
  id: 0,
  podcastPlaying: null,
  timePodcast: [],
  volume: 50,
  reproductorActive: false,
  order: "most recent first",
  playButtonFunction: "pause(reproductor.audio,state)",
  restTime: null,
  timerRestTimeId: null,
  timerBar: null,
  barAmount: 0,
};

const RSS_URL = `https://anchor.fm/s/2fe1f008/podcast/rss`;

/* Una vez cargado el RSS, llenar el DOM con su contenido.*/
function generateDOM(props) {
  let podcasts = props.podcasts;
  let html = ``;

  props.podcasts.forEach((tempPodcast, podcastNumber) => {
    html += `
    <div class="podcast" id="podcast${podcastNumber}">
      <p class="date"> ${tempPodcast.date} </p>
      <h3 class="podcastTitle"> ${tempPodcast.title} </h3>
      <p class="podcastDescription">${tempPodcast.description}</p>
      <div class="container-podcast-actions">
        <button id="material${podcastNumber}" onclick="recolectDataMaterialDownlad(this, props.podcasts)" class="primaryButton"> <a href="${tempPodcast.materialLink}"> Descargar material </a> </button>
        <button id="audioButton${podcastNumber}" class="audioButton" alt="play podcast" onclick="play (this, state, props)">`;

    html += `
    <svg id="svgSound-play${podcastNumber}" class="svgSound-play" height="24px" stroke-width="2" viewBox="-12 -12 24 24" width="24px">
      <g>
        <circle class="fQDE6c" cx="0" cy="0" r="9"></circle>
        <path class="ltbPdb" d="M -2,4.5 l6-4.5-6-4.5v9z"></path>
      </g>
    </svg>
    <svg id="svgSound-playing${podcastNumber}" class="svgSound-playing" style="display:none"  height="24px" stroke-width="4" viewBox="-12 -12 24 24">
      <g jsname="HGYFec">
        <line class="leftLine" x1="-6" x2="-6" y1="8" y2="-8" class="gow9Ke"></line>
        <line class="middleLine" x1="0" x2="0" y1="8" y2="-8" class="VeqS6e"></line>
        <line class="rightLine" x1="6" x2="6" y1="8" y2="-8" class="Dbqfsb"></line>
      </g>
    </svg>`;

    html += `
    ${Math.round(tempPodcast.duration / 60)} min
        </button>
      </div>    
    </div>
    <div class="separator"> </div>`;
  });

  let podcastsContainer = document.getElementById("podcastsContainer");
  podcastsContainer.insertAdjacentHTML("afterend", html);
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
      auxPodcast = Object.create(podcast);

      auxPodcast.title = item.querySelector("title").textContent;

      let description = item.querySelector("description").textContent;
      let temp = document.createElement("div");
      temp.innerHTML = description;
      
      description = temp.querySelector("strong");
      if (!description){
        description = " ";
        auxPodcast.description = description;
      }
      else {
        auxPodcast.description = description.textContent;
      }
     
      auxPodcast.date = item.querySelector("pubDate").innerHTML;

      let image = item.querySelector("image");
      let imageRef = image.getAttribute("href");
      auxPodcast.artwork = imageRef;

      let link = item.querySelector("enclosure");
      auxPodcast.link = link;

      let duration = item.querySelector("duration").innerHTML;
      duration = duration;

      auxPodcast.duration = duration;
      props.podcasts.push(auxPodcast);
      props.quantityPodcasts++;

      // Lleno los arrays del state de forma vacia para arrancar.
    });
    let reproductor = document.getElementById("reproductor");

    props.reproductor.artwork = document.getElementById(
      "reproductorPodcastArtwork"
    ); // intente reproductor.getElementById y no anduvo.
    props.reproductor.title = document.getElementById(
      "reproductorPodcastTitle"
    );
    props.reproductor.restTime = document.getElementById(
      "reproductorPodcastRestTime"
    );
    props.reproductor.source = document.getElementById("podcastLink");
    props.reproductor.audio = document.getElementById("podcastAudio");
    props.reproductor.style = reproductor.style;
    props.reproductor.playButton = document.getElementById("playButton");
    for (let i = 0; i < props.podcasts.length; i++) {
      if (i <= 4){ // Esto claramente no debería hacerse de esta forma.
        props.podcasts[i].materialLink = "https://expedicionciencia.org.ar/wp-content/uploads/2020/10/materialDocente" + (props.podcasts.length - 1 - i) + ".pdf";
      }

      else if (i > 4){
        props.podcasts[i].materialLink = "https://expedicionciencia.org.ar/wp-content/uploads/2020/09/materialDocente" + (props.podcasts.length - 1 - i) + ".pdf";
      }
      
    }
    generateDOM(props);

    for (let i = 0; i < props.podcasts.length; i++) {
      props.podcasts[i].soundButton = document.getElementById(
        "audioButton" + i
      );
      props.podcasts[i].svgSoundButton = document.getElementById(
        "audioButton" + i
      );
      props.podcasts[i].svgSoundButton.pley = document.getElementById(
        "svgSound-play" + i
      );
      props.podcasts[i].svgSoundButton.playing = document.getElementById(
        "svgSound-playing" + i
      );
      
    }
  })
  .catch((error) => {
    console.error("Hubo un error con la operacion fetch", error);
  });


/* onClick of button Play of any podcast. */
function playerRender(state, reproductor, podcast) {
  reproductor.artwork.src = podcast.artwork;
  reproductor.title.textContent = podcast.title;

  console.log(
    "playerRender(): timePodcast:",
    state.timePodcast,
    "podcast.duration:",
    podcast.duration
  );

  state.restTime = podcast.duration - state.timePodcast[state.id]; // ¿Está bien hacerlo acá?  Asegurarse.
  reproductor.restTime.textContent =
    "quedan " + Math.round(state.restTime / 60) + " min";
  reproductor.style.display = "block";

  if (state.timerRestTimeId === null) {
    console.log("Primera vez ejecuto Timers");
    startTimers(state, reproductor, podcast);
    return;
  }

  console.log("Cambio los timers por los nuevos.");
  clearTimers(state.timerRestTimeId, state.state.timerBar);

  startTimers(state, reproductor, podcast);
}

function startTimers(state, reproductor, podcast) {
  state.timerRestTimeId = window.setInterval(
    timerCount,
    60000,
    state,
    reproductor.restTime,
    podcast.duration
  );

  state.timerBar = window.setInterval(timerBar, 1000, state, podcast.duration);
}

function playerRenderStop(reproductor) {
  console.log("reproductor es:", reproductor);
  reproductor.style.display = "none";
  props.reproductor.audio.setAttribute("src", " "); // Queria que fuera en source pero no anda.
  return "default";
}

function playPodcast(state, reproductor, podcast) {
  state.podcastPlaying = podcast.title;
  reproductor.audio.setAttribute("src", podcast.link.getAttribute("url")); // Queria que fuera en source pero no anda.
  reproductor.source.setAttribute("legth", podcast.link.getAttribute("length"));
  reproductor.source.setAttribute("type", podcast.link.getAttribute("type"));

  resume(reproductor, state, podcast);

  return "playing" + state.id;
}

function resume(reproductor, state, podcast) {
  console.log("resume(): Voy a poner el audio.");

  if (state.timePodcast[state.id] === undefined) {
    // El tiempo siempre debe ser definido, aunque sea 0.
    console.log("Error, resume(): state.timePodcast[state.id] is undefined.");
  }

  reproductor.audio.currentTime = state.timePodcast[state.id]; // actualizo el tiempo actual.
  reproductor.audio.play(); // Ejecuto el audio.
  reproductor.playButton.setAttribute(
    // Preparo el atributo para que sea pausa en caso de que clickeen.
    "onclick",
    "pause(props.reproductor, state, props.podcasts[state.id])"
  );

  resumeButtonRender(reproductor, "pause");
  soundButtonRender(state.id, podcast, "playing");
}

function pause(reproductor, state, podcast) {
  console.log("pause(): I gonna pause baby");
  reproductor.audio.pause();
  state.timePodcast[state.id] = reproductor.audio.currentTime;
  reproductor.playButton.setAttribute(
    "onclick",
    "resume(props.reproductor, state, props.podcasts[state.id])"
  );

  clearTimers(state.timerRestTimeId, state.timerBar);
   soundButtonRender(state.id, podcast, "play");
  resumeButtonRender(reproductor, "resume");
}

function clearTimers(timerRest, timerBar) {
  window.clearInterval(timerRest);
  window.clearInterval(timerBar);
}

function resumeButtonRender(reproductor, buttonState) {
  const resumeButton = document.getElementById("resumeButton");
  const pauseButton = document.getElementById("pauseButton");
  // debería sacarlos de reproductor, pero no pude.

  if (buttonState === "resume") {
    resumeButton.setAttribute("style", "display:none");
    pauseButton.setAttribute("style", "display:block");
  } else if (buttonState === "pause") {
    resumeButton.setAttribute("style", "display:block");
    pauseButton.setAttribute("style", "display:none");
  } else {
    console.log(
      "resumeButtonRender error: resumeButtonState it's not play or playing"
    );
  }
}

function soundButtonRender(id, podcast, buttonState) {
  let soundButton = podcast.soundButton;
  let svgSoundButton = podcast.svgSoundButton;
  //animar el botón de play.

  if (buttonState === "playing") {
    svgSoundButton.pley.style.display = "none";
    svgSoundButton.playing.style.display = "block";
    soundButton.setAttribute("onclick", "stopPodcast(this, state, props)");
    soundButton.setAttribute("alt", "Stop podcast");
  } else if (buttonState == "play") {
    svgSoundButton.pley.style.display = "block";
    svgSoundButton.playing.style.display = "none";
    soundButton.setAttribute("onclick", "play(this, state, props)");
    soundButton.setAttribute("alt", "Play podcast");
  } else {
    console.log("error: svgSoundButtonState it's not play or playing");
  }
}

function play(soundButton, state, props) {
  let newId_temp = soundButton.id[soundButton.id.length - 1]; // last chapter is 0, first chapter is N.
  let newState_temp = "playing" + newId_temp;

  // Si no está activo el reproductor, es decir estoy en el estado "default",
  if (state.state === "default") {
    console.log("play(): El reproductor estaba apagado, ahora lo prenderé.");
    state.id = newId_temp; // actualizo el ID.
    state.state = "cargandoReproductor";
    if (state.timePodcast[state.id] === undefined) {
      // No debería ocurrir nunca.
      state.timePodcast[state.id] = 0;
    }
    state.reproductorActive = true;
    state.state = playPodcast(
      state,
      props.reproductor,
      props.podcasts[state.id]
    );
    playerRender(state, props.reproductor, props.podcasts[state.id]);
    soundButtonRender(state.id, props.podcasts[state.id], "playing");
  }

  // Si estoy en el estado playing y tocaron el botón, debe ser otro.
  else if (state.state != newState_temp) {
    console.log("play(): Pusiste otro podcast");
    state.state = "cargandoReproductor";

    soundButtonRender(state.id, props.podcasts[state.id], "play");
    console.log(
      "play(): detuviste el podcast en" + props.reproductor.audio.currentTime
    );
    state.timePodcast[state.id] = props.reproductor.audio.currentTime;

    state.id = newId_temp;
    if (state.timePodcast[state.id] === undefined) {
      state.timePodcast[state.id] = 0;
    }
    soundButtonRender(state.id, props.podcasts[state.id], "playing");

    state.state = playPodcast(
      state,
      props.reproductor,
      props.podcasts[state.id]
    );
    state.state = playerRender(
      state,
      props.reproductor,
      props.podcasts[state.id]
    );
  }
  // Este caso es bastante particular, pausaste la música y ahora clickeas el mismo botón, así que se reproduce la música.
  else if (state.state === newState_temp)
  {
    resume(props.reproductor, state, props.podcasts[state.id]);
  }
  
  else {
    console.log(
      "play(): ¿cómo llegaste acá? no deberías estar acá. state.state es:" +
        state.state
    );
  }
}

function stopPodcast(soundButton, state, props) {
  console.log("Detuviste el reproductor");
  state.state = playerRenderStop(props.reproductor);
  soundButtonRender(state.id, props.podcasts[state.id], "play"); // dejo el boton en el estilo "play"
  state.reproductorActive = false;

  clearTimers(state.timerRestTimeId, state.timerBar);
  state.timePodcast[state.id] = props.reproductor.audio.currentTime; // Guardo el valor por el que iba el podcast.
  state.podcastPlaying = "none";
}

function timerCount(state, timeLeft, duration) {
  state.restTime--;
  timeLeft.textContent = "quedan " + state.restTime + " min";
}

function timerBar(state, duration) {
  state.restTime = duration - state.timePodcast[state.id];
  console.log("state.restTime = ", state.restTime);
  console.log("duration = ", duration);

  state.barAmount = state.timePodcast[state.id] / duration;
  console.log("barAmount", state.barAmount);

  state.timePodcast[state.id] = state.timePodcast[state.id] + 1;
  console.log("timePodcast:", state.timePodcast[state.id]);

  let barSlider_back = document.getElementById("barSliderBack");
  let barSliderBall = document.getElementById("barSliderBall");
  barSlider_back.setAttribute(
    "style",
    "left: 0%; transform: scale(" + state.barAmount + ", 1);"
  );
  barSliderBall.setAttribute("style", "left:" + state.barAmount * 100 + "%;");
}

function changeTime(user, state, props) {
  console.log(user);
  const positionX = user.clientX;
  const oldBarAmount = state.barAmount;
  const windowScreen = window.screen.width;
  const duration = props.podcasts[state.id].duration;
  state.barAmount = positionX / windowScreen;
  let variation = Math.round((state.barAmount - oldBarAmount) * duration);

  state.restTime = state.restTime + variation + 1; // el +1 no debería ir, pero como voy a llamar a TimerCount que le resta 1, le pongo el excedente acá.
  
  console.log("variation",variation, "state.restTime", state.restTime);
  
  timerBar (state, duration);
  timerCount (state, state.restTime);
  

  
  


  /*console.log("barAmount:", state.barAmount);
  state.restTime = props.podcasts[state.id].duration * state.barAmount;
  let barSlider_back = document.getElementById("barSliderBack");
  let barSliderBall = document.getElementById("barSliderBall");
  barSlider_back.setAttribute(
    "style",
    "left: 0%; transform: scale(" + state.barAmount + ", 1);"
  );

  let variation = Math.round((state.barAmount - oldBarAmount) * windowScreen);

  console.log("variation", variation);

  barSliderBall.setAttribute(
    "style",
    "transform: translate(" + variation + "px);"
  );

  barSliderBall.setAttribute("style", "left:" + state.barAmount * 100 + "%;");*/
}

function recolectDataMaterialDownlad (material, podcasts){
  const id = material.id[material.id.length - 1];
  const title = podcasts[id].title;
  console.log(id,podcasts[id].title);
 // ga('send', 'event', "download", 'podcasts', title);

  if (typeof gtag !== 'undefined') {
    gtag('event', 'click', {
        'event_category': 'podcasts', 
        'event_label': title, 
        'event_value': 0,
    });
  } 
}
