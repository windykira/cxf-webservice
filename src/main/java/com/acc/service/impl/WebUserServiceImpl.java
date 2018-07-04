package com.acc.service.impl;

import com.acc.model.DcTestEntity;
import com.acc.service.WebUserService;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.w3c.dom.Document;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/3/31.
 */
@Component("webUserService")
public class WebUserServiceImpl implements WebUserService {

    public String getStatus(String id) {
        return id;
    }

    @ResponseBody
    public List<DcTestEntity> getData() {

        List<DcTestEntity> list = new ArrayList();
        DcTestEntity dcTestEntity = new DcTestEntity();
        dcTestEntity.setID(1);
        dcTestEntity.setName("中医");
        dcTestEntity.setValuen("1");
        list.add(dcTestEntity);

        DcTestEntity dcTestEntity1 = new DcTestEntity();
        dcTestEntity1.setID(2);
        dcTestEntity1.setName("西医");
        dcTestEntity1.setValuen("2");
        list.add(dcTestEntity1);

        DcTestEntity dcTestEntity2 = new DcTestEntity();
        dcTestEntity2.setID(3);
        dcTestEntity2.setName("中西医");
        dcTestEntity2.setValuen("3");
        list.add(dcTestEntity2);
        Document document = null;
        return list;
    }
}
