import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Bienvenue", "Welcome", "Welkom", "مرحبا", "Benvenuti", "Bienvenidos", "Selamat Datang"],
    typeSpeed: 50,
    loop: true
  });
}

if ( document.getElementById("banner-typed-text") ) {
  loadDynamicBannerText();
};

export { loadDynamicBannerText };
