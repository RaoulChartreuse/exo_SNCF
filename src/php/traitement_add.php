<html>
 <head>
  <title>Traitement add</title>
 </head>
 <body>
 <?php echo '<p>Bonjour le monde</p>'; ?>

Nom de la guare <?php echo htmlspecialchars($_POST['nom']); ?>.
Ville de la guare <?php echo $_POST['ville']; ?> .

 <?php
include 'configDb.php';
$Xnom = $_POST['nom'];
$Xprenom = $_POST['ville'];



// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

echo 'Test';
echo $Xnom;
$sql = "INSERT INTO gare (nom, ville) VALUES ('$Xnom', '$Xville')";
$result = $conn->query($sql);

$conn->close();
?>

<a href = "index.php"> Retour a la liste </a></br>
 </body>
</html> 
