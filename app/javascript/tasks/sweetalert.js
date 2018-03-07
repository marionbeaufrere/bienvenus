import swal from 'sweetalert';

function sweetAlertReturn() {
  const subtaskList = document.querySelector('.subtask-list');

  if (subtaskList) {
    subtaskList.addEventListener('click', (e) => {
      const unmarkedSubtasksCount = document.querySelectorAll(".show-subtask-btn").length;

      if (
          unmarkedSubtasksCount == 1 &&
          (e.target.classList.contains('show-subtask-btn') || e.target.classList.contains('fa-check'))
        ) {
        swal({
          title: "Congratulations!",
          text: "You're all set, \n you can start your other tasks now 🤗",
          icon: "success",
        }).then((value) => {
          window.location = '/tasks';
        });
      }
    });
  }
}

export { sweetAlertReturn };

// document.getElementById('last-subtask').addEventListener('click', () => {
