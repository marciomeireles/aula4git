<?php
//pegar dados da tela


	$login = $_POST["login"];
	$senha = md5($_POST["senha"]);

//abrir conexão com o banco

	include_once 'conexao.php';

//montar a instrução de consulta, verifico se existe o login e a senha no  banco.

	$sql= "select * from usuario where login = '".$login."' and senha = '".$senha."'";

	$result = mysqli_query($con,$sql);
	if(mysqli_num_rows ($result) == 1){

		echo"Logado!!!!";

	}else{
		$msg ="Login/Senha Inválido";
		header("location:index.html");//redirecionamento para a pagina html


	}
	
?>