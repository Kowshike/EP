package com.rest;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.entity.Courses;
import com.model.CourseManager;

@Path("/")
public class CourseService {
	
	@POST
	@Path("save")
	@Produces(MediaType.APPLICATION_JSON)
	public String save(Courses C) {
		String response;
		try {
			CourseManager CM=new CourseManager();
			response = CM.saveData(C);
		}
		catch(Exception E) {
			response=E.getMessage();
		}
		return response;
	}
	@GET
	@Path("read")
	@Produces(MediaType.APPLICATION_JSON)
	public String read(Courses C) {
		String response;
		try {
			CourseManager CM=new CourseManager();
			response = CM.getData(C).toString();
		}
		catch(Exception E) {
			response=E.getMessage();
		}
		return response;
	}
	@PUT
	@Path("update")
	@Produces(MediaType.APPLICATION_JSON)
	public String update(Courses C) {
		String response;
		try {
			CourseManager CM=new CourseManager();
			response = CM.updateData(C).toString();
		}
		catch(Exception E) {
			response=E.getMessage();
		}
		return response;
	}

	@DELETE
	  @Path("delete/{ccode}")
	  @Produces(MediaType.APPLICATION_JSON)
	  public String delete(@PathParam("ccode") String ccode)
	  {
	    String response;
	    try
	    {
	      CourseManager CM = new CourseManager();
	      response = CM.deleteData(ccode);
	    }catch(Exception e)
	    {
	      response = e.getMessage();
	    }
	    return response;
	  }
}
