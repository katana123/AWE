package com.awe.Handler.institutionManagement;

import com.awe.Data.CommunityMembers;
import com.awe.Data.InstitutionMembers;
import com.awe.Entity.CCinfo;
import com.awe.Entity.CUlink;
import com.awe.Service.community.CommunityService;
import com.awe.Service.register.CcusersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;
import java.util.Map;

@Controller
public class institutionManagementHandler {

    @Autowired
    private CommunityService communityService;
    @Autowired
    private CcusersService ccusersService;

    /*-----------机构管理start----------*/
    //资料管理页面
    @RequestMapping(value = "/dataManagement/{ccid}", method = RequestMethod.GET)
    public String DataManagement(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        map.put("pageno", 4);
        return "/institutionManagement/dataManagement";
    }

    //权限设置页面
    @RequestMapping(value = "/authoritySetting/{ccid}", method = RequestMethod.GET)
    public String AuthoritySetting(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        List<InstitutionMembers> InstitutionMembers = communityService.findInstitutionMembers(ccid);
        map.put("members", InstitutionMembers);
        BigInteger membernum = communityService.membernum(Long.valueOf(ccid));
        map.put("membercount", membernum);
        map.put("pageno", 3);
        return "/institutionManagement/authoritySetting";
    }

    //机构成员删除
    @ResponseBody
    @RequestMapping(value = "/ajaxDeleteInstitutionMember", method = RequestMethod.POST)
    public String DeleteLinkedMember(@RequestParam(value = "cuid", required = true) Long cuid,
                                     @RequestParam(value = "ccid", required = true) Long ccid) {
        CUlink cUlink = communityService.findByCcidAndCuid(ccid, cuid);
        cUlink.setRoleid(1);
        communityService.addMember(cUlink);
        return "1";
    }

    //机构成员添加
    @ResponseBody
    @RequestMapping(value = "/ajaxAddInstitutionMember", method = RequestMethod.POST)
    public String AddInstitutionMember(@RequestParam(value = "cusername", required = true) String cusername,
                                       @RequestParam(value = "ccid" , required = true) Long ccid){
        List<CommunityMembers> communityMembers = communityService.findOneCommunityMemberByCusernameAndCcid(cusername, ccid.intValue());
        if (null == communityMembers || communityMembers.size() == 0) {
            return "0";
        } else {
            List<CommunityMembers> iUlinkOnce = communityService.linkOnce(ccid,cusername);
            if(null == iUlinkOnce || iUlinkOnce.size() == 0){
                Long cuid = Long.valueOf(ccusersService.getCuidbyCusername(cusername));
                CUlink cUlink = communityService.findByCcidAndCuid(ccid, cuid);
                cUlink.setRoleid(10);
                communityService.addMember(cUlink);
                return "1";
            }else{
                return "2";
            }
        }
    }

    //机构成员页面
    @RequestMapping(value = "/institutionMembers/{ccid}", method = RequestMethod.GET)
    public String InstitutionMembers(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        List<InstitutionMembers> InstitutionMembers = communityService.findInstitutionMembers(ccid);
        map.put("InstitutionMembers", InstitutionMembers);
        BigInteger membernum = communityService.membernum(Long.valueOf(ccid));
        map.put("membercount", membernum);
        map.put("pageno", 2);
        return "/institutionManagement/institutionMembers";
    }

    //机构资料修改
    @RequestMapping(value = "/institutionDataModify/{ccid}", method = RequestMethod.POST)
    public String InstitutionDataModify(@PathVariable(value = "ccid", required = true) Integer ccid, CCinfo cCinfo, Map<String, Object> map) {
        CCinfo cCinfos = communityService.get(ccid);
        map.put("community", cCinfos);
        communityService.save(cCinfo);
        return "/institutionManagement/institutionData";
    }

    //机构资料页面
    @RequestMapping(value = "/institutionData/{ccid}", method = RequestMethod.GET)
    public String InstitutionData(@PathVariable(value = "ccid", required = true) Integer ccid, Map<String, Object> map) {
        CCinfo cCinfo = communityService.get(ccid);
        map.put("community", cCinfo);
        map.put("pageno", 1);
        return "/institutionManagement/institutionData";
    }
    /*-----------机构管理end----------*/
}
