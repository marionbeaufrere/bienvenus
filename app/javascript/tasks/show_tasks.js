function changeToActive(){
  const hideSubtaskList = document.querySelector(".subtask-list");
  const removeHidden = document.querySelector(".task-details");
  const clickAbstract = document.getElementById("toggle-description");

  if (clickAbstract != null) {
    clickAbstract.addEventListener("click", (event) => {
      removeHidden.classList.toggle("hidden");
      // hideSubtaskList.classList.toggle("hidden");
    });
  }
}

export { changeToActive };
