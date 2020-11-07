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
  
  let socialMediaLinks = {
    youtube: "youtubeLinkGoesHere",
    spotify: "spotifyLinkGoesHere",
  };
  
  let props = {
       podcasts : [], // array de podcast
       reproductor: reproductorProps,
       quantityPodcasts : 0,
       socialMediaLinks : socialMediaLinks,
    
  };
  
  let state = {
    state : "default",
    subState: "none",
    id : 0, 
    podcastPlaying: null,
    timePodcast: [],
    volume: 50,
    reproductorActive : false,
    order : "most recent first",
    playButtonFunction : "pause(reproductor.audio,state)",
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
          <button class="primaryButton"> <a> Descargar material </a> </button>
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
      
      html +=`
      ${tempPodcast.duration} min
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
        let temp = document.createElement('div');
        temp.innerHTML = description;      
        description = temp.querySelector("strong").innerHTML;
        
        auxPodcast.description = description;
        auxPodcast.date = item.querySelector("pubDate").innerHTML;
        
        
        let image = item.querySelector("image");
        let imageRef = image.getAttribute("href");
        auxPodcast.artwork = imageRef; 
        
        let link = item.querySelector("enclosure"); 
        auxPodcast.link = link;
  
        let duration = item.querySelector("duration").innerHTML;
        duration = Math.round(duration/60);
        duration = duration;
        
        auxPodcast.duration = duration;      
        
        props.podcasts.push(auxPodcast);
        props.quantityPodcasts++;
  
        // Lleno los arrays del state de forma vacia para arrancar.
     
      });
      let reproductor = document.getElementById("reproductor");
    
      props.reproductor.artwork = document.getElementById("reproductorPodcastArtwork"); // intente reproductor.getElementById y no anduvo.
      props.reproductor.title = document.getElementById("reproductorPodcastTitle");
      props.reproductor.restTime = document.getElementById("reproductorPodcastRestTime");
      props.reproductor.source = document.getElementById("podcastLink");
      props.reproductor.audio = document.getElementById("podcastAudio");
      props.reproductor.style = reproductor.style;
      props.reproductor.playButton = document.getElementById("playButton");
  
      generateDOM(props);
        
      for (let i = 0; i < props.podcasts.length; i++){
        props.podcasts[i].soundButton = document.getElementById("audioButton" + i);
        props.podcasts[i].svgSoundButton = document.getElementById("audioButton" + i);
        props.podcasts[i].svgSoundButton.pley = document.getElementById("svgSound-play" + i);
        props.podcasts[i].svgSoundButton.playing = document.getElementById("svgSound-playing" + i);
      }
    
  
  
  })
    .catch((error) => {
      console.error("Hubo un error con la operacion fetch", error);
    });
  
  function howMuchTimeLeft (totalTime, actualTime){
    actualTime = Math.round(actualTime/60);
    return (totalTime - actualTime);
  }
  
  /* onClick of button Play of any podcast. */
  function playerRender(state, reproductor, podcast){
    if (state.reproductorActive === true){
      
      // Lleno la información básica del reproductor.
      reproductor.artwork.src = podcast.artwork;
      reproductor.title.textContent = podcast.title;
      console.log("playerRender: timePodcast:", state.timePodcast, " podcast.duration:", podcast.duration);
      state.restTime = howMuchTimeLeft(podcast.duration, state.timePodcast[state.id]); // ¿Está bien hacerlo acá?  Asegurarse.
      reproductor.restTime.textContent =  ("quedan " + state.restTime + " min");;
      reproductor.style.display = "block";
      
      // Si aún no renderizo nunca el tiempo, llama la función por primera vez.
      if (state.timerBar === null && state.timerRestTimeId === null) {
        console.log("We gonna do timerBar");
        state.timerBar = (window.setInterval(timerBar, 1000, state, reproductor.restTime, podcast.duration));
        state.timerRestTimeId = (window.setInterval(timerCount, 60000, state, reproductor.restTime, podcast.duration));
        return;
      }
      
      // Si ya renderizo el tiempo alguna vez, desactivo las funciones anteriores.
      
      window.clearInterval(state.timerRestTimeId);
      window.clearInterval(state.timerBar);
      
      // las ejecuto con el estado actualizado.
      state.timerRestTimeId = (window.setInterval(timerCount, 60000, state, reproductor.restTime, podcast.duration));
      state.timerBar = (window.setInterval(timerBar, 1000, state, reproductor.restTime, podcast.duration));
      
      return;
      
    }
    reproductor.style.display = "none";
    console.log("Desactivar reproductor.");
    window.clearInterval(state.timerRestTimeId);
    window.clearInterval(state.timerBar); 
    
  }
  
  function playerPlay (state, podcast, reproductor){
      
      if (podcast == 0){
        console.log("playerPlay(): detuviste el podcast en" + reproductor.audio.currentTime);
        state.timePodcast[state.id] = reproductor.audio.currentTime;
        state.podcastPlaying = "none";
        reproductor.audio.setAttribute("src", " "); // Queria que fuera en source pero no anda.
        return "default";
      }
      
      state.podcastPlaying = podcast.title;
      reproductor.audio.setAttribute("src", podcast.link.getAttribute("url")); // Queria que fuera en source pero no anda.
      reproductor.source.setAttribute("legth", podcast.link.getAttribute("length"));
      reproductor.source.setAttribute("type", podcast.link.getAttribute("type"));
      
      resume(reproductor, state);
      
      return ("playing" + state.id);
    
  }
  
  function resume (reproductor, state){
    console.log("resume(): I gonna play baby");
    if (state.timePodcast[state.id] === undefined){
      console.log("Error, resume(): state.timePodcast[state.id] is undefined.");
    }
    reproductor.audio.currentTime = state.timePodcast[state.id];
    reproductor.audio.play();
    reproductor.playButton.setAttribute("onclick","pause(props.reproductor, state)");
    console.log(reproductor.playButton);
    
    // debería sacarlos de reproductor, pero no pude.
    let resumeButton = document.getElementById("resumeButton"); 
    let pauseButton = document.getElementById("pauseButton");
    
    resumeButton.setAttribute("style","display:block");
    pauseButton.setAttribute("style","display:none");
  
  }
  
  function pause (reproductor, state){
    console.log("pause(): I gonna pause baby");
    reproductor.audio.pause();
    state.timePodcast[state.id] = reproductor.audio.currentTime;
    reproductor.playButton.setAttribute("onclick","resume(props.reproductor, state)");
    window.clearInterval(state.timerRestTimeId);
    window.clearInterval(state.timerBar);
      // debería sacarlos de reproductor, pero no pude.
    let resumeButton = document.getElementById("resumeButton"); 
    let pauseButton = document.getElementById("pauseButton");
    
    resumeButton.setAttribute("style","display:none");
    pauseButton.setAttribute("style","display:block");
  }
  
  function soundButtonRender (id, podcast, buttonState){
      let soundButton = podcast.soundButton;
      let svgSoundButton = podcast.svgSoundButton;
      //animar el botón de play.
    
      if (buttonState === "playing"){
      svgSoundButton.pley.style.display = "none";
      svgSoundButton.playing.style.display = "block";
      soundButton.setAttribute("onclick","stop(this, state, props)");
      soundButton.setAttribute("alt","Stop podcast");
      
      }
      
      else if (buttonState == "play") { 
      svgSoundButton.pley.style.display = "block";
      svgSoundButton.playing.style.display = "none";
      soundButton.setAttribute("onclick","play(this, state, props)");
      soundButton.setAttribute("alt","Play podcast");
      }
    
      else {
        console.log ("error: svgSoundButtonState it's not play or playing");
  
      }
  } 
  
  function play(soundButton, state, props) {
    let newId_temp = soundButton.id[soundButton.id.length - 1]; // last chapter is 0, first chapter is N.
    let newState_temp = "playing" + newId_temp;
    
    // Si no está activo el reproductor, es decir estoy en el estado "default",
    if (state.state === "default"){ 
      console.log("play(): El reproductor estaba apagado, ahora lo prenderé.");
      state.id = newId_temp; // actualizo el ID.
      state.state = "cargandoReproductor";
      if(state.timePodcast[state.id] === undefined){
        state.timePodcast[state.id] = 0;
      }
      state.reproductorActive = true;
      state.state = playerPlay(state, props.podcasts[state.id], props.reproductor);
      playerRender(state, props.reproductor, props.podcasts[state.id]);
      soundButtonRender(state.id, props.podcasts[state.id], "playing");
    }
    
    // Si estoy en el estado playing y tocaron el botón, debe ser otro.
    else if (state.state != newState_temp) {
      console.log("play(): Pusiste otro podcast");
      state.state = "cargandoReproductor";
      
      soundButtonRender(state.id, props.podcasts[state.id], "play");
      console.log("play(): detuviste el podcast en" + props.reproductor.audio.currentTime);
      state.timePodcast[state.id] = props.reproductor.audio.currentTime;
      
      state.id = newId_temp;
      if(state.timePodcast[state.id] === undefined){
        state.timePodcast[state.id] = 0;
      }
      soundButtonRender(state.id, props.podcasts[state.id], "playing");
      
      state.state = playerPlay(state, props.podcasts[state.id], props.reproductor);
      state.state = playerRender(state, props.reproductor, props.podcasts[state.id]); 
    }
    
    else {
      console.log("play(): ¿cómo llegaste acá? no deberías estar acá. state.state es:" + state.state);
    }
  };
  
  function stop(soundButton, state, props){
    console.log("Detuviste el reproductor");
    state.state = "default";
    state.reproductorActive = false;
    window.clearInterval(state.timerRestTimeId);
    window.clearInterval(state.timerBar);
    playerPlay (state, 0, props.reproductor);
    playerRender(state, props.reproductor, props.podcasts[state.id]);
    soundButtonRender(state.id, props.podcasts[state.id], "play");
    
  };
  
  function timerCount (state, timeLeft, duration) {
    state.restTime--;
    timeLeft.textContent = "quedan " + state.restTime + " min";
  
  }
  
  function timerBar (state, timeLeft, duration) {
    
    let conversion = 1 / (duration*60); // (1 seg / Total) * tiempoActual = porcentaje en X.
    
    state.barAmount = conversion * state.timePodcast[state.id];
    state.timePodcast[state.id] = state.timePodcast[state.id] + 1;
    //console.log("state.timePodcast: ",state.timePodcast);
    //console.log("state.barAmount: ",state.barAmount);
    
    let barSlider_back = document.getElementById("barSliderBack");
    let barSliderBall = document.getElementById("barSliderBall");
    barSlider_back.setAttribute("style","left: 0%; transform: scale(" + state.barAmount + ", 1);");
    barSliderBall.setAttribute("style", "left:" + state.barAmount*100 + "%;");
  }
  
  function changeTime(event, state, props){
    let positionX = event.clientX;
    let screenX = 1663; // event.screenX != 1663 que es mi resolu de pantalla, creo que por el slider derecho, revisar, por ese error daba mal.
    let value = positionX/screenX;
    let duration = props.podcasts[state.id].duration;
    let conversion = 1/ (duration*60);
    state.barAmount = value - (6/1663); // El +6 es por la bolita, debería estar en props eso y sacarlo de ahí.
    state.timePodcast[state.id] = state.barAmount / conversion;
    //state.barAmount = (1/(duration*60)) * state.timePodcast[state.id];                               
    console.log(state.barAmount);
    console.log(screenX);
    props.reproductor.audio.currentTime = state.timePodcast[state.id];
    
  }