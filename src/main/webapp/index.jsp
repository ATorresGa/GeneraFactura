<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="assets/css/style.css">
        <title>Inicio</title>
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
    </header>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <form action="procesaFactura" method="POST" id="formulario-factura">
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="nombreCompleto" class="form-label">Nombre Completo</label><label
                                    class="requerido" id="rnom">*</label>
                                <input type="text" class="form-control" name="nombre_completo" id="nombre"
                                    placeholder="Pedro Plaza" required>
                            </div>
                            <div class="form-group col-4">
                                <label for="empresa" class="form-label">Empresa</label><label class="requerido"
                                    id="remp">*</label>
                                <input type="text" class="form-control" id="empresa" name="nombre_empresa"
                                    placeholder="Mi empresa" required>
                            </div>
                            <div class="form-group col-4">
                                <label for="rut" class="form-label" required>Rut</label><label class="requerido"
                                    id="rrut">*</label>
                                <input type="text" class="form-control" name="rut" id="rut" placeholder="11111111-1" required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-4">
                                <label for="direccion" class="form-label">Dirección</label><label class="requerido"
                                    id="rdir">*</label>
                                <input type="text" name="direccion" id="direccion" class="form-control"
                                    placeholder="Las parcelas 14" required>
                            </div>
                            <div class="form-group col-4">
                                <label for="ciuidad" class="form-label">Ciuidad</label><label class="requerido"
                                    id="rciu">*</label>
                                <input type="text" name="ciudad" id="ciudad" class="form-control"
                                    placeholder="Coquimbo" required>
                            </div>
                            <div class="form-group col-4">
                                <label for="pais" class="form-label">País</label><label class="requerido"
                                    id="rpai">*</label>
                                <input type="text" name="pais" id="pais" class="form-control" placeholder="Chile" required>
                            </div>
                            <div>
                                <table class="table table-success table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">Item</th>
                                            <th scope="col">Descripcion</th>
                                            <th scope="col">Valor unidad</th>
                                            <th scope="col">Cantidad</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">Valvulas de titanio</th>
                                            <td>Vavalvulas de carrera</td>
                                            <td>$120.000</td>
                                            <td><input type="text" name="cantidadValvulas" placeholder="1"
                                                    id="valvulas-titanio" required><label class="requerido" id="rvt">*</label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Turbo Full Carrera</th>
                                            <td>Turbo de competición multimarca</td>
                                            <td>$1.700.000</td>
                                            <td><input type="text" name="cantidadTurbo" placeholder="3"
                                                    id="turbo-carrera" required><label class="requerido" id="rtc" >*</label></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Kit de Freno de Competición</th>
                                            <td>Juego de discos, balatas, caliper de competición</td>
                                            <td>$760.000</td>
                                            <td><input type="text" name="kitFrenos" placeholder="4"
                                                    id="kit-freno" required><label class="requerido" id="rkf" >*</label></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Sistema de refigeración</th>
                                            <td>Sistema de enfriamiento motor Carrera</td>
                                            <td>$2.300.000</td>
                                            <td><input type="text" name="sistemaEnfriamiento" placeholder="5"
                                                    id="sistema-refrigeracion" required><label class="requerido"
                                                    id="rsen">*</label></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Plumillas Limpiaparabrisas standar</th>
                                            <td>Plumillas para la lluvia</td>
                                            <td>$10.000</td>
                                            <td><input type="text" name="plumillas" id="plumillas" placeholder="7" required><label
                                                    class="requerido" id="rplum">*</label></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                </div>
                <button type="submit" class="btn btn-success" id="valida-rut">Generar Factura</button>
                <button type="button" class="btn btn-secundary" id="btn-limpiar">Limpiar</button>
                </form>
            </div>
        </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
            crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="assets/js/script.js"></script>
    </body>

    </html>