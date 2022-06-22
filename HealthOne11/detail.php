<?php
try{
    $db = new PDO("mysql:host=localhost; dbname=healthone111","root","");
}
catch (PDOExeption $e){
    die($e->getMessage());
}
?>

<?php
        try {
            $query = $db->prepare("SELECT * FROM producten WHERE categorie id= :id");
            $query->bindParam("id", $_GET['id']);
            $query->execute();
            $result = $query->fetchAll(PDO::FETCH_ASSOC);
            foreach ($result as &$data) {
                echo $data["merk"] . " ";
                echo $data["type"] . " ";
                echo "€".$data["prijs"] . " ";
                echo "<img' src='" . $data["image"] . "' alt='img'>";
                echo $data ["beschrijving"];
                echo "</a>";
                echo "</div>";
            }
        } catch (PDOException $e) {
            die("Error!: " . $e->getMessage());
        }
        echo "</div>";
        ?>