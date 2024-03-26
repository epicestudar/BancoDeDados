document.getElementById('searchForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    var saborPizza = document.getElementById('sabor').value;

    // Aqui você fará uma solicitação AJAX para o backend para buscar os dados do pedido
    // e exibir os resultados na página
    // Exemplo:
    fetch('buscar_cliente.php?sabor=' + encodeURIComponent(saborPizza))
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                document.getElementById('result').innerHTML = data.error;
            } else {
                // Construa a lista de pedidos
                var html = '<h2>Pedidos</h2>';
                html += '<ul>';
                data.forEach(function(pedido) {
                    html += '<li>ID do Pedido: ' + pedido.id_pedido + '</li>';
                    html += '<li>ID do Cliente: ' + pedido.id_cliente + '</li>';
                    html += '<li>Quantidade: ' + pedido.quantidade + '</li>';
                    html += '<li>Data do Pedido: ' + pedido.data_pedido + '</li>';
                    html += '<li>Valor Total: ' + pedido.valor_total + '</li>';
                    html += '<li>Sabor da Pizza: ' + pedido.sabor_pizza + '</li>';
                    html += '<br>';
                });
                html += '</ul>';
                document.getElementById('result').innerHTML = html;
            }
        })
        .catch(error => {
            console.error('Erro ao buscar dados do pedido:', error);
        });
});
