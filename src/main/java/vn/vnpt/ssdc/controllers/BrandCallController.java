package vn.vnpt.ssdc.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import vn.vnpt.ssdc.voiceMail.entity.BrandCall;
import vn.vnpt.ssdc.voiceMail.entity.BrandCallRepository;
import vn.vnpt.ssdc.utility.Util;

import java.text.Normalizer;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@Controller
@RequestMapping(path = "/api/brandcall")
public class BrandCallController {
    private Logger logger = LoggerFactory.getLogger(BrandCallController.class);

    private int totalItem = 0;
    @Autowired
    BrandCallRepository brandCallRepository;

    @CrossOrigin
    @GetMapping(path = "/all")
    @ResponseBody
    public List<BrandCall> search(@RequestParam Map<String,String> mapData) {
        Integer page = Integer.valueOf(mapData.getOrDefault("pages","1"));
        List<BrandCall> lstBrandCall = brandCallRepository.findAll();
        totalItem = lstBrandCall.size();
        return Util.PaginationList(lstBrandCall,page);
    }

    @CrossOrigin
    @GetMapping(path = "/createNew")
    @ResponseBody
    public int createNew(@RequestParam Map<String,String> mapData) {
        String modalValue = mapData.getOrDefault("modalValue","");
        String modalDescription = mapData.getOrDefault("modalDescription","");
        String search_value = mapData.getOrDefault("modalKey","");
        //String search_value = removeAccent(modalValue);

        List<Integer> lstId = brandCallRepository.checkInsert(search_value);
        if(lstId.isEmpty()){
            BrandCall brandCall = new BrandCall();
            brandCall.setShowValue(modalValue);
            brandCall.setSearchValue(search_value);
            brandCall.setDescription(modalDescription);
            brandCallRepository.save(brandCall);
            //
            return 200;
        }else{
            for(Integer integer : lstId){
                brandCallRepository.delete(integer);
            }

            //delete rồi tạo mới
            BrandCall brandCall = new BrandCall();
            brandCall.setShowValue(modalValue);
            brandCall.setSearchValue(search_value);
            brandCall.setDescription(modalDescription);
            brandCallRepository.save(brandCall);

            return 200;
        }
    }


    @CrossOrigin
    @GetMapping(path = "/total")
    @ResponseBody
    public int total() {
        return totalItem;
    }


    public static String removeAccent(String s) {
        String temp = Normalizer.normalize(s, Normalizer.Form.NFD);
        Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
        String strReturn = pattern.matcher(temp).replaceAll("");
        strReturn = strReturn.toLowerCase().replace(" ","_");
        return strReturn;
    }


    @CrossOrigin
    @GetMapping(path = "/delete")
    @ResponseBody
    public int delete(@RequestParam Map<String,String> mapData) {
        Integer id = Integer.parseInt(mapData.getOrDefault("id","0")) ;
        brandCallRepository.delete(id);
        return 200;
    }

    @CrossOrigin
    @GetMapping(path = "/update")
    @ResponseBody
    public int update(@RequestParam Map<String,String> mapData) {
        Integer id = Integer.parseInt(mapData.getOrDefault("modalId","0")) ;
        String modalValue = mapData.getOrDefault("modalValue","");
        String modalDescription = mapData.getOrDefault("modalDescription","");

        String strSearchValue = removeAccent(modalValue);

        BrandCall brandCall = brandCallRepository.findOne(id);
        brandCall.setShowValue(modalValue);
        brandCall.setDescription(modalDescription);
        brandCall.setSearchValue(strSearchValue);

        brandCallRepository.save(brandCall);

        return 200;
    }

    @CrossOrigin
    @GetMapping(path = "/searchForSelect")
    @ResponseBody
    public List<BrandCall> searchForSelect(@RequestParam Map<String,String> mapData) {
        return brandCallRepository.findAll();
    }
}
