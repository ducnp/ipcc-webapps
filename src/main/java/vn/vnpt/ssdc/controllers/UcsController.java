package vn.vnpt.ssdc.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import vn.vnpt.ssdc.cfg_idb_01.CfgConnection;
import vn.vnpt.ssdc.parser.ParserFactory;
import vn.vnpt.ssdc.ucs.entity.*;
import vn.vnpt.ssdc.utility.InteractionExcelView;
import vn.vnpt.ssdc.utility.SpecificationsBuilder;
import vn.vnpt.ssdc.utility.Util;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.*;
@Controller
@RequestMapping(path = "/api/ucs")
public class UcsController {
    private Logger logger = LoggerFactory.getLogger(UcsController.class);


    @Autowired
    ParserFactory parserFactory;

    private long totalItem = 0;
    private static String columnDisposition = null;
    private List<Interaction> interactions = new LinkedList<>();
    private InteractionRepository interactionRepository;
    private ContactAttributeRepository contactAttributeRepository;
    private IxnAttributeMetaDataRepository ixnAttributeMetaDataRepository;
    private AttachmentRepository attachmentRepository;
    private DocumentRepository documentRepository;
    private static Specification<Interaction> spec = null;
    @Autowired
    public UcsController(InteractionRepository interactionRepository, ContactAttributeRepository contactAttributeRepository,
                         IxnAttributeMetaDataRepository ixnAttributeMetaDataRepository, AttachmentRepository attachmentRepository,
                         DocumentRepository documentRepository) {
        this.interactionRepository = interactionRepository;
        this.contactAttributeRepository = contactAttributeRepository;
        this.ixnAttributeMetaDataRepository = ixnAttributeMetaDataRepository;
        this.attachmentRepository = attachmentRepository;
        this.documentRepository = documentRepository;
    }

    @CrossOrigin
    @GetMapping(path = "/total")
    @ResponseBody
    public long total() {
        return totalItem;
    }

    @CrossOrigin
    @GetMapping(path = "/all")
    @ResponseBody
    public List<Interaction> search(@RequestParam Map<String, String> mapData) {
        SpecificationsBuilder builder = new SpecificationsBuilder();
        IxnAttributeMetaData ixnAttributeMetaData = ixnAttributeMetaDataRepository.findByTheName("DispositionCode");
        columnDisposition = ixnAttributeMetaData.getMappingColumnName();
        if (mapData.isEmpty()) {
            Specification<Interaction> spec = builder.buildInteraction();
            interactions = interactionRepository.findAll(spec);
            totalItem = interactions.size();
            addInformation(interactions);
            return Util.PaginationList(interactions, 1);
        } else {
            Integer page = Integer.valueOf(mapData.getOrDefault("pages", "1"));
            String strSortColumn = "";
            String strSortType = "";
            boolean isSearch = false;
            for (Map.Entry<String, String> entry : mapData.entrySet()) {
                if (entry.getValue() != "") {
                    if (!entry.getKey().equalsIgnoreCase("pages")) {
                        ///
                        isSearch = true;
                        if (entry.getKey().equalsIgnoreCase("mediaTypeId")) {
                            if (!entry.getValue().equalsIgnoreCase("all")) {
                                builder.with("mediaTypeId", ":", entry.getValue().toLowerCase());
                            }
                        }
                          else if (entry.getKey().equalsIgnoreCase("fromDate")) {
                            builder.with("startDate", ">", entry.getValue());
                        } else if (entry.getKey().equalsIgnoreCase("toDate")) {
                            builder.with("startDate", "<", entry.getValue());
                        } else if (entry.getKey().startsWith("customer")) {
                            String attributeName = "vnname";
                            if(entry.getKey().equals("customerPhone")) {
                                attributeName = "PhoneNumber";
                            }
                            if(entry.getKey().equals("customerEmail")) {
                                attributeName = "EmailAddress";
                            }
                            List<ContactAttribute> contactAttributes = contactAttributeRepository.findByAttributeNameAndStrValueLowerCaseIgnoreCaseContaining(attributeName, entry.getValue().toLowerCase());
                            if(contactAttributes.size() > 0) {
                            List<String> listContactIds = new LinkedList<>();
                            for(ContactAttribute contactAttribute : contactAttributes) {
                                listContactIds.add(contactAttribute.getContactId());
                            }
                            builder.with("contactId", "in", listContactIds);
                            } else {
                                builder.with("contactId", ":", entry.getValue());
                            }
                         } else if(entry.getKey().equalsIgnoreCase("dispositionCode")) {
                            List<Interaction> interactionList =  searchValueDisposition(columnDisposition, entry.getValue());
                            if(interactionList.size() > 0) {
                                List<String> listIds = new LinkedList<>();
                                for (Interaction interaction : interactionList) {
                                    listIds.add(interaction.getId());
                             }
                             builder.with("id", "in", listIds);
                            } else {
                                builder.with("id", ":", entry.getValue());
                            }
                         } else if(entry.getKey().equalsIgnoreCase("agentName")) {
                            List<String> ids = CfgConnection.searchAgentName(entry.getValue());
                            if(ids.size() > 0) {
                            builder.with("ownerId", "in", ids);
                            } else {
                                builder.with("ownerId", ":", entry.getValue());
                            }
                        } else if(entry.getKey().equalsIgnoreCase("theComment")) {
                            if(entry.getValue().startsWith("+") && entry.getValue().split(" ").length > 1) {
                                String[] params = entry.getValue().split(" ");
                                List<String> prefixs = new LinkedList<>();
                                for (String param : params) prefixs.add(param.replaceAll("\\+", ""));
                                builder.with(entry.getKey(), "or", prefixs);
                            } else {
                                builder.with(entry.getKey(), ":", entry.getValue().replaceAll("\\+", ""));
                            }
                        }
                        else {
                            builder.with(entry.getKey(), ":", entry.getValue());
                        }
                        ///
                    }
                }
            }
             spec = builder.buildInteraction();

            if (strSortColumn != "") {
                if (strSortType.equalsIgnoreCase("DESC")) {
                    Sort s = new Sort(Sort.Direction.DESC, strSortColumn);
                    interactions = interactionRepository.findAll(spec, s);
                    addInformation(interactions);
                    return Util.PaginationList(interactions, page);
                } else {
                    Sort s = new Sort(Sort.Direction.ASC, strSortColumn);
                    interactions = interactionRepository.findAll(spec, s);
                    addInformation(interactions);
                    return Util.PaginationList(interactions, page);
                }
            }

                for (Map.Entry<String, String> entry : mapData.entrySet()) {
                    if (entry.getValue() != "") {
                        if (!entry.getKey().equalsIgnoreCase("pages")) {
                            ///
                            if (entry.getKey().equalsIgnoreCase("mediaTypeId")) {
                                if (entry.getValue().equalsIgnoreCase("all")) {
                                    isSearch = false;
                                    for (Map.Entry<String, String> entry1 : mapData.entrySet()) {
                                        if (!entry1.getKey().equalsIgnoreCase("pages") && !entry1.getKey().equalsIgnoreCase("mediaTypeId")) {
                                            ///
                                            if(!entry1.getValue().equals("")) isSearch = true;
                                        }
                                    }

                                }
                            } else {
                                if(!entry.getValue().equals("")) isSearch = true;
                            }

                        }
                    }
                }


            if(isSearch) {
                totalItem = interactionRepository.count(spec);
                interactions = interactionRepository.findAll(spec, new PageRequest(page - 1, 10)).getContent();
                addInformation(interactions);
//                totalItem = interactions.size();
                return Util.PaginationList(interactions, 1);
            }

            interactions = interactionRepository.findAllByIdIsNotLikeOrderByStartDateDesc(new PageRequest(page - 1, 10),"");
            addInformation(interactions);
            totalItem = interactionRepository.countAll();
            return interactions;
        }

    }

    private void addInformation(List<Interaction> interactions) {
        for (Interaction interaction : interactions) {

            try {
                if(interaction.getMediaTypeId().equals("chat") && interaction.getStructuredText() != null && !interaction.getStructuredText().equals("")) {
                    String structuredText = interaction.getStructuredText();
                    String structuredTextEdit = "";
                    String prefix = "<msgText";
                    while (structuredText.indexOf(prefix) > 0) {
                        int from = structuredText.indexOf(prefix);
                        String response = structuredText.substring(from + structuredText.substring(from).indexOf(">") + 1);
                        response = response.substring(0, response.indexOf("</msgText>"));
                        int to = structuredText.substring(from).indexOf("</msgText>") + "</msgText>".length();
                        structuredText = structuredText.substring(0, from) + structuredText.substring(from).substring(to, structuredText.substring(from).length());
                        structuredTextEdit = structuredTextEdit + response + " </br>";
                    }
                    interaction.setStructuredText(structuredTextEdit);
                }
            } catch (Exception e) {
                logger.error("pasrseResponse", e);
            }

            interaction.setDisposition(getValueDisposition(columnDisposition, interaction.getId()));

//            if(interaction.getOwnerId() != null) {
//                String agent_name = CfgConnection.getAgentName(Long.parseLong(interaction.getOwnerId()));
//                interaction.setAgentName(agent_name);
//            }

            if(interaction.getContactId() != null && !interaction.getContactId().equals("")) {
                List<ContactAttribute> contactAttributes = contactAttributeRepository.findByContactId(interaction.getContactId());
                for (ContactAttribute contactAttribute : contactAttributes) {
                    if(contactAttribute.getAttributeName().equals("vnname")) {
                        interaction.setCustomerName(contactAttribute.getStrValue());
                    }
                    if(contactAttribute.getAttributeName().equals("PhoneNumber")) {
                        interaction.setPhone(contactAttribute.getStrValue());
                    }
                    if(contactAttribute.getAttributeName().equals("EmailAddress")) {
                        interaction.setEmail(contactAttribute.getStrValue());
                    }
                }
            }
        }
    }

    @ResponseBody
    @RequestMapping(value ="/attachFile" )
    public String attachFile(HttpServletResponse response, @RequestParam("id") String id){
        String fileName = id + ".eml";
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        List<String> ids = new LinkedList<>();

        List<Attachment> attachments = attachmentRepository.findByEntityId(id);
        if(attachments != null && attachments.size() > 0) {
            for(Attachment attachment : attachments) {
                ids.add(attachment.getDocumentId());
            }
        }

        List<vn.vnpt.ssdc.ucs.entity.Document> documents = documentRepository.findByIdIn(ids);
        if(documents != null && documents.size() > 0) {
            Blob blob = documents.get(0).getContent();
            try {
                StringBuffer strOut = new StringBuffer();
                String aux;
                // We access to stream, as this way we don't have to use the CLOB.length() which is slower...
                // assuming blob = resultSet.getBlob("somefield");
                BufferedReader br = new BufferedReader(new InputStreamReader(blob.getBinaryStream()));
                while ((aux=br.readLine())!=null) {
                    strOut.append(aux + "\n");
                }
                return strOut.toString();
            } catch (Exception ex) {
                logger.error("attachFile", ex);
            }
        }
        return "";
    }

    @CrossOrigin
    @GetMapping(path = "/result") // Map ONLY GET Requests
    public @ResponseBody
    ModelAndView getResult(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType( "application/ms-excel" );
        response.setHeader( "Content-disposition", "attachment; filename=UcsView.xlsx" );

//        SpecificationsBuilder builder = new SpecificationsBuilder();
        Map<Integer,Interaction> interactionExcels = new HashMap<Integer,Interaction>();

        Sort s = new Sort(Sort.Direction.DESC, "id");
        interactions = interactionRepository.findAll(spec, s);

//        List<Interaction> interactions = interactionRepository.findAll(spec);
        addInformation(interactions);
        if(interactions != null) {
            int stt =0;
            for (Interaction interaction:interactions){
                interactionExcels.put(stt,interaction);
                stt++;
            }
        }
        return new ModelAndView(new InteractionExcelView(),"interactionExcels",interactionExcels);
    }


    private String getValueDisposition(String column, String id) {
        String result = null;
        if(column.endsWith("10")) {
            result = interactionRepository.findByDisposition10(id);
        } else if(column.endsWith("9")) {
            result = interactionRepository.findByDisposition9(id);
        } else if(column.endsWith("8")) {
            result = interactionRepository.findByDisposition8(id);
        } else if(column.endsWith("7")) {
            result = interactionRepository.findByDisposition7(id);
        } else if(column.endsWith("6")) {
            result = interactionRepository.findByDisposition6(id);
        } else if(column.endsWith("5")) {
            result = interactionRepository.findByDisposition5(id);
        } else if(column.endsWith("4")) {
            result = interactionRepository.findByDisposition4(id);
        } else if(column.endsWith("3")) {
            result = interactionRepository.findByDisposition3(id);
        } else if(column.endsWith("2")) {
            result = interactionRepository.findByDisposition2(id);
        } else {
            result = interactionRepository.findByDisposition1(id);
        }
        return result;
    }

    private List<Interaction> searchValueDisposition(String column, String strValue) {
        List<Interaction> result = null;
        if(column.endsWith("10")) {
            result = interactionRepository.findByStrAttribute10IgnoreCaseContaining(strValue);
        } else if(column.endsWith("9")) {
            result = interactionRepository.findByStrAttribute9IgnoreCaseContaining(strValue);
        } else if(column.endsWith("8")) {
            result = interactionRepository.findByStrAttribute8IgnoreCaseContaining(strValue);
        } else if(column.endsWith("7")) {
            result = interactionRepository.findByStrAttribute7IgnoreCaseContaining(strValue);
        } else if(column.endsWith("6")) {
            result = interactionRepository.findByStrAttribute6IgnoreCaseContaining(strValue);
        } else if(column.endsWith("5")) {
            result = interactionRepository.findByStrAttribute5IgnoreCaseContaining(strValue);
        } else if(column.endsWith("4")) {
            result = interactionRepository.findByStrAttribute4IgnoreCaseContaining(strValue);
        } else if(column.endsWith("3")) {
            result = interactionRepository.findByStrAttribute3IgnoreCaseContaining(strValue);
        } else if(column.endsWith("2")) {
            result = interactionRepository.findByStrAttribute2IgnoreCaseContaining(strValue);
        } else {
            result = interactionRepository.findByStrAttribute1IgnoreCaseContaining(strValue);
        }
        return result;
    }

}
