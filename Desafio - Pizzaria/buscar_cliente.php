<?php
// Verifica se o método de requisição é GET e se o parâmetro "sabor" foi enviado
if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET["sabor"])) {
    // Conecta ao banco de dados (substitua 'localhost', 'username', 'password' e 'database' pelos seus valores)
    $conn = new PDO('pgsql:host=localhost;dbname=pizzaria_epicestudar', 'postgres', 'postgres');

    // Define o modo de erro para exceções
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Prepara a consulta SQL com um marcador de posição para o sabor da pizza
    $stmt = $conn->prepare('SELECT * FROM pedidos WHERE Sabor_Pizza = :sabor');

    // Executa a consulta com o sabor da pizza fornecido
    $stmt->execute(['sabor' => $_GET["sabor"]]);

    // Obtém todas as linhas do resultado como um array associativo
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Verifica se a consulta retornou resultados
    if ($rows) {
        // Retorna os dados dos pedidos como JSON
        echo json_encode($rows);
    } else {
        // Se nenhum pedido foi encontrado com o sabor da pizza especificado, retorna uma mensagem de erro
        echo json_encode(["error" => "Nenhum pedido encontrado com o sabor da pizza especificado"]);
    }
} else {
    // Se o método de requisição não for GET ou se o parâmetro "sabor" não foi enviado, retorna uma mensagem de erro
    echo json_encode(["error" => "Requisição inválida"]);
}
?>
