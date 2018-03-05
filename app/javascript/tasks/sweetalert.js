import swal from 'sweetalert';

function sweetAlertReturn() {
  document.querySelector('.subtask-list').addEventListener('click', (e) => {
    const unmarkedSubtasksCount = document.querySelectorAll(".show-subtask-btn").length;

    if (e.target.classList.contains('show-subtask-btn') && unmarkedSubtasksCount == 1) {
    // if (e.target.classList.contains('toto')) {
      swal({
        title: "A nice alert",
        text: "This is a great alert, isn't it?",
        icon: "success",
      },
      function(){
            window.location.href = 'bienvenus.org/tasks';
        }
      );
    }
  });
};

export { sweetAlertReturn };


// document.getElementById('last-subtask').addEventListener('click', () => {
