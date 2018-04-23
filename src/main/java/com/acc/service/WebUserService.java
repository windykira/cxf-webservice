package com.acc.service;

import com.acc.model.DcTestEntity;
import org.springframework.web.bind.annotation.RequestParam;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

/**
 * Created by Administrator on 2018/3/31.
 */
@Path("/webUser")
public interface WebUserService {

    @GET
    @Path("/getWebUserStatus/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public String getStatus(@PathParam("id") String id);

    @GET
    @Path("/getData")
    @Produces(MediaType.APPLICATION_JSON)
    public List<DcTestEntity> getData();
}
