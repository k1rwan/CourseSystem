<%-- 
    Document   : delete
    Created on : 2018-9-12, 14:02:25
    Author     : liyueyang
--%>

<%@page import="Entity.Schedule"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/Course.css">
        <link rel="stylesheet" href="//cdn.bootcss.com/uikit/2.25.0/css/uikit.css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <script src="//cdn.bootcss.com/uikit/2.25.0/js/uikit.js"></script>
        <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script> 
        <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="js/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script>
        <title>JSP Page</title>
        <style>
            a
            {
                color:black;
            }
            a:hover
            {
                text-decoration:none;
            }
            #div1
            {
                position:absolute;
                width:30%;
                height:100%;
            }
            #div2
            {
                position:absolute;
                left:30%;
                top:10%;
            }
        </style>
    </head>
    <body>
        <div id="div1">
            <div class="intro-bar">
                <img src="img/bupt.jpg" alt="bupt" style="width:50px;">
                <div style="font-size:20px;position:absolute;left:20%;top:3%">欢迎回来，<%
                        
                        Entity.Students s=(Entity.Students)request.getAttribute("student");
                        
                        out.print(s.getSname());
                    %></div>
            </div>
            <form class="uk-form uk-form-stacked">
                <i class="uk-icon-angle-right uk-icon-small" style="position:absolute;top:45%;left:15%;"></i>
                <div class="uk-form-row">
                    <a href="student_home?" class="homepage-over-lay">主页</a>                  
                </div>
                <HR style="position:absolute;top:25%;left:20%;"width="60%" color=#987cb9 SIZE=3>
                <div class="uk-form-row">
                    <a href="student_elective?" class="register-over-lay">选课</a>                   
                </div>
                <div class="uk-form-row">
                    <a href="student_delete?" class="delete-over-lay">退课</a>
                </div>
                <div class="uk-form-row">
                    <a href="student_schedule?" class="schedule-over-lay">课程表</a>
                </div>
                <HR style="position:absolute;top:65%;left:20%" width="60%" color=#987cb9 SIZE=3>
                <div class="uk-form-row">
                    <a href="logout?" class="logout-over-lay">注销</a>
                </div>
            </form>
        </div>
        <div id="div2">
            <% Schedule[] sch=(Schedule[])request.getAttribute("schedule");
            int course_num=Integer.parseInt(String.valueOf(request.getAttribute("schedule_num")));
            String[] time={"8:00-9:50","10:00-11:50","13:30-15:20","15:30-17:20"};
            String[] week={"星期一","星期二","星期三","星期四","星期五","星期六","星期日"};
            %>
            <div><h2  align =" center" style="font-align:center"> 已选课程退选</h2></div>
            <div style=" max-height: 500px;overflow-y: scroll;">
                <table style = "border-collapse:separate;   border-spacing:10px;">
                    <tr>
                        <th style="width: 170px;font-size: 20px;">课程编号</th> 
                        <th style="width: 150px;font-size: 20px;">课程名</th>
                        <th style="width: 100px;font-size: 20px;">任课教师</th>
                        <th style="width: 150px;font-size: 20px;">上课时间</th>
                        <th style="width: 100px;font-size: 20px;">上课地点</th>
                        <th style="width: 50px;font-size: 20px;">操作</th>
                    </tr>        
                    <%for (int i = 0; i < course_num; i++) {
                    %>
                    <tr >
                        <th style="width: 170px"><% out.print(sch[i].getCNo()); %></th> 
                        <th style="width: 150px"><% out.print(sch[i].getCName()); %></th>
                        <th style="width: 100px"><% out.print(sch[i].getTName()); %></th>
                        <th style="width: 150px"><% out.print(week[sch[i].getWeekNo()]+" "+time[sch[i].getTimeNo()]); %></th>
                        <th style="width: 100px"><% out.print(sch[i].getPlaceNo()); %></th>
                        <th style="width: 50px"><a href="course_drop?" style="color:blue;" name="course" value="${i}"><i class="uk-icon-wheelchair"></i>退课</a></th>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>
        </div>
    </body>
</html>
