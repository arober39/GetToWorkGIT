package GetToWorkServer.GetToWork;

import com.google.appengine.api.urlfetch.URLFetchServicePb.URLFetchRequest.RequestMethod;
//import com.google.appengine.api.taskqueue.TaskQueuePb.TaskQueueAddRequest.RequestMethod;
import com.google.appengine.api.utils.SystemProperty;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "ResumeParser", value = "/resumeparser")
public class ResumeParser extends HttpServlet {

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws IOException {

    Properties properties = System.getProperties();
    PrintWriter out = response.getWriter();
    
    out.println(request.getParameter("fileToUpload").toString());
    //request.getParameter("fileToUpload").
    response.setContentType("text/plain");
    response.getWriter().println("Hello App Engine - Standard using "
        + SystemProperty.version.get() + " Java " + properties.get("java.specification.version"));
  }

  @Override
  public void doPost(HttpServletRequest req, HttpServletResponse res)
		  throws ServletException, IOException {
	  
	  ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
	  try {
		List<FileItem> fileitem = sf.parseRequest(req);
		for(FileItem item: fileitem) {
			  item.toString();
		  }
	} catch (FileUploadException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
	  
	  
  }
  
  public static String getInfo() {
    return "Version: " + System.getProperty("java.version")
          + " OS: " + System.getProperty("os.name")
          + " User: " + System.getProperty("user.name");
  }
  


}
