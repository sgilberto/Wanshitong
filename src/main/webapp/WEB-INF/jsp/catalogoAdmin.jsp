<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="path" value="${pageContext.servletContext.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<sec:csrfMetaTags />

<!-- Header -->
<jsp:include page="header.jsp" />

<!-- Javascript -->
<link rel="stylesheet" href="${path}/resources/css/catalogoAdmin.css"
	type="text/css" media="all">
<script src="https://api.filestackapi.com/filestack.js"></script>
<script src="${path}/resources/js/alertUtils.js"></script>
<script src="${path}/resources/js/admin.js"></script>
<script src="${path}/resources/js/serviceAdmin.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css"
	type="text/css" media="all">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.13/css/dataTables.material.min.css"
	type="text/css" media="all">
<script
	src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.13/js/dataTables.material.min.js"></script>

<!-- Body -->
<body>


	<jsp:include page="menu.jsp"></jsp:include>

	<div class="container-fluid main">
		<div class="row">
			<div class="messages-list span12"></div>
		</div>

		<div class="row">
			<button type="button" class="btn btn-success btn-lg"
				id="btnModalAgregarLibro">Agregar Libro</button>
		</div>

		<!-- Catalogo -->
		<div class="row">
			<div id="movies_catalog">
				<div id="catalog_scroller">
					<c:if test="${fn:length(libros)>0}">
						<section id="sectionTable">

							<table id="tablaLibros" class="mdl-data-table" cellspacing="0"
								width="100%">
								<thead>
									<tr>
										<td class="text-left" width="*">Titulo</td>
										<td class="text-left" width="*">Autor</td>
										<td class="text-left" width="*">Genero</td>
										<td class="text-left" width="5%">&nbsp;</td>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${libros}" var="libro" varStatus="status">
										<tr id="libro_${status.index}" data-id="${libro.id}">
											<td><c:out value="${libro.titulo}" /></td>
											<td><c:out value="${libro.autor}" /></td>
											<td><c:out value="${libro.genero}" /></td>
											<td width="5%">
												<button class="btn btn-danger text-center btnEliminarLibro"
													type="button">X</button>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</section>
					</c:if>
				</div>
			</div>
		</div>

		<!-- Modal Add Book -->
		<jsp:include page="modalAgregarLibro.jsp"></jsp:include>

		<!-- Modal Add Book -->
		<jsp:include page="modalConfirmacion.jsp"></jsp:include>

	</div>
</body>
</html>
