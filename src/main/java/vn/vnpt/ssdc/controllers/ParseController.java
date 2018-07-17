package vn.vnpt.ssdc.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import vn.vnpt.ssdc.voiceMail.entity.CdrCall;
import vn.vnpt.ssdc.parser.*;
import vn.vnpt.ssdc.utility.CdrCallExcelView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/api")
public class ParseController {
//    private static final String URL = "/log";
    private static final Logger logger = LoggerFactory.getLogger(ParseController.class);
    private static Map<Integer,CdrCall> cdrData = new HashMap<Integer,CdrCall>();
    @Autowired
    ParserFactory parserFactory;

    @PostMapping("/upload-file")
    @ResponseBody
    public String uploadFile(@RequestParam Map<String, String> params,
                             @RequestParam(value = "file", required = false) MultipartFile externalFile) {
        String message = "";
        cdrData = new HashMap<Integer,CdrCall>();
        try {
                List<CdrCall> cdrCalls = getExternalDevices(externalFile);
                if(cdrCalls != null) {
                    int stt =0;
                    for (CdrCall cdrCall:cdrCalls){
                        cdrData.put(stt,cdrCall);
                        stt++;
                    }
                }
        } catch (FileFormatException | FileTypeNotSupportedException e) {
            message = e.getMessage();
        } catch (IOException e) {
            message = "FILE ERROR";
            e.printStackTrace();
        }
        return message;
    }

    @CrossOrigin
    @GetMapping(path = "/result") // Map ONLY GET Requests
    public @ResponseBody
    ModelAndView getResult(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType( "application/ms-excel" );
        response.setHeader( "Content-disposition", "attachment; filename=CdrCall.xls" );
        return new ModelAndView(new CdrCallExcelView(),"cdrData",cdrData);
    }

    private List<CdrCall> getExternalDevices(MultipartFile multipartFile) throws FileTypeNotSupportedException, IOException {
        if (multipartFile != null && !multipartFile.getOriginalFilename().isEmpty()) {
            Parser parser = null;
            parser = (Parser) parserFactory.getParser(multipartFile.getOriginalFilename().toLowerCase());
            return parser.parse(multipartFile.getInputStream());
        }
        return null;
    }

}
