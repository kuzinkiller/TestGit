package rrc.recruitment.portal.controller.cms;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import rrc.recruitment.portal.common.ConstantPage;
import rrc.recruitment.portal.common.ConstantRequest;
import rrc.recruitment.portal.common.Util;
import rrc.recruitment.portal.configuration.ScheduleBackup;
import rrc.recruitment.portal.entity.ScheduleBackupObj;

@Controller
public class BackupController {  
	
	@RequestMapping(value = ConstantRequest.RequestMapping.CMS_BACKUP_CONFIG, method = RequestMethod.GET, produces = ConstantRequest.Common.ENCODE_UTF8)
    public String ScheduledTaskConfigPage(Model model) {
        model.addAttribute(ConstantPage.ScheduleBackup.ATT_SCHEDULED_BACKUP, ScheduleBackup.getScheduleBackup());
        return ConstantPage.ScheduleBackup.PAGE_SCHEDULE_BACKUP;
    }
	
	
	@RequestMapping(value = ConstantRequest.RequestMapping.CMS_SCHEDULED_BACKUP_UPDATE, method = RequestMethod.POST)
	public ResponseEntity<String> ScheduledTaskUpdate(HttpServletRequest request) {
		ScheduleBackupObj scheduleBackup = new ScheduleBackupObj();
		String strScheduleTime = Util.getParameter(request, ConstantPage.ScheduleBackup.ATT_SCHEDULE_TIME);
		if (StringUtils.isNotBlank(strScheduleTime)) {
			try {
				int scheduleTime = Integer.parseInt(strScheduleTime);
				scheduleBackup.setScheduleTime(scheduleTime);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				scheduleBackup.setScheduleTime(ConstantPage.TIME_A_DAY);
			}
		}
		
		ScheduleBackup.setScheduleBackup(scheduleBackup);
		DateFormat df = new SimpleDateFormat(ConstantPage.FORMAT_DATE_03);
		Date currentDate = Calendar.getInstance().getTime();
		String strCurrentDate = df.format(currentDate);
		return new ResponseEntity<String>(String.format(ConstantPage.ScheduledTask.MSG_REPONSE_SUCCESS, strCurrentDate), HttpStatus.OK);
				
	}
}
