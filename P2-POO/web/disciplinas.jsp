<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Disciplina>disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    if(disciplinaList == null){
      disciplinaList = new ArrayList<>();  
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Banco de Dados","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Engenharia de Software III","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Programação Orientada a Objetos","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Linguagem de Programação IV - INTERNET","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Segurança da Informação","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Sistemas Operacionais II","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Inglês IV","ementa", 4, 10));
      disciplinaList.add(new Disciplina("Guilherme Barbosa dos Santos", 12345678910111213L, 8, "Metodologia da Pesquisa Científico-Tecnológica","ementa", 4, 10));
      application.setAttribute("disciplinaList", disciplinaList);
    }
    if(request.getParameter("troca")!=null){
        int i = Integer.parseInt(request.getParameter("i"));
        Disciplina alt = disciplinaList.get(i);
        try{
            alt.setNota(Double.parseDouble(request.getParameter("novanota")));
        }catch (Exception ex){
            alt.setNota(0.0);
        }
        response.sendRedirect(request.getRequestURI());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>P1 de POO</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h1>P1 de POO</h1>
        <h1>Disciplinas</h1>
        <hr>
        <table border="1">
            <hr/>
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Editar</th>
            </tr>
            <%for(int i=0; i<disciplinaList.size();i++){%>
            </tr>
            <tr>
            <% Disciplina d = disciplinaList.get(i);%>
            <td><%=d.getName()%></td>
            <td><%=d.getEmenta()%></td>
            <td><%=d.getCiclo()%></td>
            <td><%=d.getNota()%></td>
            <td>
                <form>
                    <input type="text" name="novanota"/>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <input type="submit" name="troca" value="Salvar"/>
                </form>        
            </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
