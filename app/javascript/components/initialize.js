function intializeButton() {
  const btns = document.querySelectorAll('.fa-circle');
  btns.forEach(function(btn) {
    btn.parentNode.addEventListener("click", (event) => {
      btn.classList.remove("far")
      btn.classList.add("fas")
    });
  });
};

export { intializeButton }
