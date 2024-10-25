package com.example;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.Calendar;

public class MyTagHandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {


        JspWriter jspWriter = pageContext.getOut();

        try {
            jspWriter.print(Calendar.getInstance().getTime());
        } catch (Exception e) {
            e.printStackTrace();

        }


        return SKIP_BODY;
    }
}
