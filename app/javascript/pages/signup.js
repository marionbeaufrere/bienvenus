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





if ( document.getElementById("signup-carousel") ) {
  hideNextButton();
};


export { hideNextButton };
