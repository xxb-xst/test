<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="tmsYwDingdanList" sortName="fadh" checkbox="true" pageSize="500" pagination="true" fitColumns="false" fit="false"  title="派车管理"  actionUrl="tmsYwDingdanController.do?datagridpc" idField="id"   queryMode="group">
   <t:dgCol title="主键"  field="id"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建人名称"  field="createName"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建人登录名称"  field="createBy"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="创建日期"  field="createDate"  formatter="yyyy-MM-dd"  query="true"   queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="更新人名称"  field="updateName"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="更新人登录名称"  field="updateBy"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="更新日期"  field="updateDate"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="所属部门"  field="sysOrgCode"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="所属公司"  field="dbsysCompanyCode"  hidden="true"  queryMode="group"  width="120"></t:dgCol>

   <t:dgCol title="发货人"  field="fahuoren"    query="true"  queryMode="single"  width="60"></t:dgCol>
   <%--<t:dgCol title="发货人电话"  field="fhrdh"    hidden="true"  queryMode="single"  width="90"></t:dgCol>--%>
   <t:dgCol title="发货人地址"  field="fhrdz"    queryMode="group"  width="90"></t:dgCol>
   <t:dgCol title="收货人"  field="shouhuoren"  query="true"  queryMode="single"  width="60"></t:dgCol>
   <t:dgCol title="收货人地址"  field="shrdh"  query="true"  queryMode="single"  width="90"></t:dgCol>
   <t:dgCol title="车号"  field="chehao"  query="true"  queryMode="single"  width="70"></t:dgCol>
   <t:dgCol title="货物"  field="huowu"  query="true"  queryMode="single"  width="70"></t:dgCol>
   <t:dgCol title="件数"  field="hwshjs"  query="true"   queryMode="single"  width="60"></t:dgCol>

   <t:dgCol title="提货方式"  field="hwshfs"  query="true" dictionary="tms_thfs" queryMode="single"  width="50"></t:dgCol>

   <t:dgCol title="立方米"  field="tiji"    queryMode="group"  width="60"></t:dgCol>
   <t:dgCol title="重量"  field="zhongl"  queryMode="group"  width="60"></t:dgCol>
   <t:dgCol title="长米"  field="chang"     queryMode="group"  width="70"></t:dgCol>
   <t:dgCol title="宽米"  field="kuan"     queryMode="group"  width="70"></t:dgCol>
   <t:dgCol title="高米"  field="gao"    queryMode="group"  width="70"></t:dgCol>
   <t:dgCol title="代收款金额"  field="daishouk"  queryMode="group"  width="80"></t:dgCol>
   <t:dgCol title="是否等通知"  field="dengtongzhi"  queryMode="group"  dictionary="sf_yn"  width="80"></t:dgCol>
   <%--<t:dgCol title="价格"  field="jiage"  queryMode="group"  width="120"></t:dgCol>--%>
   <%--<t:dgCol title="下单附件"  field="xiadanfj"  hidden="true"  queryMode="group"  image="true" imageSize="50,50"  width="120"></t:dgCol>--%>
   <%--<t:dgCol title="回单附件"  field="huidanfj"  hidden="true"  queryMode="group"  image="true" imageSize="50,50"  width="120"></t:dgCol>--%>
   <%--<t:dgCol title="状态"  field="zhuangtai"  query="true"  queryMode="single"  width="120"></t:dgCol>--%>
   <t:dgCol title="下单人名字"  field="xdrmz"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="司机"  field="siji"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <%--<t:dgCol title="送达时间"  field="sdsj"  formatter="yyyy-MM-dd hh:mm:ss"  hidden="true"  query="true"  queryMode="group"  width="120"></t:dgCol>--%>
   <%--<t:dgCol title="预计送达时间"  field="yjsdsj"  formatter="yyyy-MM-dd hh:mm:ss"   queryMode="group"  width="120"></t:dgCol>--%>
   <t:dgCol title="客户单号"  field="ywkhdh"  query="true"  queryMode="single"  width="100"></t:dgCol>

   <t:dgCol title="单号"  field="fadh"  query="true"  queryMode="single"  width="190"></t:dgCol>
   <t:dgCol title="下单人"  field="username"  query="true"  queryMode="single"  width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <%--<t:dgDelOpt title="取消派车" url="tmsYwDingdanController.do?doDelpc&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>--%>
   <%--<t:dgToolBar title="下单" icon="icon-add" url="tmsYwDingdanController.do?goAdd" funname="add"></t:dgToolBar>--%>
   <%--<t:dgToolBar title="编辑" icon="icon-edit" url="tmsYwDingdanController.do?goUpdate" funname="update"></t:dgToolBar>--%>
   <t:dgToolBar title="批量派车"  funname="pcALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="tmsYwDingdanController.do?goUpdate" width="1200" height="550" funname="detail"></t:dgToolBar>
   <%--<t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>--%>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <%--<t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>

   <div name="searchColums1" style="float: left; padding-left: 0px;padding-top: 5px;">
    <span style="vertical-align:middle;display:-moz-inline-box;display:inline-block;width: 90px;text-align:right;" title="派车">派车 </span>
    司机：
    <t:dictSelect id="username" field="username" defaultVal="请选择" dictTable="tms_md_cheliang"   dictField="username" dictText="chepaihao" title="司机"></t:dictSelect>
   </div>

  </div>
 </div>
 <script src = "webpage/com/zzjee/tms/tmsYwDingdanList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
 });
 function pcALLSelect() {
     var count=$("#username option").length;
     var siji;
     var chehao;
     for(var i=0;i<count;i++)
     {
         if($("#username ").get(0).options[i].selected){
             siji = $("#username ").get(0).options[i].value;
             chehao = $("#username ").get(0).options[i].text;
         }
     }
     if(siji==""||chehao==""){
         alert("司机和车号不能为空");
     }else {
         var rows = $('#tmsYwDingdanList').datagrid('getSelections');

         var ids = [];
         for (var i = 0; i < rows.length; i++) {
             ids.push(rows[i].id);
         }


         if (rows.length > 0) {
             // for (var i = 0; i < rows.length; i++) {
                 var url = "tmsYwDingdanController.do?dopc";
                 var formData = new Object();

                 formData['siji'] = siji;
                 formData['chehao'] = chehao;
                 formData['id'] = ids.join(',');
                 $.ajax({
                     async: false,
                     cache: false,
                     type: 'POST',
                     data: formData,
                     url: url,// 请求的action路径
                     error: function () {// 请求失败处理函数
                     },
                     success: function (data) {
                         var d = $.parseJSON(data);
                         if (d.success) {

                         }
                     }
                 });
             // }
             tip("派车成功");
             $('#tmsYwDingdanList').datagrid('reload', {});
         }
     }
 }
   
 
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'tmsYwDingdanController.do?upload', "tmsYwDingdanList");
}

//导出
function ExportXls() {
	JeecgExcelExport("tmsYwDingdanController.do?exportXls","tmsYwDingdanList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("tmsYwDingdanController.do?exportXlsByT","tmsYwDingdanList");
}

 </script>