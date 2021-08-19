package cl.edutecno.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GeneraFactura
 */
@WebServlet("/GeneraFactura")
public class GeneraFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GeneraFactura() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//casteo de los datos de tipo string
		String nombre = (String) request.getAttribute("nombre");
		String empresa = (String) request.getAttribute("empresa");
		String rut = (String) request.getAttribute("rut");
		String direccion = (String) request.getAttribute("direccion");
		String ciudad = (String) request.getAttribute("ciudad");
		String pais = (String) request.getAttribute("pais");
		String cantidadValvulas = (String) request.getAttribute("cantidadValvulas");
		String cantidadTurbo = (String) request.getAttribute("cantidadTurbo");
		String cantidadKitFrenos = (String) request.getAttribute("cantidadKitFrenos");
		String SistemaEnfriamiento = (String) request.getAttribute("SistemaEnfriamiento");
		String plumillas = (String) request.getAttribute("plumillas");
		//fin del casteo de los datos de tipo string
		int numeroFactura,idFactura;//declaracion de los datos para generar los numeros random
		//casteo de los datos de tipo int
		int totalValvulas = (int) request.getAttribute("totalValvulas");
		int totalTurbo = (int) request.getAttribute("totalTurbo");
		int totalKit = (int) request.getAttribute("totalKit");
		int totalSR = (int) request.getAttribute("totalSR");
		int totalPlumillas = (int) request.getAttribute("totalPlumillas");
		//fin del casteo de los datos de tipo int}
		//calculo totales
		int subTotal= totalValvulas+totalTurbo+totalKit+totalSR+totalPlumillas;
		int desct=(subTotal*10)/100;
		int total= subTotal-desct;
		//fin de calculos
		//generacion de los datos random
		numeroFactura = (int) Math.floor(Math.random()*99999);
		idFactura=(int) Math.floor(Math.random()*9999999);
		//fin de la generacion
		//inicio del seteo de atributos para su envio al generador de factura
				request.setAttribute("nombre", nombre);
				request.setAttribute("empresa", empresa);
				request.setAttribute("rut", rut);
				request.setAttribute("direccion", direccion);
				request.setAttribute("ciudad", ciudad);
				request.setAttribute("pais", pais);
				request.setAttribute("cantidadValvulas", cantidadValvulas);
				request.setAttribute("cantidadTurbo", cantidadTurbo);
				request.setAttribute("cantidadKitFrenos", cantidadKitFrenos);
				request.setAttribute("SistemaEnfriamiento", SistemaEnfriamiento);
				request.setAttribute("plumillas", plumillas);
				request.setAttribute("totalValvulas", totalValvulas);
				request.setAttribute("totalTurbo", totalTurbo);
				request.setAttribute("totalKit", totalKit);
				request.setAttribute("totalSR", totalSR);
				request.setAttribute("totalPlumillas", totalPlumillas);
				request.setAttribute("subTotal", subTotal);
				request.setAttribute("total", total);
				request.setAttribute("numeroFactura", numeroFactura);
				request.setAttribute("idFactura", idFactura);
				//fin del seteo de los atributos
		request.getRequestDispatcher("Factura.jsp").forward(request, response);
	}

}
