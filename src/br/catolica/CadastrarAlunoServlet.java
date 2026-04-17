package br.catolica;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import br.catolica.dominio.Aluno;

//---------------------------------------------------------
/** Servlet chamado para cadastrar um novo aluno */
//---------------------------------------------------------
@WebServlet("/CadastrarAlunoServlet")
public class CadastrarAlunoServlet extends HttpServlet {
	
	//------------------------------------------------------------------
	/** Processa qualquer tipo de requisicao http enviada ao servlet */
	//------------------------------------------------------------------
	//protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//processarRequisicao(request, response) ;
	//}

//	//-------------------------------------------------------------
//	/** Processa a requisicao http GET enviada ao servlet */
//	//-------------------------------------------------------------	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}
//	
//	
//	//-------------------------------------------------------------
//	/** Processa a requisicao http POST enviada ao servlet */
//	//-------------------------------------------------------------	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processarRequisicao(request, response);
	}
	
	//-------------------------------------------------------------
	/** Trata a requisicao enviada ao servlet */
	//-------------------------------------------------------------	
	private void processarRequisicao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Recupera os dados que informados no formulario de cadastro
		String nome = request.getParameter("nome") ;
		String sexo = request.getParameter("sexo") ;
		String semestre = request.getParameter("semestre") ;
		
		// Guarda os dados recuperados em um novo objeto do tipo Aluno
		Aluno novoAluno = new Aluno() ;
		novoAluno.setNome(nome);
		novoAluno.setSexo(sexo);
		novoAluno.setSemestre(semestre);
		
		// Define onde a lista de alunos est� armazenada (na sessao do usu�rio ou na requisicao) 
		//HttpSession escopoLista = request.getSession() ;
		HttpServletRequest escopoLista = request ;
		
		// Recupera a lista de alunos j� cadastrados		
		List<Aluno> listaAlunos = (List<Aluno>) escopoLista.getAttribute("listaAlunos") ;
		if(listaAlunos == null) {
			listaAlunos = new ArrayList<>();
		}
		
		// Adiciona o novo aluno na lista de alunos cadastrados 		
		listaAlunos.add(novoAluno) ;
		
		// Guarda a lista atualizada na sessao (ou requisicao)
		escopoLista.setAttribute("listaAlunos", listaAlunos);
		
		// Colocamos tamb�m a lista no request, para podermos exibir na tabela de alunos
		request.setAttribute("alunosCadastrados", listaAlunos);
		
		// E encaminhamos a requisicao para a tela que cont�m a tabela de alunos
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);		
	}


}
