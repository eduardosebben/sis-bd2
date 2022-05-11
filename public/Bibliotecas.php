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

        <h2>Bibliotecas</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        $CodBiblioteca = 'Cod_Biblioteca';
        $DesBiblioteca = 'Des_Biblioteca';
        $leitor = 'Cod_leitor';
        $editora = 'Cod_Editora';
        $livro = 'Cod_Livro';
        $autor = 'Cod_Autor';
        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $CodBiblioteca .
            '     , ' . $DesBiblioteca .
            '     , ' . $leitor .
            '     , ' . $editora .
            '     , ' . $livro .
            '     , ' . $autor .
            /*TODO-2: Adicione cada variavel a consulta abaixo */
            '  FROM bibliotecas';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }

        $cabecalho =
            '<table style="width:100%">' .
            '        <th>' . $CodBiblioteca . '</th>' . 
            '        <th>' . $DesBiblioteca . '</th>' .
            '        <th>' . $leitor . '</th>' .
            '        <th>' . $editora . '</th>' .
            '        <th>' . $livro . '</th>' .                                    
            '        <th>' . $autor . '</th>' .
            '    </tr>';

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';

                echo '<td>' . $registro[$titulo] . '</td>' .
                    '<td>' . $registro[$autor] . '</td>' .
                    /* TODO-4: Adicione a tabela os novos registros. */
                    '<td>' . $registro[$classificacao] . '</td>';
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