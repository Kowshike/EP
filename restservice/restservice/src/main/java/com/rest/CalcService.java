package com.rest;

import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/")
public class CalcService {
	@GET
	@Path("add/{A}/{B}")
	@Produces(MediaType.APPLICATION_JSON)
	public String add(@PathParam("A") int A,@PathParam("B") int B) {
		Integer C=A+B;
		return C.toString();
		
	}
	@POST
	@Path("sub/{A}/{B}")
	@Produces(MediaType.APPLICATION_JSON)
	public String sub
	(@PathParam("A") int A,@PathParam("B") int B) {
		Integer C=A-B;
		return C.toString();
	}
	@PUT
	@Path("mul/{A}/{B}")
	@Produces(MediaType.APPLICATION_JSON)
	public String mul(@PathParam("A") int A,@PathParam("B") int B) {
		Integer C=A*B;
		return C.toString();
	}
	@POST
	@Path("add/{A}/{B}")
	@Produces(MediaType.APPLICATION_JSON)
	public String addtion(@PathParam("A") int A,@PathParam("B") int B) {
		Integer C=A-B;
		return C.toString();
	}
	@DELETE
	@Path("div/{A}/{B}")
	@Produces(MediaType.APPLICATION_JSON)
	public String div(@PathParam("A") int A,@PathParam("B") int B)
	{
		Double C=(double)A/B;
		return C.toString();
	}
	
}
