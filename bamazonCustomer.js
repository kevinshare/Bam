var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",
  port: 8889,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "Bamazon"
});

connection.connect(function(err) {
  if (err) throw err;
  runSearch();
});

var runSearch = function() {
  connection.query("SELECT * FROM productsCorrected", function(err, res) {
    for (var i = 0; i < res.length; i++) {
          console.log("ID: " + res[i].item_id + " || Item: " + res[i].product_name + " || Quantity: " + res[i].stock_quantity + " || Price: " + res[i].price);
    }
  });
  inquirer.prompt({
    name: "buy",
    type: "input",
    message: "What product ID would you like to buy?",
  }).then(function(answer) {
      var buy = answer.buy;
      connection.query("SELECT product_name, stock_quantity, price FROM productsCorrected WHERE item_id= ?", [buy], function(err, res) { 
    
        for (var i = 0; i < res.length; i++) {
          console.log("Item: " + res[i].product_name + " || Quantity: " + res[i].stock_quantity + " || Price: " + res[i].price);
        }
      });
      
 
    });
};
connection.end();


