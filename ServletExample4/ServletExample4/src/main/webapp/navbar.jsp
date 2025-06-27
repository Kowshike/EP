<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Managing App</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous"/>
 <link rel="stylesheet" href="css/nav.css"/>
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'/>
</head>
<body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen' ></i>
            <span class="logo navLogo"><a action="home.xhtml">AKV APP</a></span>
            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a action="home.xhtml">EM App</a></span>
                    <i class='bx bx-x siderbaSrClose'></i>
                </div>
                <ul class="nav-links">
                    <li><a href="home.jsp" style="color:white;" >Home</a></li>
                    <li><a href="aboutus.jsp" style="color:white;" >About</a></li>
                  <li>
    <select class="select" onchange="redirectToPage(this)">
        <option class="select-option">Crud</option>
        <option class="select-option">Delete</option>
        <option class="select-option">Update</option>
        <option class="select-option">Insert</option>
        <option class="select-option">View</option>
    </select>
</li>

<!-- Add this script at the end of your HTML file or within a <script> tag -->
<script>
    function redirectToPage(selectElement) {
        var selectedOption = selectElement.value;

        // You can define the redirection URLs for each option here
        var redirectionURL = "";
        switch (selectedOption) {
            case "Crud":
                // Redirection URL for Crud option (e.g., addemployee.jsp)
                redirectionURL = "viewemployee.jsp";
                break;
            case "Delete":
                // Redirection URL for Delete option (e.g., deleteemployee.jsp)
                redirectionURL = "deleteemployee.jsp";
                break;
            case "Update":
                // Redirection URL for Update option (e.g., updateemployee.jsp)
                redirectionURL = "updateemployee.jsp";
                break;
            case "Insert":
                // Redirection URL for Insert option (e.g., insertemployee.jsp)
                redirectionURL = "addemployee.jsp";
                break;
            case "View":
                // Redirection URL for View option (e.g., viewemployee.jsp)
                redirectionURL = "viewemployee.jsp";
                break;
            default:
                // If no option is selected or an invalid option is chosen, do nothing.
                return;
        }

        // Redirect to the selected page
        window.location.href = redirectionURL;
    }
</script>

                    <li><a href="home.jsp" style="color:white;" >Services</a></li>
          <%
				String uid = (String)session.getAttribute("loginstatus");
				if (uid == null)
				{
		%>
                    <li><a href="login.jsp" style="color:white;" >Login/SignUp</a></li>
                    <%	
				}
				else
				{
					%>
					 <li><a href="login.jsp" style="color:white;" >	welcome <%= uid %></a></li>
					 <li><a href="logout" style="color:white;" >	LogOut</a></li>
			
				<%}
		%>
                </ul>
            </div>
      <div class="darkLight-searchBox">
                <div class="dark-light">
                    <i class='bx bx-moon moon'></i>
                    <i class='bx bx-sun sun'></i>
                </div>
         
            </div>
        </div>
    </nav>
    <script>
const body = document.querySelector("body"),
      nav = document.querySelector("nav"),
      modeToggle = document.querySelector(".dark-light"),
      searchToggle = document.querySelector(".searchToggle"),
      sidebarOpen = document.querySelector(".sidebarOpen"),
      siderbarClose = document.querySelector(".siderbarClose");
      let getMode = localStorage.getItem("mode");
          if(getMode && getMode === "dark-mode"){
            body.classList.add("dark");
          }
// js code to toggle dark and light mode
      modeToggle.addEventListener("click" , () =>{
        modeToggle.classList.toggle("active");
        body.classList.toggle("dark");
        // js code to keep user selected mode even page refresh or file reopen
        if(!body.classList.contains("dark")){
            localStorage.setItem("mode" , "light-mode");
        }else{
            localStorage.setItem("mode" , "dark-mode");
        }
      });
// js code to toggle search box
        searchToggle.addEventListener("click" , () =>{
        searchToggle.classList.toggle("active");
      });
 
      
//   js code to toggle sidebar
sidebarOpen.addEventListener("click" , () =>{
    nav.classList.add("active");
});
body.addEventListener("click" , e =>{
    let clickedElm = e.target;
    if(!clickedElm.classList.contains("sidebarOpen") && !clickedElm.classList.contains("menu")){
        nav.classList.remove("active");
    }
});
</script>
</body>
</html>