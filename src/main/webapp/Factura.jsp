<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<% //casteo de los datos de tipo string
	String nombre=(String) request.getAttribute("nombre");
	String empresa=(String) request.getAttribute("empresa"); 
	String rut=(String) request.getAttribute("rut"); 
	String	direccion=(String) request.getAttribute("direccion"); 
	String ciudad=(String) request.getAttribute("ciudad");
	String pais=(String) request.getAttribute("pais"); 
	String cantidadValvulas=(String)request.getAttribute("cantidadValvulas");
	String cantidadTurbo=(String) request.getAttribute("cantidadTurbo");
	String cantidadKitFrenos=(String) request.getAttribute("cantidadKitFrenos");
	String SistemaEnfriamiento=(String)request.getAttribute("SistemaEnfriamiento");
	String plumillas=(String) request.getAttribute("plumillas"); 
	//findel casteo de los datos de tipo string 
	//casteo de los datos de tipo int 
	int totalValvulas=(int) request.getAttribute("totalValvulas");
	int totalTurbo=(int) request.getAttribute("totalTurbo");
	int	totalKit=(int) request.getAttribute("totalKit");
	int totalSR=(int) request.getAttribute("totalSR"); 
	int	totalPlumillas=(int) request.getAttribute("totalPlumillas");
	int subTotal=(int)request.getAttribute("subTotal");
	int total=(int) request.getAttribute("total"); 
	int numeroFactura=(int)	request.getAttribute("numeroFactura");
	int idFactura=(int) request.getAttribute("idFactura");
	//fin del casteo de los datos de tipo int 
	%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/style.css">
<title>Factura</title>
</head>
<header>
	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4"></div>
			<div class="col-4 aliniamiento-superior">
				<h6>Generador Factura 2021</h6>
				<h6>Competition Part Ltda.</h6>
				<p class="fuente-anio">Año 2021 Ago JC</p>
			</div>
		</div>
	</div>
	<br><br>
	<div class="container">
		<div class="row">
			<div class="col-4">
				<h6>Información del cliente</h6>
				<br>
				<p>
					<%=nombre%>
				</p>
				<p>
					<%=empresa%>
				</p>
				<br>
				<p>
					<%=ciudad+" ,"+pais%>
				</p>
				<p>
					<%=direccion%>
				</p>
			</div>
			<div class="col-4"></div>
			<div class="col-4">
				<h6>Detalles de pago</h6>
				<br>
				<p>
					Numero de factura: <strong><%=numeroFactura%></strong>
				</p>
				<p>
					ID Factura: <strong><%=idFactura%></strong>
				</p>
				<p>
					Tipo Pago:<strong>Dinero</strong>
				</p>
				<p>
					Empresa: <strong>Importadora</strong>
				</p>
			</div>
		</div>
	</div>
</header>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-12">
						<table class="table table-success table-striped">
							<thead>
								<tr>
									<th scope="col">Item</th>
									<th scope="col">Descripcion</th>
									<th scope="col">Valor unidad</th>
									<th scope="col">Cantidad</th>
									<th scope="col">Valor Total</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">Valvulas de titanio</th>
									<td>Vavalvulas de carrera</td>
									<td>$120.000</td>
									<td><%=cantidadValvulas%></td>
									<td><%=totalValvulas%></td>
								</tr>
								<tr>
									<th scope="row">Turbo Full Carrera</th>
									<td>Turbo de competición multimarca</td>
									<td>$1.700.000</td>
									<td><%=cantidadTurbo%></td>
									<td><%=totalTurbo%></td>
								</tr>
								<tr>
									<th scope="row">Kit de Freno de Competición</th>
									<td>Juego de discos, balatas, caliper de competición</td>
									<td>$760.000</td>
									<td><%=cantidadKitFrenos%></td>
									<td><%=totalKit%></td>
								</tr>
								<tr>
									<th scope="row">Sistema de refigeración</th>
									<td>Sistema de enfriamiento motor Carrera</td>
									<td>$2.300.000</td>
									<td><%=SistemaEnfriamiento%></td>
									<td><%=totalSR%></td>
								</tr>
								<tr>
									<th scope="row">Plumillas Limpiaparabrisas standar</th>
									<td>Plumillas para la lluvia</td>
									<td>$10.000</td>
									<td><%=plumillas%></td>
									<td><%=totalPlumillas%></td>
								</tr>
							</tbody>
						</table>
						<table class="table table-sucess table-striped">
							<thead>
								<tr>
									<th scope="col">                      </th>
									<th scope="col">Valor total neto</th>
									<th scope="col">Descuento</th>
									<th scope="col">Valor Total</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row"></th>
									<tr><%=subTotal%></tr>
									<tr>10%></tr>
									<tr><%=total%></tr>
								</tr>
							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script src="assets/js/script.js"></script>
</body>

</html>