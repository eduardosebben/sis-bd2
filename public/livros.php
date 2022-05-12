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

        <h2>Livros</h2>
        <?php
        require 'mysql_server.php';

        $conexao = RetornaConexao();

        $livro = 'Cod_Livro';
        $titulo = 'Des_Titulo';
        $classificacao = 'Cod_Classificacao';
        $dtaCriacao = 'Dta_Criacao';
        $autor = 'Cod_Autor';
        $editora = 'Cod_Editora';
        /*TODO-1: Adicione uma variavel para cada coluna */


        $sql =
            'SELECT ' . $livro .
            '     , ' . $titulo .
            '     , ' . $classificacao .
            '     , ' . $dtaCriacao . 
            '     , ' . $autor .
            '     , ' . $editora .
            '  FROM livros';


        $resultado = mysqli_query($conexao, $sql);
        if (!$resultado) {
            echo mysqli_error($conexao);
        }

        $cabecalho =
            '<table style="width:100%">' .
            '    <tr>' .
            '        <th>' . $livro . '</th>' . 
            '        <th>' . $titulo . '</th>' .
            '        <th>' . $classificacao . '</th>' .
            '        <th>' . $dtaCriacao . '</th>' .
            '        <th>' . $autor . '</th>' .
            '        <th>' . $editora . '</th>' .
            '    </tr>';

        echo $cabecalho;

        if (mysqli_num_rows($resultado) > 0) {

            while ($registro = mysqli_fetch_assoc($resultado)) {
                echo '<tr>';

                echo '<td>' . $registro[$livro] . '</td>' .
                    '<td>' . $registro[$titulo] . '</td>' .
                    '<td>' . $registro[$classificacao] . '</td>';
                    '<td>' . $registro[$dtaCriacao] . '</td>';
                    '<td>' . $registro[$autor] . '</td>';
                    '<td>' . $registro[$editora] . '</td>';
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