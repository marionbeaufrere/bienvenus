function intializeButton() {
  const btns = document.querySelectorAll('.fa-circle');
  btns.forEach(function(btn) {
    btn.parentNode.addEventListener("click", (event) => {
      btn.classList.remove("far");
      btn.classList.remove("fa-circle");
      btn.classList.add("fas");
      btn.classList.add("fa-check");
    });
  });
};

export { intializeButton }

//this is just for the git diff
