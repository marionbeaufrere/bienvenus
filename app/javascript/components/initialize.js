function intializeButton() {
console.log("sup")
  const btns = document.querySelectorAll('.fa-circle');
  btns.forEach(function(btn) {
    console.log(btn.parentNode);
    btn.parentNode.addEventListener("click", (event) => {
      event.preventDefault();
      event.currenTarget.childNodes[0].classList.remove("far")
      event.currenTarget.childNodes[0].classList.add("fas")
    });
  });
};

export { intializeButton }
console.log("sup")
