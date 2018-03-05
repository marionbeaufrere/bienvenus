import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Congrats!",
      text: "You just completed this task :)",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };
