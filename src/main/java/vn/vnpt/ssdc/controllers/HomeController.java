package vn.vnpt.ssdc.controllers;

        import org.springframework.stereotype.Controller;
        import org.springframework.ui.Model;
        import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by vietnq on 10/20/16.
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String index(Model model) {
        return "login";
    }

    @GetMapping("/voicemail")
    public String voicemail(Model model) {
        return "voicemail/voicemail";
    }

    @GetMapping("/brandcall")
    public String brandcall(Model model) {
        return "brandcall/brandcall";
    }

    @GetMapping("/outbound")
    public String outbound(Model model) {
        return "outbound/outbound";
    }

    @GetMapping("/import-cdr")
    public String importCdr(Model model) {
        return "cdr/cdr";
    }

    @GetMapping("/join-event")
    public String joinEvent(Model model) {
        return "join-event/join-event";
    }

    @GetMapping("/ucsviewer")
    public String ucsviewer(Model model) {
        return "ucsviewer/ucsviewer";
    }
}
