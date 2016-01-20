$(document).ready(function() {
  console.log("Document is ready!");

  var jqueryParams = {};
  var clickCount = 0;

  $(".tables").on("click", "p", function() {
    var tableName = $(this).parent().find('h1').get(0).innerText;
    var columnName = $(this).text();
    console.log($(this));
    console.log("Clicked on a column name: " + columnName);
    console.log(tableName);
    console.log("Closest table name: " + tableName);
    $(".well").append("<p>" + tableName + " " + columnName + "</p>");
    jqueryParams[clickCount] = { selectionTable: tableName, selectionColumn: columnName }
    console.log(jqueryParams);
    clickCount++;
    console.log(clickCount);
  });
});
