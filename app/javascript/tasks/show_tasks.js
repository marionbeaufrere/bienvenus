function changeToActive(){
  const hideSubtaskList = document.querySelector(".subtask-list");
  const addActive = document.querySelector(".details");
  const clickAbstract = document.querySelector(".abstract");

  if (clickAbstract != null) {
    clickAbstract.addEventListener("click", (event) => {
      addActive.classList.toggle("active");
      hideSubtaskList.classList.toggle("hidden");
    });
  }
}

export { changeToActive };
