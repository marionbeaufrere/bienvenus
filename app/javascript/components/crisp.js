// TO DO: Get current_user's email, then push to crisp

function getEmail() {
const email = document.getElementById("user-email-crisp").getAttribute("data-email");
console.log(email);
$crisp.push(["set", "user:email", email]);
};

export { getEmail }

//SAME FOR USER DATA
// $crisp.push(["set", "session:data", [[["order_id", "3535353214"],["address", "1 Market Street"]]]]);
