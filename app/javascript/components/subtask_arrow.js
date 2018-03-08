function taskToggleArrow() {

  const arrowDown = document.querySelectorAll(".subtasks-arrow-down");
  arrowDown.forEach(function (arrow) {
    arrow.addEventListener("click", (event) => {
      if (arrow.classList.contains("rotator")) {
        arrow.classList.remove("rotator");
      } else {
        arrow.classList.add("rotator");
      }
    });
    // if (arrow.classList.contains("rotater")) {
    //   arrow.classList.remove("rotater");
    // }
    // arrow.addEventListener("click", (event) => {
    //   arrow.classList.toggle("rotator");
    // });
  });
  // const arrowSide = document.querySelectorAll(".rotator");
  // arrowSide.forEach(function (arrow) {
  //   arrow.addEventListener("click", (event) => {
  //     arrow.classList.toggle("rotator");
  //     arrow.classList.toggle("rotater");
  //   });
  // });
};

export { taskToggleArrow }

