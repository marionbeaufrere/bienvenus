function changeToActive(){
  const hideSubtaskList = document.querySelector(".subtask-list");
  const hideBackButton = document.querySelector(".back-button");
  const addActive = document.querySelector(".details");
  const clickAbstract = document.querySelector(".abstract");

  if (clickAbstract != null) {
    clickAbstract.addEventListener("click", (event) => {
      addActive.classList.toggle("active");
      hideSubtaskList.classList.toggle("hidden");
      hideBackButton.classList.toggle("hidden");
    });
  }
}

export { changeToActive };
