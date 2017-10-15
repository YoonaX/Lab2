<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">


 <script type="text/javascript">
function tosubmit()
{
	 document.getElementById("form_1").submit();
}
</script>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">   <%-- 在IE运行最新的渲染模式 --%>
        <meta name="viewport" content="width=device-width, initial-scale=1">   <%-- 初始化移动浏览显示 --%>
        <meta name="Author" content="Dreamer-1.">

        <!-- 引入各种CSS样式表 -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/index.css">    <!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
        <link rel="stylesheet" href="css/font-change.css">    <!-- 将默认字体从宋体换成微软雅黑（个人比较喜欢微软雅黑，移动端和桌面端显示效果比较接近） -->

        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

        <title>- 后台管理系统 -</title>

    </head>

    <body bgcolor="#D4D4D4">
<form action="Edit.action" name = 'form' id="form_1"><br/>
</form>
    <!-- 顶部菜单（来自bootstrap官方Demon）==================================== -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
              <div class="container" style="background-image:url('image/3.jpg');">

               <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
               <i><font size=4 color=yellow>若作者藏书量变为零，删除作者信息  &nbsp&nbsp&nbsp&nbsp               （新增一本图书，若该图书作者在库中，作者的信息依然是原来库中的信息）</font> </i><br/>
               <i><font size=4 color=yellow>若输入的书名或ISBN名在库中存在提醒重复，不存储        &nbsp&nbsp&nbsp&nbsp  （更改作品作者信息请在更改项完成 。若两本书作者同一人，更新其中一本书作者。若更新作者的名字，可能是之前输入失误的更改操作，更新为新的作者，则原作者其他作品不受影响。若只更新作者的年龄或国家，该作者其他所有的作品作者信息均随之改变，因为这是对作者信息的定时更新，作者还是原来那个人，那他的所有作品的作者信息当然也要随着改变。）</font> </i><br/>
               <i><font size=4 color=yellow>欢迎使图书馆后台管理系统</font> </i><br/>

                </div>
              </div>

        </nav>

    <!-- 左侧菜单选项========================================= -->

        <div class="container-fluid">
            <div class="row-fluie">
                <div class="col-sm-3 col-md-2 sidebar">
                 <br/><br/><br/>
                  <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                  <i><font size=6 color=blue>功&nbsp能&nbsp实&nbsp现</font> </i><br/>
                    </div>

                    <ul class="nav nav-sidebar">
                        <!-- 一级菜单 -->


                        <ul id="productMeun" class="nav nav-list collapse menu-second">
                            <li><a href="GetAllAuthor" ><i class="fa fa-list-alt"></i> 点击显示图书馆所有作者</a></li>
                        </ul>


                        <!-- 二级菜单 -->
                        <!-- 注意一级菜单中<a>标签内的href="#……"里面的内容要与二级菜单中<ul>标签内的id="……"里面的内容一致 -->
                        <ul id="userMeun" class="nav nav-list collapse menu-second">
                            <li><a href="###" onclick="showAtRight('xxxxx.jsp')"><i class="fa fa-users"></i> 点击输入作者，点击图书显示详细信息</a></li>
                        </ul>



                        <ul id="productMeun" class="nav nav-list collapse menu-second">
                            <li><a href="###" onclick="showAtRight('register.jsp')"><i class="fa fa-list-alt"></i> 新增图书，点击输入图书信息</a></li>
                        </ul>

                        <ul id="productMeun" class="nav nav-list collapse menu-second">
                            <li><a href="###"  onclick="tosubmit()"><i class="fa fa-list-alt"></i> 显示所有图书</a></li>
                             <li><a href="###" onclick="showAtRight('ChooseEdit.jsp')" ><i class="fa fa-list-alt"></i> 选择修改对应图书信息</a></li>

                        </ul>


                    </ul>

                </div>
            </div>
        </div>

<!-- 右侧内容展示==================================================   -->
                 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                    <h1 class="page-header"><i class="fa fa-cog fa-spin"></i></h1>

                        <!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
                          <div id="content">
                          </div>
                </div>


        <script type="text/javascript">

        /*
         * 对选中的标签激活active状态，对先前处于active状态但之后未被选中的标签取消active
         * （实现左侧菜单中的标签点击后变色的效果）
         */
        $(document).ready(function () {
            $('ul.nav > li').click(function (e) {
                //e.preventDefault();    加上这句则导航的<a>标签会失效
                $('ul.nav > li').removeClass('active');
                $(this).addClass('active');
            });
        });

        /*
         * 解决ajax返回的页面中含有javascript的办法：
         * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
         */
        function executeScript(html)
        {

            var reg = /<script[^>]*>([^\x00]+)$/i;
            //对整段HTML片段按<\/script>拆分
            var htmlBlock = html.split("<\/script>");
            for (var i in htmlBlock)
            {
                var blocks;//匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
                if (blocks = htmlBlock[i].match(reg))
                {
                    //清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
                    var code = blocks[1].replace(/<!--/, '');
                    try
                    {
                        eval(code) //执行脚本
                    }
                    catch (e)
                    {
                    }
                }
            }
        }

        /*
         * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示）
         * 注意：
         *   ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
         *   ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
         *   （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
        */
        function showAtRight(url) {
            var xmlHttp;

            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlHttp=new XMLHttpRequest();    //创建 XMLHttpRequest对象
            }
            else {
                // code for IE6, IE5
                xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlHttp.onreadystatechange=function() {
                //onreadystatechange — 当readystate变化时调用后面的方法

                if (xmlHttp.readyState == 4) {
                    //xmlHttp.readyState == 4    ——    finished downloading response

                    if (xmlHttp.status == 200) {
                        //xmlHttp.status == 200        ——    服务器反馈正常

                        document.getElementById("content").innerHTML=xmlHttp.responseText;    //重设页面中id="content"的div里的内容
                        executeScript(xmlHttp.responseText);    //执行从服务器返回的页面内容里包含的JavaScript函数
                    }
                    //错误状态处理
                    else if (xmlHttp.status == 404){
                        alert("出错了☹   （错误代码：404 Not Found），……！");
                        /* 对404的处理 */
                        return;
                    }
                    else if (xmlHttp.status == 403) {
                        alert("出错了☹   （错误代码：403 Forbidden），……");
                        /* 对403的处理  */
                        return;
                    }
                    else {
                        alert("出错了☹   （错误代码：" + request.status + "），……");
                        /* 对出现了其他错误代码所示错误的处理   */
                        return;
                    }
                }

              }

            //把请求发送到服务器上的指定文件（url指向的文件）进行处理
            xmlHttp.open("GET", url, true);        //true表示异步处理
            xmlHttp.send();
        }
        </script>



    </body>
</html>