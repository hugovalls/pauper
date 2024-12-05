<?php
header("Content-Type: application/json");
$conn = new mysqli("localhost", "root", "", "tournament_db");

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL general ( y del quesito)
$sql = 
"SELECT p.name AS player_name, p.age, p.years_playing, 
           a.name AS archetype_name, a.description AS archetype_description, 
           s.victories, s.defeats, s.draws,
           t.edition_name, t.date
    FROM playertournamentarchetype pta
    JOIN Players p ON pta.player_id = p.player_id
    JOIN TournamentEdition t ON pta.tournament_id = t.tournament_id
    JOIN archetypes a ON a.archetype_id = pta.archetype_id
    JOIN scores s ON p.player_id = s.player_id
    ORDER BY s.victories DESC
    ";
// query de las medias
$sql2 = "SELECT 
    a.name AS archetype_name,
    AVG(s.victories) AS avg_victories,
    AVG(s.defeats) AS avg_defeats,
    AVG(s.draws) AS avg_draws
FROM 
    playertournamentarchetype pta
JOIN 
    archetypes a ON pta.archetype_id = a.archetype_id
JOIN 
    scores s ON pta.player_id = s.player_id
GROUP BY 
    a.archetype_id
ORDER BY 
    a.name
";
//query de la suma de victorias
$sql3 ="SELECT 
    a.name AS archetype_name,
    SUM(s.victories) AS total_victories
FROM 
    playertournamentarchetype pta
JOIN 
    archetypes a ON pta.archetype_id = a.archetype_id
JOIN 
    scores s ON pta.player_id = s.player_id
GROUP BY 
    a.archetype_id
ORDER BY 
    total_victories DESC";


//guardado de resultados de querys
$result = $conn->query($sql);
$data = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

$result2 = $conn->query($sql2);
$data2 = [];
if ($result2->num_rows > 0) {
    while($row = $result2->fetch_assoc()) {
        $data2[] = $row;
    }
}

$result3 = $conn->query($sql3);
$data3 = [];
if ($result3->num_rows > 0) {
    while($row = $result3->fetch_assoc()) {
        $data3[] = $row;
    }
}

//JSON!
echo json_encode([$data, $data2,$data3]);
$conn->close();
?>
