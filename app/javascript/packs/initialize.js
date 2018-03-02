function intializeButton(event) {

  const btns = document.querySelectorAll('.far fa-circle');

  function changeClass(event) {
    btn.classList.toggle(".fas fa-circle");
  };

  btns.forEach(btn => btn.addEventListener("click", changeClass));
};

export { intializeButton }
