package vn.vnpt.ssdc.parser;

import vn.vnpt.ssdc.voiceMail.entity.CdrCall;
import vn.vnpt.ssdc.voiceMail.entity.JoinEvent;

import java.io.InputStream;
import java.util.List;

public interface Parser {

    public String fileExtension();

    public List<CdrCall> parse(InputStream inputStream);

    public List<JoinEvent> parseJoinEvent(InputStream inputStream);
}
