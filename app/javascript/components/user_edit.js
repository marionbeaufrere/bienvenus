function userToggleEdit() {

const userEditButton = document.querySelector('.edit-user-btn');
const userUpdateButton = document.querySelector('.user-edit-done');

  userEditButton.addEventListener("click", (event) => {
    const userEditForm = document.querySelector('.edit-user-details');
    const userDetails = document.querySelector('.user-details');
    const userSignOut = document.querySelector('.user-signout');

    userEditForm.classList.toggle("hidden");
    userDetails.classList.toggle("hidden");
    userSignOut.classList.toggle("hidden");
  });

  userUpdateButton.addEventListener("click", (event) => {
    const userEditForm = document.querySelector('.edit-user-details');
    const userDetails = document.querySelector('.user-details');
    const userSignOut = document.querySelector('.user-signout');

    userEditForm.classList.toggle("hidden");
    userDetails.classList.toggle("hidden");
    userSignOut.classList.toggle("hidden");
  });

};

export { userToggleEdit }
