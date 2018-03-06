// TO DO: Get current_user's email, then push to crisp

function getEmail() {
  const email = document.getElementById("user-email-crisp").getAttribute("data-email");
  console.log(email);
  $crisp.push(["set", "user:email", email]);
};

function getNickname() {
  const firstName = document.getElementById("user-email-crisp").getAttribute("data-first-name").charAt(0).toUpperCase() + document.getElementById("user-email-crisp").getAttribute("data-first-name").slice(1);
  const lastName = document.getElementById("user-email-crisp").getAttribute("data-last-name").charAt(0).toUpperCase() + document.getElementById("user-email-crisp").getAttribute("data-last-name").slice(1);
  console.log(`${firstName} ${lastName}`);
  $crisp.push(["set", "user:nickname", `${firstName} ${lastName}`]);
};

export { getNickname, getEmail };

//SAME FOR USER DATA
// $crisp.push(["set", "session:data", [[["order_id", "3535353214"],["address", "1 Market Street"]]]]);
