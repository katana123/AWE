
var lockTime=new Date();var isSubmit=false;var applyLeagueMember={getUrl:'/ajax/optionAjax.ashx',postUrl:'/ajax/PostAjax.asmx',apply:function(leagueID,applyMsg,isPublic){if(isSubmit){return false;}
var applyData={};applyData.leagueID=leagueID;applyData.applyMsg=applyMsg;applyData.isPublic=isPublic;if(leagueID===''||isPublic===''){lockTime=new Date();alert('申请失败!');return false;}
else{if(isPublic!='1'&&$.trim(applyMsg).length<=0){lockTime=new Date();alert('此学社为审核制学社，需要填写申请理由才可申请!');return false;}
else{applyData.leagueID=leagueID;applyData.applyMsg=applyMsg;isSubmit=true;$.comajax(applyLeagueMember.postUrl,'ApplyJoinLeague',applyData,function(d){isSubmit=false;lockTime=new Date();if(d==-4||d==-3){alert("你输入的文字含有敏感词，请重新输入！");return;}else if(d==-6){alert("您已被该学社管理员拉入黑名单，无法进行此操作，请联系该学社管理员~");return;}else if(d==-300){showModalTips("您加入学社的数量已达上限（300个）",true);return;}
else if(d>0){window.location.reload();}},null);}}},quit:function(leagueID,proUserName){var applyData={};applyData.leagueID=leagueID;applyData.userName=proUserName;$.comajax(applyLeagueMember.postUrl,"QuitLeague",applyData,function(d){if(d>0)
{location.replace(location.href)}},null)}}
$(function(){$("#btnApply.btn-green").click(function(){var nowTime=new Date();var postTime=nowTime-lockTime;if(postTime<200){return;}
var leagueID=parseInt($(this).attr("data-id"));var isPublic=parseInt($(this).attr("data-isPublic"))
if(isPublic==0){$('#popApplyLeague').modal({overlayClose:true});$("#btnSubmit").bind("click",function(event){var msg=$("#txtApplyMsg").val();if($.trim(msg).length==0){$("#divMsg").html("此学社为审核制学社，需要填写申请理由才可申请!");lockTime=new Date();return;}
if(leagueJS.CheckLength($.trim(msg))>200){$("#divMsg").html("您输入的文字不能超过200字符！");lockTime=new Date();return;}
else{applyLeagueMember.apply(leagueID,msg,isPublic);}});$("#popApplyLeague .btn-default").click(function(){$.modal.close()});}
else{applyLeagueMember.apply(leagueID,"",isPublic);}});$("#btnQuit").click(function(){var leagueID=parseInt($(this).attr("data-id"));var proUserName=$(this).attr("data-userName");$("#popGetOffLeague").modal({overlayClose:true});$("#popGetOffLeague .btn-green").click(function(){applyLeagueMember.quit(leagueID,proUserName);});$("#popGetOffLeague .btn-default").click(function(){$.modal.close()});});});