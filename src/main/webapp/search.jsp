<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.SearchResult"%>


<html>
<head>
   <link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
<h1 style="background-color:#C4A484;">Result</h1>
  <div class = "searchEngine">
  <form action = "Search">
    <input type="text" name = "keyword"></input>
    <button type="submit">Search</button>
  </form>
  </div>
  <div class "BackButton">
   <button type="button" name="Back" onclick="history.back()">Back</button>
   </div>
   <div class "ForwardButton">
   <button type="button" name="Forward" onclick="history.forward()">Forward</button>
   </div>
    <div class "HistoryButton">
  <form action = "History">
         <button href = "submit">History</button>
      </form>
      </div>

    <div class = "resultTable">
    <table border = 2>
      <tr>
        <td>Name</td>
        <td>Link</td>
      </tr>
       <%
          ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
          for(SearchResult result : results){
       %>
      <tr>
         <td><%out.println(result.getTitle());%></td>
         <td><a href = "%out.println(result.getLink());%"><%out.println(result.getLink());%></a></td>
      </tr>
      <%
        }
      %>

    </table>
    </div>
</body>
</html>
