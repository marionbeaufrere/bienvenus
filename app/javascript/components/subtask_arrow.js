function taskToggleArrow() {

  const arrowDown = document.querySelectorAll(".subtasks-arrow-down");
  arrowDown.forEach(function (arrow) {
    if (arrow.classList.contains("rotater")) {
      arrow.classList.toggle("rotater");
    }
    arrow.addEventListener("click", (event) => {
      arrow.classList.toggle("rotator");
    });
  });
  const arrowSide = document.querySelectorAll(".rotator");
  arrowSide.forEach(function (arrow) {
    arrow.addEventListener("click", (event) => {
      arrow.classList.toggle("rotator");
      arrow.classList.toggle("rotater");
    });
  });
};

export { taskToggleArrow }

