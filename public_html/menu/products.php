<?php
// Function to get data from MySQL and send as JSON
function getDataFromMySQLAndSendAsJson()
{
    $servername = "localhost";
    $username = "xxxxxxxxxxxxxxxxxxxxxxx";
    $password = "xxxxxxxxxxxxxxxxxxxxxx";
    $dbname = "xxxxxxxxxxxxxxxxxxxxx";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch items data
    $items_sql = "SELECT * FROM Items";
    $items_result = $conn->query($items_sql);
    $items_data = array();
    if ($items_result->num_rows > 0) {
        while ($row = $items_result->fetch_assoc()) {
            $items_data[] = $row;
        }
    }

    // Fetch categories data
    $categories_sql = "SELECT * FROM Category";
    $categories_result = $conn->query($categories_sql);
    $categories_data = array();
    if ($categories_result->num_rows > 0) {
        while ($row = $categories_result->fetch_assoc()) {
            $categories_data[] = $row;
        }
    }

    // Close connection
    $conn->close();

    // Combine items and categories data into an array
    $data = array(
        'items' => $items_data,
        'categories' => $categories_data
    );

    // Encode data as JSON and send to the view
    header('Content-Type: application/json');
    echo json_encode($data);
}

// Call the function to get data and send as JSON
getDataFromMySQLAndSendAsJson();