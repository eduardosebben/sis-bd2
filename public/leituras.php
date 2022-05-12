<!DOCTYPE html>

<head>
    <style>
        .content {
            max-width: 500px;
            margin: auto;
        }
        table, th, td {
             border: 1px solid white;
             border-collapse: collapse;
        }
        th, td {
            background-color: #96D4D4;
        }
    </style>
</head>

<html>

<body>
    <div class="content">
        <h1>Bibliófilo's</h1>

        <h2>Autores</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        $leitura = 'Cod_Leitura';
        $livro = 'Cod_Livro';
        $leitor = 'Cod_Leitor';
        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $leitura .
            '     , ' . $livro .
            '     , ' . $leitor .
            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM leituras';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }

        $cabecalho =
            '<table style="width:100%">' .
            '    <tr>' .
            '        <th>' . $leitura . '</th>' .
            '        <th>' . $livro . '</th>' .
            '        <th>' . $leitor . '</th>' .
            '    </tr>';

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';

                echo '<td>' . $registro[$leitura] . '</td>' .
                    '<td>' . $registro[$livro] . '</td>' .
                    '<td>' . $registro[$leitor] . '</td>';
                echo '</tr>';
            }
            echo '</table>';
        } else {
            echo '';
        }
        FecharConexao($conexao);
        ?>
    </div>
</body>

</html>