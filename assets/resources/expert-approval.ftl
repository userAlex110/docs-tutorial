<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>来访审批表</title>
<style type="text/css">
body {font-family: SimHei; word-wrap:break-word; word-break:break-all;}
tr {page-break-inside:avoid; page-break-after:auto;}
</style>

<style type="text/css">
*{
    margin: 0;
    padding: 0;
}
table{
    border-collapse:collapse;  
    border-spacing:0px;
    width: 100%;
    text-align: center;
    border: 1px solid #dedede;
    color: #333;
    margin-bottom: 10px;
    border-radius: 10px;
   }
  table tr td{
      line-height: 24px;
      padding: 0px;
  } 
.approval-content{
    width: 174mm;
    /* height: 297mm; */
    margin: 0px auto;
    /* background-color: #f5f5f5; */
    padding: 15px 30px;
}
.form-name{
    color: #333;
    text-align: center;
    line-height: 24px;
    margin-bottom: 10px;
}
.form-name >p:nth-child(1){
    font-size: 20px;
    font-weight: 500;
    letter-spacing: 3px;
}
.options-box{
    width: 180px;
    font-weight: 300;
}
.empty--box{
    width: 217px;
    font-weight: 100;
}
.form-title{
    font-size: 16px;
    line-height: 24px;
    margin-bottom: 10px;
    /* padding: 0px 10px; */
    color: #333;
}
.form-title span{
    font-size: 18px;
    margin-right: 10px;
}
    </style>
</head>
<body>
    <div class="approval-content">
      <div class="form-name">
          <p>境外专家短期来访</p>
          <p>
            Foreign Scholars Short-term Visit Application
          </p>
      </div>
      <div class="form-title">
        <span>主请人信息</span> Inviter Information
      </div>
      <table border="1">
          <tr>
              <td class="options-box">
                <p>邀请院系</p>
                <p>Inviting School/Department</p>
              </td>
              <td class="empty--box">${YQYX_TEXT}</td>
              <td class="options-box">
                <p>申请编号</p>
                <p>Application No.</p>
              </td>
              <td class="empty--box">${SQBH}</td>
          </tr>
          <tr>
            <td class="options-box">
              <p>工作证号</p>
              <p>Campus ID No.</p>
            </td>
            <td class="empty--box">${ZQRGZZH}</td>
            <td class="options-box">
              <p>姓名</p>
              <p>Name</p>
            </td>
            <td class="empty--box">${ZQRXM}</td>
        </tr>
        <tr>
            <td class="options-box">
              <p>手机</p>
              <p>Mobile No.</p>
            </td>
            <td class="empty--box">${ZQRSJ}</td>
            <td class="options-box">
              <p>座机</p>
              <p>Landline No</p>
            </td>
            <td class="empty--box">${ZQRZJ}</td>
        </tr>
      </table>
      <div class="form-title">
        <span>被邀请人信息</span> Invitee Information
      </div>
      <table border="1">
        <tr>
            <td class="options-box">
                <p>被邀人名<br />（同护照）</p>
              <p>Invitee Given Name<br />(Same as Passport)</p>
            </td>
            <td class="empty--box">${BYRM}</td>
            <td class="options-box">
              <p>被邀人姓<br />（同护照）</p>
              <p>Invitee Family Name<br />(Same as Passport)</p>
            </td>
            <td class="empty--box">${BYRX}</td>
        </tr>
        <tr>
          <td class="options-box">
            <p>性别</p>
            <p>Gender</p>
          </td>
          <td class="empty--box">${XB}</td>
          <td class="options-box">
            <p>出生日期</p>
            <p>Date of birth</p>
          </td>
          <td class="empty--box">${CSRQ}</td>
      </tr>
      <tr>
          <td class="options-box">
            <p>国籍<br />（同护照）</p>
            <p>Nationality</p>
          </td>
          <td class="empty--box">${GJDQ_TEXT}</td>
          <td class="options-box">
            <p>护照号</p>
            <p>Passport No.</p>
          </td>
          <td class="empty--box">${HZH}</td>
      </tr>
      <tr>
        <td class="options-box">
          <p>工作单位</p>
          <p>Current Employer</p>
        </td>
        <td class="empty--box">${GZDWMC}</td>
        <td class="options-box">
            <p>工作单位<br />所在国家/地区</p>
          <p>Employer's Location</p>
        </td>
        <td class="empty--box">${GZDWSZGJDQ_TEXT}</td>
    </tr>
    </table>
    <div class="form-title">
        <span>来访信息</span> Visiting information
      </div>
      <table border="1">
        <tr>
            <td class="options-box">
              <p>办理事项</p>
            </td>
            <td class="empty--box">
                <p>${BLSX}</p>
                <!-- <p>Request an Invitation Letter for Visa Application</p> -->
            </td>
            <td class="options-box">
                <p>在华停留期限</p>
                <p>Duration of Stay in China</p>
            </td>
            <td class="empty--box">
                <p>${ZXTLQX_START}<br />至<br />${ZXTLQX_END}</p>
            </td>
        </tr>
        <tr>
          <td class="options-box">
            <p>来访期间<br />主要工作类型</p>
            <p>Main purpose of visit</p>
          </td>
          <td colspan="3">${LFQJGZLX}</td>
      </tr>
      <tr>
        <td class="options-box">
            <p>工作内容说明</p>
            <p>Visiting Purpose</p>
          </td>
          <td colspan="3">${GZNRSM}</td>
      </tr>
      </table>
      <#list SXRYXX as personItem>
      <div class="form-title">
        <span>随行人员 ${personItem_index + 1} 信息</span> Accompanying Person ${personItem_index + 1} information
      </div>
      <table border="1">
      <tr>
        <td class="options-box">
            <p>随行人员名<br />（同护照）</p>
            <p>Accompanying Person's Given Name (Same As Passport)</p>
        </td>
        <td>${personItem.M}</td>
        <td class="options-box">
          <p>随行人员姓<br />（同护照）</p>
          <p>Accompanying Person' s Family Name (Same As Passport)</p>
        </td>
        <td>${personItem.X}</td>
    </tr>
    <tr>
        <td class="options-box">
          <p>性别</p>
          <p>Gender</p>
        </td>
        <td class="empty--box">${personItem.XB}</td>
        <td class="options-box">
          <p>出生日期</p>
          <p>Date of birth</p>
        </td>
        <td class="empty--box">${personItem.CSRQ}</td>
    </tr>
    <tr>
        <td class="options-box">
          <p>国籍<br />（同护照）</p>
          <p>Nationality</p>
        </td>
        <td class="empty--box">${personItem.GJ_TEXT}</td>
        <td class="options-box">
          <p>护照号</p>
          <p>Passport No.</p>
        </td>
        <td class="empty--box">${personItem.HZHM}</td>
    </tr>
    <tr>
        <td class="options-box">
            <p>与被邀人关系</p>
            <p>Relationship with Invitee</p>
          </td>
          <td colspan="3">${personItem.YBYRGX}</td>
      </tr>
    </table>
    </#list>
    
    <div class="form-title">
        <span>办理流程</span> Processing Flow
      </div>
      <table border="1">
        <#if 主请人确认_LAST.approve_date != "">
        <tr>
            <td class="options-box">
                <p>主请人确认</p>
                <p>Inviter's Confirmation</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 主请人确认_LAST.approve_opinion != "">${主请人确认_LAST.approve_opinion}<#else>${主请人确认_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${主请人确认_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${主请人确认_LAST.approve_date_yyyy}-${主请人确认_LAST.approve_date_mm}-${主请人确认_LAST.approve_date_dd} ${主请人确认_LAST.approve_date_hh}:${主请人确认_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 单位外事干事初审_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>单位外事<br />干事初审</p>
                <p>Verified by School/Department</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 单位外事干事初审_LAST.approve_opinion != "">${单位外事干事初审_LAST.approve_opinion}<#else>${单位外事干事初审_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${单位外事干事初审_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${单位外事干事初审_LAST.approve_date_yyyy}-${单位外事干事初审_LAST.approve_date_mm}-${单位外事干事初审_LAST.approve_date_dd} ${单位外事干事初审_LAST.approve_date_hh}:${单位外事干事初审_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 单位外事主管审批_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>单位外事<br />主管审批</p>
                <p>Approval by School/Department</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 单位外事主管审批_LAST.approve_opinion != "">${单位外事主管审批_LAST.approve_opinion}<#else>${单位外事主管审批_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${单位外事主管审批_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${单位外事主管审批_LAST.approve_date_yyyy}-${单位外事主管审批_LAST.approve_date_mm}-${单位外事主管审批_LAST.approve_date_dd} ${单位外事主管审批_LAST.approve_date_hh}:${单位外事主管审批_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 国际处初审_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>国际处初审</p>
                <p>Preliminary Approval by Office of International Affairs</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 国际处初审_LAST.approve_opinion != "">${国际处初审_LAST.approve_opinion}<#else>${国际处初审_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${国际处初审_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${国际处初审_LAST.approve_date_yyyy}-${国际处初审_LAST.approve_date_mm}-${国际处初审_LAST.approve_date_dd} ${国际处初审_LAST.approve_date_hh}:${国际处初审_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 国际处复审_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>国际处复审</p>
                <p>Approval by Office of International Affairs</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 国际处复审_LAST.approve_opinion != "">${国际处复审_LAST.approve_opinion}<#else>${国际处复审_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${国际处复审_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${国际处复审_LAST.approve_date_yyyy}-${国际处复审_LAST.approve_date_mm}-${国际处复审_LAST.approve_date_dd} ${国际处复审_LAST.approve_date_hh}:${国际处复审_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 国际处终审_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>国际处终审</p>
                <p>Final Approval by Office of International Affairs</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 国际处终审_LAST.approve_opinion != "">${国际处终审_LAST.approve_opinion}<#else>${国际处终审_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${国际处终审_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${国际处终审_LAST.approve_date_yyyy}-${国际处终审_LAST.approve_date_mm}-${国际处终审_LAST.approve_date_dd} ${国际处终审_LAST.approve_date_hh}:${国际处终审_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
          <#if 国际处上传邀请函_LAST.approve_date != "">
          <tr>
            <td class="options-box">
                <p>国际处上传<br />邀请函</p>
                <p>Office of International Affairs Uploads Invitation Letter</p>
              </td>
              <td colspan="3">
                <p style="text-align:left;padding:10px 20px;"><#if 国际处上传邀请函_LAST.approve_opinion != "">${国际处上传邀请函_LAST.approve_opinion}<#else>${国际处上传邀请函_LAST.approve_result}</#if></p>
                <table border="0" style="width: 200px; float: right;border: 0;">
                  <tr>
                    <td>${国际处上传邀请函_LAST.approve_person}</td>
                  </tr>
                  <tr>
                    <td>${国际处上传邀请函_LAST.approve_date_yyyy}-${国际处上传邀请函_LAST.approve_date_mm}-${国际处上传邀请函_LAST.approve_date_dd} ${国际处上传邀请函_LAST.approve_date_hh}:${国际处上传邀请函_LAST.approve_date_mi}</td>
                  </tr>
                </table>
            </td>
          </tr>
          </#if>
      </table>
    </div>
</body>
</html>