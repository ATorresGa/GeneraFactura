package cl.edutecno.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcesaFactura
 */
@WebServlet("/procesaFactura")
public class ProcesaFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcesaFactura() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nombre,empresa,rut,direccion,ciudad,pais;//se solicitan los datos de tipo string
		String valvulas,turbo,kitFreno,sistemaRefri, plumillas;//se solicitan los datos de tipo numerico para realizar los calculos
		int totalValvulas,totalTurbo,totalKit,totalSR,totalPlumillas;//se declaran los valores para calcular los totales
		//se llama inicializan las variables con los valores definidos en el formulario
		nombre=request.getParameter("nombre_completo");
		empresa=request.getParameter("nombre_empresa");
		rut=request.getParameter("rut");
		direccion=request.getParameter("direccion");
		ciudad=request.getParameter("ciudad");
		pais=request.getParameter("pais");
		valvulas=request.getParameter("cantidadValvulas");
		turbo=request.getParameter("cantidadTurbo");
		kitFreno=request.getParameter("kitFrenos");
		sistemaRefri=request.getParameter("sistemaEnfriamiento");
		plumillas=request.getParameter("plumillas");
		//fin de la inicializacion
		//inicio de los calculos para los totales de la factura
		totalValvulas=Integer.parseInt(valvulas)*120000;
		totalTurbo=Integer.parseInt(turbo)*1700000;
		totalKit= Integer.parseInt(kitFreno)*760000;
		totalSR= Integer.parseInt(sistemaRefri)*2300000;
		totalPlumillas=Integer.parseInt(plumillas)*10000;
		//fin de los calculos
		//inicio del seteo de atributos para su envio al generador de factura
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);
		request.setAttribute("cantidadValvulas", valvulas);
		request.setAttribute("cantidadTurbo", turbo);
		request.setAttribute("cantidadKitFrenos", kitFreno);
		request.setAttribute("SistemaEnfriamiento", sistemaRefri);
		request.setAttribute("plumillas", plumillas);
		request.setAttribute("totalValvulas", totalValvulas);
		request.setAttribute("totalTurbo", totalTurbo);
		request.setAttribute("totalKit", totalKit);
		request.setAttribute("totalSR", totalSR);
		request.setAttribute("totalPlumillas", totalPlumillas);
		//fin del seteo de los atributos
		request.getRequestDispatcher("/GeneraFactura").forward(request, response);

	}

}
