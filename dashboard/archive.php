<?php
include "../server/db_connect.php";

if (isset($_POST['takes_id'])) {
    $takes_id = $_POST['takes_id'];

    $sql = "UPDATE takes SET archived = 1 WHERE takes_id = :takes_id";
    $stat = $conn->prepare($sql);
    $stat->bindParam(':takes_id', $takes_id, PDO::PARAM_INT);

    if ($stat->execute()) {
        // Redirect back to the notification page
        header("Location: {$_SERVER['HTTP_REFERER']}");
        exit();
    } else {
        echo "Error updating activity.";
    }
} else {
    echo "Invalid request.";
}
?>
