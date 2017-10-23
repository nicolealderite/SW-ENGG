package christianalderite;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 *
 * @author Christian
 */
@WebServlet(urlPatterns = {"/itemservlet"})
public class itemservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String type=request.getParameter("type");
        String name=request.getParameter("name");
        String description=request.getParameter("description");
        double price=Double.parseDouble(request.getParameter("price"));
        
        
        if("item".equals(type)){
            int init_quantity=Integer.parseInt(request.getParameter("init_qty"));
            
            item rentable_object = new item(1);
            rentable_object.setName(name);
            rentable_object.setInitQuantity(init_quantity);
            rentable_object.setDescription(description);
            rentable_object.setPrice(price);
            rentable_object.setDateCreated(new Date());
            
            request.setAttribute("newitem",rentable_object);
        }
        if("facility".equals(type)){
            String address=request.getParameter("address");
            
            facility rentable_object = new facility(2);
            rentable_object.setName(name);
            rentable_object.setDescription(description);
            rentable_object.setAddress(address);
            rentable_object.setPrice(price);
            rentable_object.setDateCreated(new Date());
            
            request.setAttribute("newitem",rentable_object);
        }
        
        
        RequestDispatcher rd = request.getRequestDispatcher("addItemResult.jsp");
        rd.forward(request, response);
    }
}
