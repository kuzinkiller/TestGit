package rrc.recruitment.portal.controller.cms;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import rrc.recruitment.portal.common.ConstantPage;
import rrc.recruitment.portal.common.ConstantRequest;
import rrc.recruitment.portal.model.CmsUser;
import rrc.recruitment.portal.model.PortalBanner;
import rrc.recruitment.portal.model.PortalPeopleSection;
import rrc.recruitment.portal.service.CmsUserService;
import rrc.recruitment.portal.service.PortalPeopleSectionService;

@Controller
public class CmsPortalPeopleSectionController {
    Logger logger = Logger.getLogger(CmsPortalBannerController.class);
    @Autowired
    PortalPeopleSectionService portalPeopleSectionService;
    
    @Autowired
    CmsUserService cmsUserService;
    
    private String message = "";
    /**
     * Get All of List People_Section
     * @return cms_list_people_section.jsp
     */
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_LIST_PEOPLE_SECTION, method = RequestMethod.GET)
    public String getAllPeopleSection(HttpSession session, Model model, Locale locale) {
        CmsUser cmsUser = (CmsUser) session.getAttribute(ConstantPage.CmsUser.ATT_CMS_USER_INFO);
        List<PortalPeopleSection> listPeopleSectionActive = portalPeopleSectionService.getAllPortalPeopleSectionDao();
        List<PortalPeopleSection> listPeopleSection = portalPeopleSectionService.getAllPortalPeopleSection();
        model.addAttribute(ConstantPage.PeopleSection.ATT_CMS_LIST_PEOPLE_SECTION_ACTIVE, listPeopleSectionActive);
        model.addAttribute(ConstantPage.PeopleSection.ATT_CMS_LIST_PEOPLE_SECTION, listPeopleSection);
        model.addAttribute(ConstantPage.ATT_ROLE_ADD,
                cmsUserService.existRoleOfUser(cmsUser.getId(), ConstantPage.CMS_ROLE_ADD_PEOPLE_SECTION));
        model.addAttribute(ConstantPage.ATT_ROLE_ACTIVE,
                cmsUserService.existRoleOfUser(cmsUser.getId(), ConstantPage.CMS_ROLE_ACTIVE_PEOPLE_SECTION));
        model.addAttribute(ConstantPage.ATT_ROLE_DELETE,
                cmsUserService.existRoleOfUser(cmsUser.getId(), ConstantPage.CMS_ROLE_DELETE_PEOPLE_SECTION));
        return ConstantPage.PeopleSection.PAGE_CMS_LIST_PEOPLE_SECTION;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_ADD_PEOPLE_SECTION, method = RequestMethod.GET)
    public String addCmsBanner() {
        return ConstantPage.PeopleSection.PAGE_CMS_ADD_PEOPLE_SECTION;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_ADD_PEOPLE_SECTION, method = RequestMethod.POST)
    @ResponseBody
    public String addNewBanner(@ModelAttribute PortalPeopleSection portalPeopleSection, @RequestParam("people_section") MultipartFile people_section,
                               MultipartHttpServletRequest request, HttpSession session) {
        try {
            portalPeopleSection.setAvatar(portalPeopleSectionService.doUploadPeopleSection(request, people_section));
            portalPeopleSection.setFlgStatus(ConstantPage.PeopleSection.FLG_STATUS_INACTIVE);
 //         CmsUser cmsUser = (CmsUser) session.getAttribute(ConstantPage.CmsUser.ATT_CMS_USER_INFO);
//          portalBanner.setCmsUser(cmsUser);
            portalPeopleSectionService.addPeopleSection(portalPeopleSection);
            this.message = ConstantPage.Banner.MSG_SUBMIT_SUCCESS;
        } catch (Exception e) {
            logger.error(e.toString());
            e.printStackTrace();
        }
        return ConstantPage.PeopleSection.MSG_TRUE;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_DELETE_PEOPLE_SECTION, method = RequestMethod.GET)
    public String deletePeopleSection(@PathVariable(value = ConstantPage.PeopleSection.ATT_ID_PEOPLE_SECTION) int id) {
        portalPeopleSectionService.deletePeopleSection(id);
        this.message = ConstantPage.Banner.MSG_DELETE_SUCCESS;
        return ConstantRequest.Common.REDIRECT + ConstantRequest.RequestMapping.CMS_LIST_PEOPLE_SECTION;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_VIEW_PEOPLE_SECTION, method = RequestMethod.GET)
    public String viewPeopleSection(Model model, @PathVariable(value = ConstantPage.PeopleSection.ATT_ID_PEOPLE_SECTION) int id) {
        try {
            PortalPeopleSection portalPeopleSection = portalPeopleSectionService.findById(id);
            model.addAttribute(ConstantPage.PeopleSection.ATT_CMS_PEOPLE_SECTION, portalPeopleSection);
        } catch (Exception e) {
            logger.error(e.toString());
            e.printStackTrace();
        }
        return ConstantPage.PeopleSection.PAGE_CMS_VIEW_PEOPLE_SECTION;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_CLONE_PEOPLE_SECTION, method = RequestMethod.GET)
    public String addNewPeopleSectionClone(@PathVariable(value = ConstantPage.PeopleSection.ATT_ID_PEOPLE_SECTION) int id, Model model) {
            PortalPeopleSection portalPeopleSection = portalPeopleSectionService.findById(id);
            model.addAttribute(ConstantPage.PeopleSection.ATT_CMS_PEOPLE_SECTION, portalPeopleSection);
            this.message = ConstantPage.Banner.MSG_SUBMIT_SUCCESS;
            return ConstantPage.PeopleSection.PAGE_CMS_CLONE_PEOPLE_SECTION;
    }
    
    @RequestMapping(value = ConstantRequest.RequestMapping.CMS_CLONE_PEOPLE_SECTION, method = RequestMethod.POST)
    @ResponseBody
    public String addNewPeopleSectionCopy(@ModelAttribute PortalPeopleSection newPeopleSection, @RequestParam("people_section") MultipartFile people_section,
                                   MultipartHttpServletRequest request,HttpSession session,
                                   @PathVariable(value = ConstantPage.Banner.ATT_ID_BANNER) int id) {
        try {
            PortalPeopleSection newPeopleSectionClone = new PortalPeopleSection();
            PortalPeopleSection PeopleSection = portalPeopleSectionService.findById(id);
            if (people_section.getSize() > 0) {
                newPeopleSectionClone.setImage(portalPeopleSectionService.doUploadPeopleSection(request, people_section));
            } else {
                newPeopleSectionClone.setImage(PeopleSection.getAvatar());
            }
            newPeopleSectionClone.setFlgStatus(ConstantPage.Banner.FLG_STATUS_INACTIVE);
            CmsUser cmsUser = (CmsUser) session.getAttribute(ConstantPage.CmsUser.ATT_CMS_USER_INFO);
//            newnewPeopleSectionClone.setCmsUser(cmsUser);
            newPeopleSectionClone.setNameVi(newPeopleSection.getNameVi());
            newPeopleSectionClone.setNameEn(newPeopleSection.getNameEn());
            newPeopleSectionClone.setDescriptionVi(newPeopleSection.getDescriptionVi());
            newPeopleSectionClone.setDescriptionEn(newPeopleSection.getDescriptionEn());
            portalPeopleSectionService.addPeopleSection(newPeopleSectionClone);
            this.message = ConstantPage.Banner.MSG_SUBMIT_SUCCESS;
            return ConstantPage.Banner.MSG_TRUE;
        } catch (Exception e) {
            logger.error(e.toString());
            e.printStackTrace();
            return ConstantRequest.Common.REDIRECT + ConstantPage.Banner.ATT_CMS_BANNER;
        }

    }
}
