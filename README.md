# Strong Well
任务清单
<br/>
石：
<br/>
1、学社管理
2、帖子发布及内容
3、学有所乐
<br/>
问题：
<br/>
1、机构资料的手机号、QQ号和邮箱地址是用社长的相关信息还是在数据库中新增单独的机构信息（在社团信息表C_CINFO中新增手机号CPHONE、QQ号CQQ、邮箱地址CEMAIL三个字段）
<br/>
2、机构用户关联表、机构资源关联表
<br/>
（新建机构用户关联表C_ULINK，包含字段机构ID CCID、用户ID CUID、用户角色ID ROLEID
<BR/>
新建机构资源关联表C_RLINK，包含字段机构ID CCID、资源名称 RNAME、上传时间 UPLOADTIME、资源大类<课程、资料、视频> RMAJOR、资源小类<WORD、PPT、JPG> RMINOR、资源大小 RSIZE）
<br/>
清理一下github，.idea和out文件不用上传
<br/>
先执行这三句，然后再commit和push
<br/>
git rm -r --cached .
<br/>
git add .
<br/>
git commit -m 'update .gitignore'
<br/>
参考网站
<br/>
https://blog.csdn.net/qq_34590097/article/details/56284935
<br/>
https://www.cnblogs.com/zzcc/p/5695883.html