  let middleItem = document.getElementById('middle-item');
  let nextButton = document.querySelector(".signup-control-position-right")
  let previousButton = document.querySelector(".signup-control-position-left")
  let firstItem = document.getElementById('first-item');

  let photo = document.getElementById('user_photo')
  if (signupInputs) {
     photo.classList.add("hidden");
   };

function hideNextButton(){

  nextButton.addEventListener("click", (event) => {
    if( middleItem.classList.contains("active")) {
      nextButton.classList.add('hidden');
    }
    previousButton.classList.remove('hidden');
  });

  previousButton.addEventListener("click", (event) => {
      nextButton.classList.remove('hidden');
      if (middleItem.classList.contains("active")) {
        previousButton.classList.add("hidden");
      }
  });
}


if ( document.getElementById("signup-carousel") ) {
  hideNextButton();
};


export { hideNextButton };

const signupInputs = document.querySelectorAll(".first-item-input");
let emailInputs = document.querySelectorAll("#middle-item input");
let phoneInput = document.getElementById("user_phone_number");
let buttonSignup = document.getElementById("button-signup");


  if (signupInputs) {
    signupInputs.forEach((input) => {
      input.addEventListener("keyup", (event) => {
        let errors = 0;
        signupInputs.forEach((i) => {
          if (i.value.length === 0) {
            errors += 1;
          }
        });
        console.log(errors);
        if (errors === 0) {
          document.querySelector(".signup-control-position-right").classList.remove('hidden');
        } else {
          const next = document.querySelector(".signup-control-position-right");
          next.classList.remove('hidden');
          next.classList.add('hidden');
        }
      });
    });
  }

const theNextButton = document.querySelector(".signup-control-position-right");
if (theNextButton) {
  theNextButton.addEventListener("click", (event) => {
    theNextButton.classList.add('hidden');
  });
}

  if (emailInputs) {
    emailInputs.forEach((input) => {
      input.addEventListener("keyup", (event) => {
        let errors = 0;
        emailInputs.forEach((i) => {
          if (i.value.length === 0) {
            errors += 1;
          }
        });
        if (errors === 0) {
          nextButton.classList.remove('hidden');
          nextButton.addEventListener("click", (event) => {
            nextButton.classList.add('hidden');
          });
        } else {
          nextButton.classList.remove('hidden');
          nextButton.classList.add('hidden');
        }
      });
    });
  }

  if (phoneInput) {

    phoneInput.addEventListener("keyup", (event) => {
      if (phoneInput.value.length !== 0) {
        buttonSignup.classList.remove("hidden");
      }
    });
  }


