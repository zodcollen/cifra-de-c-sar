Projeto Forum Unidade 1 - Cadastro de Alunos 🎓
Este é um projeto Java Web simples desenvolvido como parte de uma atividade acadêmica. Ele permite o cadastro de alunos através de uma interface web e exibe a lista de alunos cadastrados em tempo real na mesma página.

Tecnologias Utilizadas
Java 11: Linguagem de programação principal.

Jakarta Servlet: Para o controle das requisições e lógica de back-end.

JSP (JavaServer Pages): Para a criação da interface dinâmica.

Apache Tomcat v11.0: Servidor de aplicações para rodar o projeto.

Eclipse IDE: Ambiente de desenvolvimento utilizado.

Funcionalidades
Formulário de Cadastro: Captura o nome, sexo e semestre do aluno.

Processamento de Dados: Um Servlet recebe os dados, cria um objeto Aluno e o adiciona a uma lista.

Exibição Dinâmica: A tabela na página principal (index.jsp) é atualizada automaticamente a cada novo cadastro.

Persistência em Memória: Os dados são armazenados durante a sessão da aplicação.

Estrutura do Projeto
src/br/catolica/dominio/Aluno.java: Classe de modelo (POJO) que representa o aluno.

src/br/catolica/CadastrarAlunoServlet.java: Controlador que gerencia o fluxo de cadastro e redirecionamento.

WebContent/index.jsp: Página principal contendo o formulário e a tabela de resultados.

Como rodar o projeto
Faça o clone do repositório.

Importe o projeto no Eclipse IDE (como um Existing Project).

Certifique-se de ter o Apache Tomcat 11 configurado no seu Eclipse.

Clique com o botão direito no projeto > Run As > Run on Server.

Acesse http://localhost:8080/ProjetoForumUnidade1 no seu navegador.

Dica para o seu GitHub:
Para adicionar esse arquivo ao seu projeto agora:

No Eclipse, clique com o botão direito na pasta principal do projeto.

Vá em New > File.

Digite o nome: README.md.

Cole o texto acima e salve.

Faça o Commit e o Push (como fizemos antes) para atualizar o GitHub!
