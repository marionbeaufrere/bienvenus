  let lastItem = document.getElementById('last-item');
  let nextButton = document.querySelector(".signup-control-position-right")
  let previousButton = document.querySelector(".signup-control-position-left")
  // let middleItem = document.querySelector(".middle-item")
  let firstItem = document.getElementById('first-item');


function hideNextButton(){

  nextButton.addEventListener("click", (event) => {
    if( lastItem.classList.contains("active")) {
      nextButton.classList.toggle('hidden');
    }
  });

  previousButton.addEventListener("click", (event) => {
      nextButton.classList.remove('hidden');
  });
}


// function hidePreviousButton(){

//   nextButton.addEventListener("click", (event) => {
//     if( lastItem.classList.contains("active")) {
//       previousButton.classList.remove("hidden");
//     }

//   previousButton.addEventListener("click", (event) => {
//       previousButton.classList.add('hidden');
//   });
//   });


// }


  // nextButton.addEventListener("click", (event) => {
  //     previousButton.classList.remove('hidden');
  // });




if ( document.getElementById("signup-carousel") ) {
  hideNextButton();
};

// if ( document.getElementById("signup-carousel") ) {
//   hidePreviousButton();
// };

export { hideNextButton };
