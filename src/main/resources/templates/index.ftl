<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <title>广告管理页面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- basic styles -->

    <link href="${request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="${request.contextPath}/static/css/ace.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-skins.min.css"/>

    <script src="${request.contextPath}/static/js/ace-extra.min.js"></script>

</head>

<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    广告管理系统
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">

                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="${request.contextPath}/static/avatars/user.jpg"
                             alt="Jason's Photo"/>
								<span class="user-info">
									<small>Welcome,</small>
									admin
								</span>

                        <i class="icon-caret-down"></i>
                    </a>
                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="icon-off"></i>
                                Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.ace-nav -->
        </div><!-- /.navbar-header -->
    </div><!-- /.container -->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <ul class="nav nav-list">
                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-edit"></i>
                        <i class="icon-edit"></i>
                        <span class="menu-text"> 广告管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a id="allAds"">
                                <i class="icon-double-angle-right"></i>
                                所有广告
                            </a>
                        </li>

                        <li>
                            <a id="pushAds">
                                <i class="icon-double-angle-right" ></i>
                                发布广告
                            </a>
                        </li>

                    </ul>
                </li>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>

        <div class="main-content" id="mainContent" style="min-height: 612px;">
            <iframe src="${request.contextPath}/ads" id="iframepage"width="100%" style="min-height: 612px;"></iframe>
        </div>
    </div><!-- /.main-container -->
    <script type="text/javascript">
        window.jQuery || document.write("<script src='${request.contextPath}/static/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>



    <script type="text/javascript" language="javascript">

        $("#allAds").click(function(){
            document.getElementById('iframepage').src="${request.contextPath}/ads";
        });
        $("#pushAds").click(function(){
            document.getElementById('iframepage').src="${request.contextPath}/pushAdsHome";
        });
    </script>
    <script src="${request.contextPath}/static/js/bootstrap.min.js"></script>
    <script src="${request.contextPath}/static/js/typeahead-bs2.min.js"></script>

    <!-- ace scripts -->
    <script src="${request.contextPath}/static/js/ace-elements.min.js"></script>
    <script src="${request.contextPath}/static/js/ace.min.js"></script>

</body>
</html>
