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

        <h2>Editora</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        $Codeditora = 'Cod_editora';
        $Deseditora = 'Des_editora';
        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $Codeditora .
            '     , ' . $Deseditora .
            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM editora';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }

        $cabecalho =
            '<table style="width:100%">' .
            '        <th>' . $Codeditora . '</th>' . 
            '        <th>' . $Deseditora . '</th>' .
            '    </tr>';

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';

                echo '<td>' . $registro[$Codeditora] . '</td>' .
                    '<td>' . $registro[$Deseditora] . '</td>' ;
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