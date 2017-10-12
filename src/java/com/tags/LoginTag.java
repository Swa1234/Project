/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tags;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author ngquangdat
 */
public class LoginTag extends SimpleTagSupport {

    private String url;
    private String message;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            PageContext context = (PageContext) getJspContext();
            HttpServletRequest request = (HttpServletRequest) context.getRequest();
            HttpServletResponse response = (HttpServletResponse) context.getResponse();
            HttpSession session = context.getSession();
            if(session.getAttribute("LoginUser")==null){
                session.setAttribute("LoginError", message);
                response.sendRedirect(url);
            }
            
        } catch (java.io.IOException ex) {
            throw new JspException("Error in LoginTag tag", ex);
        }
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
}
