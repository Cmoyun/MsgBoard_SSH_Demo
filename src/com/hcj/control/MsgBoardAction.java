package com.hcj.control;

import com.hcj.model.po.MsgBoard;
import com.hcj.service.imp.MsgBoardServiceImp;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Map;

/**
 * Created by Moy on ÎåÔÂ29  029.
 */
@Controller
@Scope("prototype")
@Namespace("/MsgBoard")
@ParentPackage("struts-default")
@Results({
        @Result(name = "success", type = "dispatcher", location = "/MsgBoard.jsp"),
})
public class MsgBoardAction extends BaseAction implements ModelDriven<MsgBoard> {

    private MsgBoard msgBoard = new MsgBoard();

    HttpServletRequest request = ServletActionContext.getRequest();
    @Autowired
    private MsgBoardServiceImp service;


    //http://localhost:8080/MsgBoard/save.action?..
    @Action(
            value = "save",
            results = {
                    @Result(name = ActionSupport.SUCCESS, type = "redirectAction", location = "pageFind.action", params = {
                            "num", "1",
                            "size", "5"
                    })
            })
    public String save() throws Exception {
        service.save(getModel());
        request.setAttribute("rs", true);
        return SUCCESS;
    }

    @Action(value = "index",
            results = {
                    @Result(name = ActionSupport.SUCCESS, type = "redirectAction", location = "pageFind.action", params = {
                            "num", "1",
                            "size", "5"
                    })
            })
    public String index() {
        return SUCCESS;
    }

    //http://localhost:8080/MsgBoard/deleteById.action?ID=1
    @Action(value = "deleteById")
    public String deleteById() throws Exception {
        service.deleteById(getModel());
        request.setAttribute("rs", true);
        return SUCCESS;
    }

    //http://localhost:8080/MsgBoard/findById.action?ID=1
    @Action(value = "findById")
    public String findById() throws Exception {
        ArrayList<MsgBoard> rs = new ArrayList<MsgBoard>();
        rs.add(service.findById(getModel()));
        request.setAttribute("rs", rs);
        return SUCCESS;
    }

    //http://localhost:8080/MsgBoard/pageFind.action?num=1&size=2
    @Action(value = "pageFind")
    public String pageFind() throws Exception {
        Map<String, Object> map = service.pageFind(getModel().getNum(), getModel().getSize());
        request.setAttribute("rs", map.get("rs"));
        request.setAttribute("RsSize", map.get("RsSize"));
        request.setAttribute("QSize", map.get("QSize"));
        request.setAttribute("nowPage", map.get("nowPage"));
        request.setAttribute("numPage", map.get("numPage"));
        return SUCCESS;
    }

    @Override
    public MsgBoard getModel() {
        return msgBoard;
    }
}
