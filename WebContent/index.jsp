<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="br.catolica.dominio.Aluno" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Cadastro de Alunos</title>
</head>
<body>

<!-- ------------------------------------ -->
<!-- Formulario para cadastro de um aluno -->
<!-- ------------------------------------ -->
<h2>Cadastrar Novo Aluno:</h2>
<form action="CadastrarAlunoServlet" method="post">

    <!-- ----------------------------------- -->
	<!-- Campo para informar o nome do aluno -->
	<!-- ----------------------------------- -->
	<label for="nome">Nome:</label>
	<input type="text" name="nome">
	<br><br>
	
	<!-- ----------------------------------- -->
	<!-- Campo para informar o sexo do aluno -->
	<!-- ----------------------------------- -->
	Sexo:
	<input type="radio" name="sexo" value="Masculino" class="form-label">
	<label for="sexo">Masculino</label>
	<input type="radio" name="sexo" value="Feminino">
	<label for="sexo">Feminino</label>
	<br><br>
	
	<!-- ------------------------------------------------ -->
	<!-- Campo para informar o semestre que está cursando -->
	<!-- ------------------------------------------------ -->
	<label for="semestre">Semestre</label>
	<select name="semestre">
		<option value="Primeiro">Primeiro</option>
		<option value="Segundo">Segundo</option>
		<option value="Terceiro">Terceiro</option>
		<option value="Quarto">Quarto</option>
		<option value="Quinto">Quinto</option>
		<option value="Sexto">Sexto</option>
		<option value="Sétimo">Sétimo</option>
		<option value="Oitavo">Oitavo</option>
	</select>
	<br><br>
	
	<!-- ----------------------------------------------------- -->
	<!-- Botão que submete os dados do aluno, para cadastrá-lo -->
	<!-- ----------------------------------------------------- -->
	<input type="submit" value="Confirmar Cadastro">
	<br><br>
</form>


<%	//-------------------------------------------------
    // Início do código Java
    //-------------------------------------------------

    // Recupera a lista de alunos cadastrados
	List<Aluno> listaAlunos = (List<Aluno>) request.getAttribute("alunosCadastrados") ;
				
	// Se a lista esta vazia, mostra mensagem de alunos nao cadastrados			
	if(listaAlunos == null || listaAlunos.size() == 0) {			
%>

   <h2>Ainda não há alunos cadastrados.</h2>
   	
<%
	// Caso contrario, mostra tabela com os alunos cadastrados
	} else {
%>

<!-- --------------------------------------- -->
<!-- Tabela que mostra os alunos cadastrados -->
<!-- --------------------------------------- -->
<h2>Alunos Cadastrados:</h2>
<table border="1">
	<tr>
		<th>Nome</th>
		<th>Sexo</th>
		<th>Semestre</th>
	</tr>	
	
	<% 
	// Adiciona uma linha da tabela para cada aluno cadastrado
	for(Aluno aluno: listaAlunos) {	
	%>
	
	<tr>
		<td><%= aluno.getNome() %></td>
		<td><%= aluno.getSexo() %></td>
		<td><%= aluno.getSemestre() %></td>
	</tr>		
	
	<% } %>	
</table>
<% } %>

</body>
</html>