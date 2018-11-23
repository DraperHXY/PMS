<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <div class="row">
            <h1 class="col-md-6">人力资源管理</h1>
        </div>
    </div>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th>部门名称</th>
            <th>部门所属</th>
            <th>部落领导</th>
            <th>部门电话</th>
            <th>办公室</th>
            <th>备注</th>
            <th>操作</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${allDepartments}" var="department">
            <tr class="text-center break-all">
                <td>${department.name}</td>
                <td>${department.fromDepartmentId}</td>
                <td>${department.departmentLeaderId}</td>
                <td>${department.departmentPhone}</td>
                <td>${department.office}</td>
                <td>${department.note}</td>
                <td>
                    <div class="row">
                        <button href="/PMIS/department/delete" type="button" class="btn btn-danger btn-xs"
                                onclick="httpDeleteUrl('/PMIS/department/delete/${department.id}')">删除
                        </button>
                        <button href="/PMIS/department/modify" type="button" class="btn btn-warning btn-xs"
                                onclick="httpGetUrl('/PMIS/department/modify/${department.id}')">修改
                        </button>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="panel-footer"></div>
</div>
