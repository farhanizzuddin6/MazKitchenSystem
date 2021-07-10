<?php
include_once("dbconnect.php");
$prname = $_POST['prname'];

if ($prname == "all") {
    $sql = "SELECT * FROM tbl_products";
} else {
    $sql = "SELECT * FROM tbl_products WHERE prname LIKE '%$prname%'";
}

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $products["products"] = array();
    while ($row = $result->fetch_assoc()) {
        $productlist['productId'] = $row['prid'];
        $productlist['productName'] = $row['prname'];
        $productlist['productType'] = $row['prtype'];
        $productlist['price'] = $row['prprice'];
        $productlist['quantity'] = $row['prqty'];
        $productlist['picture'] = '/myshopweb/images/' . $row['picture'];
        array_push($products['products'], $productlist);
    }
    echo json_encode($products);
} else {
    echo "nodata";
}
