package main.java.customtag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.util.Calendar;

public class MyTagHandler extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        try{
            out.print(Calendar.getInstance().getTime());
            out.print("<br>Myrzakanov Daniyar");
        } catch (Exception e){
            System.out.println(e);
        }
        return SKIP_BODY;
    }
}
