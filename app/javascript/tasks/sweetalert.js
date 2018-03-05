import swal from 'sweetalert';

function sweetAlertReturn() {
  const subtaskList = document.querySelector('.subtask-list');
  if (subtaskList) {
    subtaskList.addEventListener('click', (e) => {
      const unmarkedSubtasksCount = document.querySelectorAll(".show-subtask-btn").length;

      if (e.target.classList.contains('show-subtask-btn') && unmarkedSubtasksCount == 1) {
      // if (e.target.classList.contains('toto')) {
        swal({
          title: "A nice alert",
          text: "This is a great alert, isn't it?",
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
