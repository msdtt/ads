<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- basic styles -->

    <link href="${request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="${request.contextPath}/static/css/jquery-ui-1.10.3.full.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/datepicker.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ui.jqgrid.css"/>

    <link rel="stylesheet" href="${request.contextPath}/static/css/ace.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-skins.min.css"/>

    <script src="${request.contextPath}/static/js/ace-extra.min.js"></script>

</head>

<body>

<div class="page-content">
    <div class="page-header">
        <h1>
            Dashboard
            <small>
                <i class="icon-double-angle-right"></i>
                Regular Check
            </small>
        </h1>
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="alert alert-block alert-success">
                <button type="button" class="close" data-dismiss="alert">
                    <i class="icon-remove"></i>
                </button>

                <i class="icon-ok green"></i>

                Hello, today is
                <strong class="green">
                    August 11th,
                    <small>(Friday)</small>
                </strong>
                A week goes away again！
            </div>

            <div class="row">
                <!-- <div class="space-6"></div> -->

                <div class="col-sm-6 infobox-container">
                    <div class="infobox infobox-green  ">
                        <div class="infobox-icon">
                            <i class="icon-comments"></i>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-data-number">32</span>
                            <div class="infobox-content">2 remarks</div>
                        </div>
                        <div class="stat stat-success">8%</div>
                    </div>

                    <div class="infobox infobox-blue  ">
                        <div class="infobox-icon">
                            <i class="icon-twitter"></i>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-data-number">111</span>
                            <div class="infobox-content">New follows</div>
                        </div>

                        <div class="badge badge-success">
                            +37%
                            <i class="icon-arrow-up"></i>
                        </div>
                    </div>

                    <div class="infobox infobox-pink  ">
                        <div class="infobox-icon">
                            <i class="icon-shopping-cart"></i>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-data-number">11</span>
                            <div class="infobox-content">New orders</div>
                        </div>
                        <div class="stat stat-success">10%</div>
                    </div>

                    <div class="infobox infobox-red  ">
                        <div class="infobox-icon">
                            <i class="icon-beaker"></i>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-data-number">7</span>
                            <div class="infobox-content">Ongoing evaluation</div>
                        </div>
                    </div>

                    <div class="infobox infobox-orange2  ">
                        <div class="infobox-chart">
                            <span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-data-number">6,251</span>
                            <div class="infobox-content">Page clicks</div>
                        </div>

                        <div class="badge badge-success">
                            7.2%
                            <i class="icon-arrow-up"></i>
                        </div>
                    </div>

                    <div class="infobox infobox-blue2  ">
                        <div class="infobox-progress">
                            <div class="easy-pie-chart percentage" data-percent="11" data-size="46">
                                <span class="percent">11</span>%
                            </div>
                        </div>

                        <div class="infobox-data">
                            <span class="infobox-text">Positions</span>

                            <div class="infobox-content">
                                <span class="bigger-110">~</span>
                                9
                            </div>
                        </div>
                    </div>

                    <div class="space-6"></div>

                    <div class="infobox infobox-green infobox-small infobox-dark">
                        <div class="infobox-progress">
                            <div class="easy-pie-chart percentage" data-percent="61" data-size="39">
                                <span class="percent">61</span>%
                            </div>
                        </div>

                        <div class="infobox-data">
                            <div class="infobox-content">Tasks</div>
                            <div class="infobox-content">Completed</div>
                        </div>
                    </div>

                    <div class="infobox infobox-blue infobox-small infobox-dark">
                        <div class="infobox-chart">
                            <span class="sparkline" data-values="3,4,2,3,4,4,2,2"></span>
                        </div>

                        <div class="infobox-data">
                            <div class="infobox-content">Earns</div>
                            <div class="infobox-content">$12,000</div>
                        </div>
                    </div>
                </div>

                <!-- <div class="vspace-sm"></div> -->

                <div class="col-sm-6">
                    <div class="widget-box transparent" id="recent-box">
                        <div class="widget-header">
                            <h4 class="lighter smaller">
                                <i class="icon-rss orange"></i>
                                Recent
                            </h4>

                            <div class="widget-toolbar no-border">
                                <ul class="nav nav-tabs" id="recent-tab">
                                    <li class="active">
                                        <a data-toggle="tab" href="#task-tab">Tasks</a>
                                    </li>

                                    <li>
                                        <a data-toggle="tab" href="#member-tab">Vister</a>
                                    </li>

                                    <li>
                                        <a data-toggle="tab" href="#comment-tab">Remark</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-4">
                                <div class="tab-content padding-8 overflow-visible">
                                    <div id="task-tab" class="tab-pane active">
                                        <h4 class="smaller lighter green">
                                            <i class="icon-list"></i>
                                            <a id="todoList">To do list</a>
                                        </h4>

                                        <ul id="tasks" class="item-list">
                                            <li class="item-orange clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl">团体优惠Group Discount(Operation manager)</span>
                                                </label>

                                                <div class="pull-right easy-pie-chart percentage" data-size="30"
                                                     data-color="#ECCB71" data-percent="42">
                                                    <span class="percent">42</span>%
                                                </div>
                                            </li>

                                            <li class="item-red clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"> 巴黎一日游Paris Day Trip(Sales Manager)</span>
                                                </label>

                                                <div class="pull-right action-buttons">
                                                    <a href="${request.contextPath}/ads/pushAdsHome" class="blue">
                                                        <i class="icon-pencil bigger-130"></i>
                                                    </a>

                                                    <span class="vbar"></span>

                                                    <a href="#" class="red">
                                                        <i class="icon-trash bigger-130"></i>
                                                    </a>

                                                    <span class="vbar"></span>

                                                    <a href="#" class="green">
                                                        <i class="icon-flag bigger-130"></i>
                                                    </a>
                                                </div>
                                            </li>

                                            <li class="item-default clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl">门票打包PASS pakage(Product Manager)</span>
                                                </label>

                                                <div class="inline pull-right position-relative dropdown-hover">
                                                    <button class="btn btn-minier bigger btn-primary">
                                                        <i class="icon-cog icon-only bigger-120"></i>
                                                    </button>

                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-caret dropdown-close pull-right">
                                                        <li>
                                                            <a href="#" class="tooltip-success" data-rel="tooltip"
                                                               title="Mark&nbsp;as&nbsp;done">
																					<span class="green">
																						<i class="icon-ok bigger-110"></i>
																					</span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#" class="tooltip-error" data-rel="tooltip"
                                                               title="Delete">
																					<span class="red">
																						<i class="icon-trash bigger-110"></i>
																					</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </li>

                                            <li class="item-blue clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl">Regular Ads</span>
                                                </label>
                                            </li>
                                        </ul>
                                    </div>

                                    <div id="member-tab" class="tab-pane">
                                        <div class="clearfix">
                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Bob Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/user.jpg"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Bob Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">20 min</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-warning label-sm">pending</span>

                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
                                                                    data-toggle="dropdown">
                                                                <i class="icon-angle-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="#" class="tooltip-success"
                                                                       data-rel="tooltip" title="Approve">
																							<span class="green">
																								<i class="icon-ok bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-warning"
                                                                       data-rel="tooltip" title="Reject">
																							<span class="orange">
																								<i class="icon-remove bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-error"
                                                                       data-rel="tooltip" title="Delete">
																							<span class="red">
																								<i class="icon-trash bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Joe Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar2.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Joe Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">1 hour</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-warning label-sm">pending</span>

                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
                                                                    data-toggle="dropdown">
                                                                <i class="icon-angle-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="#" class="tooltip-success"
                                                                       data-rel="tooltip" title="Approve">
																							<span class="green">
																								<i class="icon-ok bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-warning"
                                                                       data-rel="tooltip" title="Reject">
																							<span class="orange">
																								<i class="icon-remove bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-error"
                                                                       data-rel="tooltip" title="Delete">
																							<span class="red">
																								<i class="icon-trash bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Jim Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Jim Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">2 hour</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-warning label-sm">pending</span>

                                                        <div class="inline position-relative">
                                                            <button class="btn btn-minier bigger btn-yellow btn-no-border dropdown-toggle"
                                                                    data-toggle="dropdown">
                                                                <i class="icon-angle-down icon-only bigger-120"></i>
                                                            </button>

                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a href="#" class="tooltip-success"
                                                                       data-rel="tooltip" title="Approve">
																							<span class="green">
																								<i class="icon-ok bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-warning"
                                                                       data-rel="tooltip" title="Reject">
																							<span class="orange">
																								<i class="icon-remove bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>

                                                                <li>
                                                                    <a href="#" class="tooltip-error"
                                                                       data-rel="tooltip" title="Delete">
																							<span class="red">
																								<i class="icon-trash bigger-110"></i>
																							</span>
                                                                    </a>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Alex Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar5.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Alex Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">3 hour</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-danger label-sm">blocked</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Bob Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar2.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Bob Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">6 hour</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-success label-sm arrowed-in">approved</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Susan's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar3.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Susan</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">yesterday</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-success label-sm arrowed-in">approved</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Phil Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar4.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Phil Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">2 days ago</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-info label-sm arrowed-in arrowed-in-right">online</span>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv memberdiv">
                                                <div class="user">
                                                    <img alt="Alexa Doe's avatar"
                                                         src="${request.contextPath}/static/avatars/avatar1.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Alexa Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">3天以前</span>
                                                    </div>

                                                    <div>
                                                        <span class="label label-success label-sm arrowed-in">approved</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="center">
                                            <i class="icon-group icon-2x green"></i>

                                            &nbsp;
                                            <a href="#">
                                                查看所有会员 &nbsp;
                                                <i class="icon-arrow-right"></i>
                                            </a>
                                        </div>

                                        <div class="hr hr-double hr8"></div>
                                    </div><!-- member-tab -->

                                    <div id="comment-tab" class="tab-pane">
                                        <div class="comments">
                                            <div class="itemdiv commentdiv">
                                                <div class="user">
                                                    <img alt="Bob Doe's Avatar"
                                                         src="${request.contextPath}/static/avatars/avatar.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Bob Doe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="green">6 min</span>
                                                    </div>

                                                    <div class="text">
                                                        <i class="icon-quote-left"></i>
                                                        it's a special and lovely space, so different from the room
                                                        or cabin or hotel I have stayed when I (URL HIDDEN) with
                                                        sunshine,warm and sweet decoration,close to the beach but
                                                        quite quiet.a little garden but no annoying insect.
                                                    </div>
                                                </div>

                                                <div class="tools">
                                                    <div class="inline position-relative">
                                                        <button class="btn btn-minier bigger btn-yellow dropdown-toggle"
                                                                data-toggle="dropdown">
                                                            <i class="icon-angle-down icon-only bigger-120"></i>
                                                        </button>

                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                            <li>
                                                                <a href="#" class="tooltip-success"
                                                                   data-rel="tooltip" title="Approve">
																						<span class="green">
																							<i class="icon-ok bigger-110"></i>
																						</span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" class="tooltip-warning"
                                                                   data-rel="tooltip" title="Reject">
																						<span class="orange">
																							<i class="icon-remove bigger-110"></i>
																						</span>
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="#" class="tooltip-error" data-rel="tooltip"
                                                                   title="Delete">
																						<span class="red">
																							<i class="icon-trash bigger-110"></i>
																						</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv commentdiv">
                                                <div class="user">
                                                    <img alt="Jennifer's Avatar"
                                                         src="${request.contextPath}/static/avatars/avatar1.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Jennifer</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="blue">15 min</span>
                                                    </div>

                                                    <div class="text">
                                                        <i class="icon-quote-left"></i>
                                                        the host is very easy to contact.I will stay here again if I
                                                        travel to Venice next time.
                                                    </div>
                                                </div>

                                                <div class="tools">
                                                    <div class="action-buttons bigger-125">
                                                        <a href="#">
                                                            <i class="icon-pencil blue"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="icon-trash red"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv commentdiv">
                                                <div class="user">
                                                    <img alt="Joe's Avatar"
                                                         src="${request.contextPath}/static/avatars/avatar2.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Joe</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="orange">22 min</span>
                                                    </div>

                                                    <div class="text">
                                                        <i class="icon-quote-left"></i>
                                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                                        Quisque commodo massa sed ipsum porttitor facilisis &hellip;
                                                    </div>
                                                </div>

                                                <div class="tools">
                                                    <div class="action-buttons bigger-125">
                                                        <a href="#">
                                                            <i class="icon-pencil blue"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="icon-trash red"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="itemdiv commentdiv">
                                                <div class="user">
                                                    <img alt="Rita's Avatar"
                                                         src="${request.contextPath}/static/avatars/avatar3.png"/>
                                                </div>

                                                <div class="body">
                                                    <div class="name">
                                                        <a href="#">Rita</a>
                                                    </div>

                                                    <div class="time">
                                                        <i class="icon-time"></i>
                                                        <span class="red">50 min</span>
                                                    </div>

                                                    <div class="text">
                                                        <i class="icon-quote-left"></i>
                                                        wonderful house and wonderful location!
                                                    </div>
                                                </div>

                                                <div class="tools">
                                                    <div class="action-buttons bigger-125">
                                                        <a href="#">
                                                            <i class="icon-pencil blue"></i>
                                                        </a>

                                                        <a href="#">
                                                            <i class="icon-trash red"></i>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="hr hr8"></div>

                                        <div class="center">
                                            <i class="icon-comments-alt icon-2x green"></i>

                                            &nbsp;
                                            <a href="#">
                                                See all comments &nbsp;
                                                <i class="icon-arrow-right"></i>
                                            </a>
                                        </div>

                                        <div class="hr hr-double hr8"></div>
                                    </div>
                                </div>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div><!-- /widget-box -->
                </div><!-- /span -->

            </div><!-- /row -->

            <div class="hr hr32 hr-dotted"></div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="widget-box transparent">
                        <div class="widget-header widget-header-flat">
                            <h4 class="lighter">
                                <i class="icon-star orange"></i>
                                Popular advertisements
                            </h4>

                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="icon-chevron-up"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main no-padding">
                                <table class="table table-bordered table-striped">
                                    <thead class="thin-border-bottom">
                                    <tr>
                                        <th>
                                            <i class="icon-caret-right blue"></i>
                                            Theme
                                        </th>

                                        <th>
                                            <i class="icon-caret-right blue"></i>
                                            Type
                                        </th>

                                        <th class="hidden-480">
                                            <i class="icon-caret-right blue"></i>
                                            Status
                                        </th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td>DAY TRIP - WARWICK CASTLE</td>

                                        <td>
                                            <b class="green">Homepage</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-info arrowed-right arrowed-in">Active </span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>COTSWOLD WILDLIFE PARK</td>

                                        <td>
                                            <b class="green">Mail</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-success arrowed-in arrowed-in-right">Active</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>PASS PACKAGE</td>

                                        <td>
                                            <small>
                                                <s class="red"></s>
                                            </small>
                                            <b class="green">Homepage</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-danger arrowed">Inactive</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>FEAST CATERING</td>

                                        <td>
                                            <small>
                                                <s class="red"></s>
                                            </small>
                                            <b class="green">message</b>
                                        </td>

                                        <td class="hidden-480">
																	<span class="label arrowed">
																		<s>Inreview</s>
																	</span>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Colorful graduation season</td>

                                        <td>
                                            <small>
                                                <s class="red"></s>
                                            </small>
                                            <b class="green">Email</b>
                                        </td>

                                        <td class="hidden-480">
                                            <span class="label label-danger arrowed">Inactive</span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div><!-- /widget-box -->
                </div>
                <div class="vspace-sm"></div>
                <div class="col-sm-5">
                    <div class="widget-box">
                        <div class="widget-header widget-header-flat widget-header-small">
                            <h5>
                                <i class="icon-signal"></i>
                                Page Referrer
                            </h5>

                            <div class="widget-toolbar no-border">
                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                    This week
                                    <i class="icon-angle-down icon-on-right bigger-110"></i>
                                </button>

                                <ul class="dropdown-menu pull-right dropdown-125 dropdown-lighter dropdown-caret">
                                    <li class="active">
                                        <a href="#" class="blue">
                                            <i class="icon-caret-right bigger-110">&nbsp;</i>
                                            This week
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                                            Last week
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                                            This month
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="icon-caret-right bigger-110 invisible">&nbsp;</i>
                                            Last month
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main">
                                <div id="piechart-placeholder"></div>

                                <div class="hr hr8 hr-double"></div>

                                <div class="clearfix">
                                    <div class="grid3">
															<span class="grey">
																<i class="icon-facebook-sign icon-2x blue"></i>
																&nbsp; likes
															</span>
                                        <h4 class="bigger pull-right">1,255</h4>
                                    </div>

                                    <div class="grid3">
															<span class="grey">
																<i class="icon-twitter-sign icon-2x purple"></i>
																&nbsp; tweets
															</span>
                                        <h4 class="bigger pull-right">941</h4>
                                    </div>

                                    <div class="grid3">
															<span class="grey">
																<i class="icon-pinterest-sign icon-2x red"></i>
																&nbsp; pins
															</span>
                                        <h4 class="bigger pull-right">1,050</h4>
                                    </div>
                                </div>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div><!-- /widget-box -->
                </div><!-- /span -->
            </div>

            <div class="hr hr32 hr-dotted"></div>

            <div class="row">
                <div class="col-sm-7">
                    <div class="widget-box transparent">
                        <div class="widget-header widget-header-flat">
                            <h4 class="lighter">
                                <i class="icon-signal"></i>
                                销售统计
                            </h4>

                            <div class="widget-toolbar">
                                <a href="#" data-action="collapse">
                                    <i class="icon-chevron-up"></i>
                                </a>
                            </div>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main padding-4">
                                <div id="sales-charts"></div>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div><!-- /widget-box -->
                </div>

                <div class="col-sm-5">
                    <div class="widget-box ">
                        <div class="widget-header">
                            <h4 class="lighter smaller">
                                <i class="icon-comment blue"></i>
                                会话
                            </h4>
                        </div>

                        <div class="widget-body">
                            <div class="widget-main no-padding">
                                <div class="dialogs">
                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="Alexa's Avatar"
                                                 src="${request.contextPath}/static/avatars/avatar1.png"/>
                                        </div>

                                        <div class="body">
                                            <div class="time">
                                                <i class="icon-time"></i>
                                                <span class="green">4秒钟前</span>
                                            </div>

                                            <div class="name">
                                                <a href="#">Alexa</a>
                                            </div>
                                            <div class="text">大家好啊</div>

                                            <div class="tools">
                                                <a href="#" class="btn btn-minier btn-info">
                                                    <i class="icon-only icon-share-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="John's Avatar"
                                                 src="${request.contextPath}/static/avatars/avatar.png"/>
                                        </div>

                                        <div class="body">
                                            <div class="time">
                                                <i class="icon-time"></i>
                                                <span class="blue">38秒以前</span>
                                            </div>

                                            <div class="name">
                                                <a href="#">John</a>
                                            </div>
                                            <div class="text">框架很好用嘛</div>

                                            <div class="tools">
                                                <a href="#" class="btn btn-minier btn-info">
                                                    <i class="icon-only icon-share-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="Bob's Avatar"
                                                 src="${request.contextPath}/static/avatars/user.jpg"/>
                                        </div>

                                        <div class="body">
                                            <div class="time">
                                                <i class="icon-time"></i>
                                                <span class="orange">2分钟以前</span>
                                            </div>

                                            <div class="name">
                                                <a href="#">Bob</a>
                                                <span class="label label-info arrowed arrowed-in-right">admin</span>
                                            </div>
                                            <div class="text">欢迎大家使用ACE后台管理系统.</div>

                                            <div class="tools">
                                                <a href="#" class="btn btn-minier btn-info">
                                                    <i class="icon-only icon-share-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="Jim's Avatar"
                                                 src="${request.contextPath}/static/avatars/avatar4.png"/>
                                        </div>

                                        <div class="body">
                                            <div class="time">
                                                <i class="icon-time"></i>
                                                <span class="grey">3分钟以前</span>
                                            </div>

                                            <div class="name">
                                                <a href="#">Jim</a>
                                            </div>
                                            <div class="text">大家多提提BUG</div>

                                            <div class="tools">
                                                <a href="#" class="btn btn-minier btn-info">
                                                    <i class="icon-only icon-share-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="itemdiv dialogdiv">
                                        <div class="user">
                                            <img alt="Alexa's Avatar"
                                                 src="${request.contextPath}/static/avatars/avatar1.png"/>
                                        </div>

                                        <div class="body">
                                            <div class="time">
                                                <i class="icon-time"></i>
                                                <span class="green">4分钟以前</span>
                                            </div>

                                            <div class="name">
                                                <a href="#">Alexa</a>
                                            </div>
                                            <div class="text">继续支持ACE后台系统</div>

                                            <div class="tools">
                                                <a href="#" class="btn btn-minier btn-info">
                                                    <i class="icon-only icon-share-alt"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <form>
                                    <div class="form-actions">
                                        <div class="input-group">
                                            <input placeholder="Type your message here ..." type="text"
                                                   class="form-control" name="message"/>
                                                        <span class="input-group-btn">
																	<button class="btn btn-sm btn-info no-radius"
                                                                            type="button">
																		<i class="icon-share-alt"></i>
																		发送
																	</button>
																</span>
                                        </div>
                                    </div>
                                </form>
                            </div><!-- /widget-main -->
                        </div><!-- /widget-body -->
                    </div><!-- /widget-box -->
                </div><!-- /span -->
            </div><!-- /row -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${request.contextPath}/static/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>
<script type="text/javascript" language="javascript">

    $("#todoList").click(function () {
        self.location = "${request.contextPath}/ads/calendarHome";
    });
</script>
</body>
</html>
