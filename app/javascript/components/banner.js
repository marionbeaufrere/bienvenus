import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Bienvenue", "Welcome", "Welkom", "مرحبا", "Benvenuti", "Bienvenidos", "Selamat Datang"],
    typeSpeed: 50,
    loop: true
  });
  debugger
}

if ( document.getElementById("banner-typed-text") ) {
  loadDynamicBannerText();
};

export { loadDynamicBannerText };
