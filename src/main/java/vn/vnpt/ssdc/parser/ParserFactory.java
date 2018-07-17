package vn.vnpt.ssdc.parser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import java.util.ArrayList;
import java.util.List;

@Component
public class ParserFactory {

    private List<Parser> parsers = new ArrayList<>();

    @Autowired
    public ParserFactory(TxtParser txtParser, XlsxParser xlsxParser) {
        this.parsers.add(txtParser);
        this.parsers.add(xlsxParser);
    }

    public Parser getParser(String fileName) throws FileTypeNotSupportedException {
        Parser parser = null;
        for(Parser supportedParser : this.parsers) {
            if(fileName.endsWith(supportedParser.fileExtension())) {
                parser = supportedParser;
                break;
            }
        }
        if(parser == null) {
            throw new FileTypeNotSupportedException("File " + fileName + " is not supported");
        }
        return parser;
    }

}
