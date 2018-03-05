import swal from 'sweetalert';

function sweetAlertReturn() {
  const subtaskList = document.querySelector('.subtask-list');
  if (subtaskList) {
    subtaskList.addEventListener('click', (e) => {
      const unmarkedSubtasksCount = document.querySelectorAll(".show-subtask-btn").length;

      if (e.target.classList.contains('show-subtask-btn') && unmarkedSubtasksCount == 1) {
      // if (e.target.classList.contains('toto')) {
        swal({
          title: "Congrats!",
          text: "You're all done here, let's move on.",
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
