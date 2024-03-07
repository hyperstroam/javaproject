<%!
int eid;
String ename;
float esal;
String eaddr;
%>
<%
eid=Integer.parseInt(request.getParameter("eid"));
ename=request.getParameter("ename");
esal=Float.parseFloat(request.getParameter("esal"));
eaddr=request.getParameter("eaddr");
%>


<jsp:useBean id="emp" class="com.softronix.bean.Employee" scope ="session">



<jsp:setProperty property="eid"  name="emp" value='<%=eid %>'/>
<jsp:setProperty property="ename"  name="emp" value='<%=ename %>'/>
<jsp:setProperty property="esal"  name="emp" value='<%=esal %>'/>
<jsp:setProperty property="eaddr"  name="emp" value='<%=eaddr %>'/>

<body>
<h1 style="color: blue;" align="center">Softronix IT Training</h1>

<h2 style="color: red;" align="center">Employee Registration Form</h2>

	

			<table align="center">

				

					<td><h3>Employee ID</h3></td>

					<td><jsp:getProperty property ="eid" name ="emp"/></td>

				</tr>

					<tr>

					<td><h3>Employee Name</h3></td>

					<td><jsp:getProperty property ="ename" name ="emp"/></td>

				</tr>

				<tr>

				<tr>

					<td><h3>Employee Salary</h3></td>

					<td><jsp:getProperty property ="esal" name ="emp"/></td>

				</tr>

				<tr>

					<td><h3>Employee Address</h3></td>

					<td><jsp:getProperty property ="eaddr" name ="emp"/></td>

				</tr>

				<tr>

					

					<td><input type="submit" value="Registration"/></td>

				</tr>

				

				

			</table>

</body>

</jsp:useBean>

 


