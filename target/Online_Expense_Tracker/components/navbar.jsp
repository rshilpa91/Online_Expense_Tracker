<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <a class="navbar-brand" href="#"><i class="fa-solid fa-money-check"></i>Expense Tracker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
    		aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M11.5 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L11 2.707V14.5a.5.5 0 0 0 .5.5zm-7-14a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V1.5a.5.5 0 0 1 .5-.5z"/>
</svg>
</span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        
	<c:if test="${ empty loginUser }">
          
          <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Home </a></li>
         
                
          </c:if>
               	 
          <c:if test="${not empty loginUser }">
          
          <li class="nav-item">
          <a class="nav-link active" href="home.jsp">Home </a></li>
          
          <li class="nav-item">
          <a class="nav-link active" href="add_expense.jsp">
          <i class="fa-solid fa-plus"></i>Add Expense</a></li>
         
        <li class="nav-item">
          <a class="nav-link active" href="view_expense.jsp"
          	 tabindex="-1"><i class="fa-solid fa-list"></i>View Expense</a></li>
          	 
          	 <li class="nav-item">
          <a class="nav-link active" href="chart_view.jsp"
          	 tabindex="-1"><i class="fa-solid fa-pie-chart"></i>Expense Chart</a></li>
                
          </c:if>	 
           	 
      </ul>
      
      
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
	<c:if test="${not empty loginUser }">
	
	<li class="nav-item">
          <a class="nav-link active" href="#">
          <i class="fa-solid fa-circle-user"></i>
          ${loginUser.fullName} </a></li>
         
        <li class="nav-item">
        <a class="nav-link active" 
        href="../logout" tabindex="-1"><i class="fa-solid fa-right-to-bracket"></i>Logout</a>
        
        </li>
	</c:if>
      
      
	<c:if test="${ empty loginUser }">
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp">
          <i class="fa-solid fa-right-to-bracket"></i>Login</a></li>
         
        <li class="nav-item">
          <a class="nav-link active" href="register.jsp"
          	 tabindex="-1"><i class="fa-solid fa-user-plus"></i>Register</a></li>
     </c:if>
      </ul>
      
      
    </div>
  </div>
</nav>