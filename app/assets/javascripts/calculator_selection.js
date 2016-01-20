$(document).ready(function() {
  console.log("Document is ready!");
  $(".tables").on("click", "p", function() {
    var tableName = $(this).parent().find('h1').get(0).innerText;
    var columnName = $(this).text();
    console.log($(this));
    console.log("Clicked on a column name: " + columnName);
    console.log(tableName);
    console.log("Closest table name: " + tableName);
    $(".well").append("<p>" + tableName + " " + columnName + "</p>");
  });
});
