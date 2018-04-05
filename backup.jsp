<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/cms/common/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/cms/schedule_task/cms_schedule_task.css">
<jsp:include page="./../common/dialog/cms_dialog_notify.jsp" />
<div class="background-container">
    <form class="form-horizontal" id="schedule-form">
        <div class="box box-default">
            <div class="box-header with-border">
                <h3 class="box-title">Thiết lập thời gian backup dữ liệu</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse">
                        <i class="fa fa-minus"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">
                <div class="form-group">
                    <label for="scheduleTime" class="col-sm-2 control-label">Schedule:</label>
                    <div class="col-sm-6">
                        <select class="form-control" style="width: 100%;" id="scheduleTime" name="scheduleTime">
                            <c:forEach items="${scheduledBackup.listScheduledTime}" var="item">
                                        <option value="${item.value}">${item.text}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
            </div>
            <div class="box-footer">
                <div class="form-group">
                    <div class="col-sm-2 control-label"></div>
                    <div class="col-sm-10">
                        <button type="button" class="btn btn-default btn-100" onclick="back()">Thoát</button>
                        <button type="submit" class="btn btn-primary btn-100">Thiết Lập</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="${pageContext.request.contextPath}/static/js/cms/schedule_backup/cms_schedule_backup.js"></script>
