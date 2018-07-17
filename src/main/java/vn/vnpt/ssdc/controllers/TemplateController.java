package vn.vnpt.ssdc.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class TemplateController {
    @Autowired
    protected HttpSession session;

    private Logger logger = LoggerFactory.getLogger(TemplateController.class);

    @GetMapping("/templates/tables")
    public String tables(Model model) {
        return "templates/tables/table";
    }

    @GetMapping("/templates/forms")
    public String forms(Model model) {
        return "templates/forms/form";
    }

    @GetMapping("/templates/forms-tuanha")
    public String formsHaidt(Model model) {
        return "templates/forms/form-tuanha";
    }

    @GetMapping("/templates/tuanhaGet")
    @ResponseBody
    public String tuanhaGet(@RequestParam Map<String, String> requestParams) {
        System.out.println(requestParams.get("text"));
        System.out.println(requestParams.get("number"));
        System.out.println(requestParams.get("date"));
        System.out.println(requestParams.get("datetime"));
        System.out.println(requestParams.get("select"));
        System.out.println(requestParams.get("select2"));
        System.out.println(requestParams.get("radio-inline-left"));
        System.out.println(requestParams.get("checkbox"));
        System.out.println(requestParams.get("multiSelect2"));
        System.out.println(requestParams.get("multiSelect1"));
        return "Done";
    }
}
