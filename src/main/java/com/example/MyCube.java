package com.example;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyCube extends TagSupport {


    private int number;

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public int doStartTag() throws JspException {

        JspWriter jspWriter = pageContext.getOut();

        try {
            jspWriter.print(number*number*number);
        } catch (Exception e) {
            e.printStackTrace();

        }


        return SKIP_BODY;
    }
}
