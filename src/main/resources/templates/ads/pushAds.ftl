<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>AITSupport</title>

    <!-- basic styles -->

    <link href="${request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="${request.contextPath}/static/css/select2.css"/>

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="${request.contextPath}/static/css/ace.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-skins.min.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${request.contextPath}/static/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="${request.contextPath}/static/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="${request.contextPath}/static/js/html5shiv.js"></script>
    <script src="${request.contextPath}/static/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>


<div class="page-content">

    <div class="page-content">
        <div class="page-header">
            <h1>
                Publish
                <small>
                    <i class="icon-double-angle-right"></i>
                    an Ad
                </small>
            </h1>
        </div><!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <h4 class="lighter">
                    <i class="icon-hand-right icon-animated-hand-pointer blue"></i>
                    <a href="#modal-wizard" data-toggle="modal" class="pink"> Wizard Inside a Modal Box </a>
                </h4>

                <div class="hr hr-18 hr-double dotted"></div>

                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-box">
                            <div class="widget-header widget-header-blue widget-header-flat">
                                <h4 class="lighter">New Ad</h4>
                                <div class="widget-toolbar">
                                    <label>
                                        <small class="green">
                                            <b>Validation</b>
                                        </small>

                                        <input id="skip-validation" type="checkbox"
                                               class="ace ace-switch ace-switch-4"/>
                                        <span class="lbl"></span>
                                    </label>
                                </div>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
                                    <div id="fuelux-wizard" class="row-fluid" data-target="#step-container">
                                        <ul class="wizard-steps">
                                            <li data-target="#step1" class="active">
                                                <span class="step">1</span>
                                                <span class="title">Basic Information基本信息</span>
                                            </li>

                                            <li data-target="#step2">
                                                <span class="step">2</span>
                                                <span class="title">Suggest the TEMPLATE模板建议</span>
                                            </li>

                                            <li data-target="#step3">
                                                <span class="step">3</span>
                                                <span class="title">Detailed Advertisement具体内容</span>
                                            </li>

                                            <li data-target="#step4">
                                                <span class="step">4</span>
                                                <span class="title">Verify the Ad Label确认广告标签</span>
                                            </li>

                                            <li data-target="#step5">
                                                <span class="step">5</span>
                                                <span class="title">Verify the rList确认推荐客户列表</span>
                                            </li>

                                            <li data-target="#step6">
                                                <span class="step">6</span>
                                                <span class="title">Completed完成</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <hr/>
                                    <div class="step-content row-fluid position-relative" id="step-container">
                                        <div class="step-pane active" id="step1">
                                            <h3 class="lighter block green">Enter the Basic information</h3>
                                            <form class="form-horizontal" id="sample-form">
                                                <div class="form-group has-warning">
                                                    <label for="inputWarning"
                                                           class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                        with warning</label>

                                                    <div class="col-xs-12 col-sm-5">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <input type="text" id="inputWarning"
                                                                                   class="width-100"/>
                                                                            <i class="icon-leaf"></i>
                                                                        </span>
                                                    </div>
                                                    <div class="help-block col-xs-12 col-sm-reset inline">
                                                        Warning tip help!
                                                    </div>
                                                </div>

                                                <div class="form-group has-error">
                                                    <label for="inputError"
                                                           class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">Input
                                                        with error</label>

                                                    <div class="col-xs-12 col-sm-5">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <input type="text" id="inputError"
                                                                                   class="width-100"/>
                                                                            <i class="icon-remove-sign"></i>
                                                                        </span>
                                                    </div>
                                                    <div class="help-block col-xs-12 col-sm-reset inline"> Error
                                                        tip help!
                                                    </div>
                                                </div>

                                                <div class="form-group has-success">
                                                    <label for="inputSuccess"
                                                           class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                        with success</label>

                                                    <div class="col-xs-12 col-sm-5">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <input type="text" id="inputSuccess"
                                                                                   class="width-100"/>
                                                                            <i class="icon-ok-sign"></i>
                                                                        </span>
                                                    </div>
                                                    <div class="help-block col-xs-12 col-sm-reset inline">
                                                        Success tip help!
                                                    </div>
                                                </div>

                                                <div class="form-group has-info">
                                                    <label for="inputInfo"
                                                           class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                        with info</label>

                                                    <div class="col-xs-12 col-sm-5">
                                                                        <span class="block input-icon input-icon-right">
                                                                            <input type="text" id="inputInfo"
                                                                                   class="width-100"/>
                                                                            <i class="icon-info-sign"></i>
                                                                        </span>
                                                    </div>
                                                    <div class="help-block col-xs-12 col-sm-reset inline"> Info
                                                        tip help!
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label for="inputError2"
                                                           class="col-xs-12 col-sm-3 control-label no-padding-right">Input
                                                        with error</label>

                                                    <div class="col-xs-12 col-sm-5">
                                                                        <span class="input-icon block">
                                                                            <input type="text" id="inputError2"
                                                                                   class="width-100"/>
                                                                            <i class="icon-remove-sign red"></i>
                                                                        </span>
                                                    </div>
                                                    <div class="help-block col-xs-12 col-sm-reset inline"> Error
                                                        tip help!
                                                    </div>
                                                </div>
                                            </form>

                                            <form class="form-horizontal hide" id="validation-form"
                                                  method="get">

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="name">Ad Title:</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <input type="text" id="name" name="name"
                                                                   class="col-xs-12 col-sm-5"/>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-2"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="state">Ad Type</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <select id="state" name="state" class="select2"
                                                                data-placeholder="Click to Choose...">
                                                            <option value="VA">type1</option>
                                                            <option value="WA">type2</option>
                                                            <option value="WV">type3</option>
                                                            <option value="WI">type4</option>
                                                            <option value="WY">type5</option>
                                                            <option value="VA">type6</option>
                                                            <option value="WA">type7</option>
                                                            <option value="WV">type8</option>
                                                            <option value="WI">type9</option>
                                                            <option value="WY">type10</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="space-2"></div>


                                                <div class="hr hr-dotted"></div>


                                                <div class="space-2"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="platform">Valid Time</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                            <select class="input-medium" id="platform"
                                                                    name="platform">
                                                                <option value="">------------------</option>
                                                                <option value="linux">1 WEEK</option>
                                                                <option value="windows">2 WEEKS</option>
                                                                <option value="mac">3 Days</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-2"></div>

                                                <div class="form-group">
                                                    <label class="control-label col-xs-12 col-sm-3 no-padding-right"
                                                           for="comment">Comment</label>

                                                    <div class="col-xs-12 col-sm-9">
                                                        <div class="clearfix">
                                                                    <textarea class="input-xlarge" name="comment"
                                                                              id="comment"></textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="space-8"></div>

                                                <div class="form-group">
                                                    <div class="col-xs-12 col-sm-4 col-sm-offset-3">
                                                        <label>
                                                            <input name="agree" id="agree" type="checkbox"
                                                                   class="ace"/>
                                                            <span class="lbl"> Verified </span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="step-pane" id="step2">
                                            <div class="col-sm-6">
                                                <h3 class="header blue lighter smaller">
                                                    <i class="icon-list-alt smaller-90"></i>
                                                    Suggest Templates
                                                </h3>
                                                <button id="id-btn-dialog1" class="btn btn-info btn-sm">Email
                                               <button id="id-btn-dialog2" class="btn btn-purple btn-sm">Messages
                                               <button id="id-btn-dialog3" class="btn btn-info btn-sm">WeChat
                                                   <div id="dialog-message" class="hide">
                                                       <p>
                                                           WE Recommandate you this template because...
                                                       </p>

                                                       <div class="hr hr-12 hr-double"></div>

                                                       <p>
                                                           WE Recommandate you this template because it earn
                                                           <b>36% more feedback</b>
                                                           .
                                                       </p>
                                                   </div><!-- #dialog-message -->

                                                <div id="dialog-message1" class="hide">
                                                    <p>
                                                        WE Recommandate you this template because...
                                                    </p>

                                                    <div class="hr hr-12 hr-double"></div>

                                                    <p>
                                                        WE Recommandate you this template because it earn
                                                        <b>36% more feedback</b>
                                                        .
                                                    </p>
                                                </div><!-- #dialog-message1 -->
                                                <div id="dialog-confirm" class="hide">
                                                    <div class="alert alert-info bigger-110">
                                                        These items will be permanently deleted and cannot be
                                                        recovered.
                                                    </div>

                                                    <div class="space-6"></div>

                                                    <p class="bigger-110 bolder center grey">
                                                        <i class="icon-hand-right blue bigger-120"></i>
                                                        Are you sure?
                                                    </p>
                                                </div><!-- #dialog-confirm -->
                                            </div><!-- ./span -->

                                            <div class="row-fluid">
                                                <div class="alert alert-success">
                                                    <button type="button" class="close" data-dismiss="alert">
                                                        <i class="icon-remove"></i>
                                                    </button>

                                                    <strong>
                                                        <i class="icon-ok"></i>
                                                        Well done!
                                                    </strong>

                                                    The system has successfully give out its recommandation!
                                                    <br/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="step-pane" id="step3">
                                            <div class="center">
                                                <h3 class="blue lighter">This is step 3</h3>
                                            </div>
                                        </div>
                                        <div class="step-pane" id="step4">
                                            <div class="center">
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="table-responsive">
                                                            <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th class="center">
                                                                        <label>
                                                                            <input type="checkbox" class="ace" />
                                                                            <span class="lbl"></span>
                                                                        </label>
                                                                    </th>
                                                                    <th>Domain</th>
                                                                    <th>Price</th>
                                                                    <th class="hidden-480">Clicks</th>

                                                                    <th>
                                                                        <i class="icon-time bigger-110 hidden-480"></i>
                                                                        Update
                                                                    </th>
                                                                    <th class="hidden-480">Status</th>

                                                                    <th></th>
                                                                </tr>
                                                                </thead>

                                                                <tbody>
                                                                <tr>
                                                                    <td class="center">
                                                                        <label>
                                                                            <input type="checkbox" class="ace" />
                                                                            <span class="lbl"></span>
                                                                        </label>
                                                                    </td>

                                                                    <td>
                                                                        <a href="#">ace.com</a>
                                                                    </td>
                                                                    <td>$45</td>
                                                                    <td class="hidden-480">3,330</td>
                                                                    <td>Feb 12</td>

                                                                    <td class="hidden-480">
                                                                        <span class="label label-sm label-warning">Expiring</span>
                                                                    </td>

                                                                    <td>
                                                                        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                            <button class="btn btn-xs btn-success">
                                                                                <i class="icon-ok bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-info">
                                                                                <i class="icon-edit bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-danger">
                                                                                <i class="icon-trash bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-warning">
                                                                                <i class="icon-flag bigger-120"></i>
                                                                            </button>
                                                                        </div>

                                                                        <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                            <div class="inline position-relative">
                                                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                                    <i class="icon-cog icon-only bigger-110"></i>
                                                                                </button>

                                                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                                    <li>
                                                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>

                                                                <tr>
                                                                    <td class="center">
                                                                        <label>
                                                                            <input type="checkbox" class="ace" />
                                                                            <span class="lbl"></span>
                                                                        </label>
                                                                    </td>

                                                                    <td>
                                                                        <a href="#">base.com</a>
                                                                    </td>
                                                                    <td>$35</td>
                                                                    <td class="hidden-480">2,595</td>
                                                                    <td>Feb 18</td>

                                                                    <td class="hidden-480">
                                                                        <span class="label label-sm label-success">Registered</span>
                                                                    </td>

                                                                    <td>
                                                                        <div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
                                                                            <button class="btn btn-xs btn-success">
                                                                                <i class="icon-ok bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-info">
                                                                                <i class="icon-edit bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-danger">
                                                                                <i class="icon-trash bigger-120"></i>
                                                                            </button>

                                                                            <button class="btn btn-xs btn-warning">
                                                                                <i class="icon-flag bigger-120"></i>
                                                                            </button>
                                                                        </div>

                                                                        <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                            <div class="inline position-relative">
                                                                                <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                                    <i class="icon-cog icon-only bigger-110"></i>
                                                                                </button>

                                                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                                    <li>
                                                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                </tbody>
                                                            </table>
                                                        </div><!-- /.table-responsive -->
                                                    </div><!-- /span -->
                                                </div><!-- /row -->
                                            </div>
                                        </div>
                                        <div class="step-pane" id="step5">
                                            <div class="center">
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <h3 class="header smaller lighter blue">jQuery dataTables</h3>
                                                        <div class="table-header">
                                                            Results for "Latest Registered Domains"
                                                        </div>

                                                        <div class="table-responsive">
                                                            <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                                                <thead>
                                                                <tr>
                                                                    <th class="center">
                                                                        <label>
                                                                            <input type="checkbox" class="ace" />
                                                                            <span class="lbl"></span>
                                                                        </label>
                                                                    </th>
                                                                    <th>Domain</th>
                                                                    <th>Price</th>
                                                                    <th class="hidden-480">Clicks</th>

                                                                    <th>
                                                                        <i class="icon-time bigger-110 hidden-480"></i>
                                                                        Update
                                                                    </th>
                                                                    <th class="hidden-480">Status</th>

                                                                    <th></th>
                                                                </tr>
                                                                </thead>

                                                                <tbody>
 
                                                                <tr>
                                                                    <td class="center">
                                                                        <label>
                                                                            <input type="checkbox" class="ace" />
                                                                            <span class="lbl"></span>
                                                                        </label>
                                                                    </td>

                                                                    <td>
                                                                        <a href="#">view.com</a>
                                                                    </td>
                                                                    <td>$45</td>
                                                                    <td class="hidden-480">4,100</td>
                                                                    <td>Mar 12</td>

                                                                    <td class="hidden-480">
                                                                        <span class="label label-sm label-success">Registered</span>
                                                                    </td>

                                                                    <td>
                                                                        <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
                                                                            <a class="blue" href="#">
                                                                                <i class="icon-zoom-in bigger-130"></i>
                                                                            </a>

                                                                            <a class="green" href="#">
                                                                                <i class="icon-pencil bigger-130"></i>
                                                                            </a>

                                                                            <a class="red" href="#">
                                                                                <i class="icon-trash bigger-130"></i>
                                                                            </a>
                                                                        </div>

                                                                        <div class="visible-xs visible-sm hidden-md hidden-lg">
                                                                            <div class="inline position-relative">
                                                                                <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown">
                                                                                    <i class="icon-caret-down icon-only bigger-120"></i>
                                                                                </button>

                                                                                <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                                    <li>
                                                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="icon-zoom-in bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="icon-edit bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>

                                                                                    <li>
                                                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="icon-trash bigger-120"></i>
																				</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>

                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="step-pane" id="step6">
                                            <div class="center">
                                                <h3 class="green">Congrats!</h3>
                                                Your advertisement is ready to publish! Click finish to
                                                continue!
                                            </div>
                                        </div>
                                    </div>

                                    <hr/>
                                    <div class="row-fluid wizard-actions">
                                        <button class="btn btn-prev">
                                            <i class="icon-arrow-left"></i>
                                            Prev
                                        </button>

                                        <button class="btn btn-success btn-next" data-last="Finish ">
                                            Next
                                            <i class="icon-arrow-right icon-on-right"></i>
                                        </button>
                                    </div>
                                </div><!-- /widget-main -->
                            </div><!-- /widget-body -->
                        </div>
                    </div>
                </div>

                <div id="modal-wizard" class="modal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header" data-target="#modal-step-contents">
                                <ul class="wizard-steps">
                                    <li data-target="#modal-step1" class="active">
                                        <span class="step">1</span>
                                        <span class="title">Basic Information</span>
                                    </li>

                                    <li data-target="#modal-step2">
                                        <span class="step">2</span>
                                        <span class="title">Suggest the TEMPLATE</span>
                                    </li>

                                    <li data-target="#modal-step3">
                                        <span class="step">3</span>
                                        <span class="title">Detailed Advertisement</span>
                                    </li>

                                    <li data-target="#modal-step4">
                                        <span class="step">4</span>
                                        <span class="title">Verify the Ad Label</span>
                                    </li>

                                    <li data-target="#modal-step5">
                                        <span class="step">5</span>
                                        <span class="title">Verify the rList</span>
                                    </li>
                                    <li data-target="#modal-step6">
                                        <span class="step">6</span>
                                        <span class="title">Completed</span>
                                    </li>
                                </ul>
                            </div>

                            <div class="modal-body step-content" id="modal-step-contents">
                                <div class="step-pane active" id="modal-step1">
                                    <div class="center">
                                        <h4 class="blue">Step 1</h4>
                                    </div>
                                </div>

                                <div class="step-pane" id="modal-step2">
                                    <div class="center">
                                        <h4 class="blue">Step 2</h4>
                                    </div>
                                </div>

                                <div class="step-pane" id="modal-step3">
                                    <div class="center">
                                        <h4 class="blue">Step 3</h4>
                                    </div>
                                </div>

                                <div class="step-pane" id="modal-step4">
                                    <div class="center">
                                        <h4 class="blue">Step 4</h4>
                                    </div>
                                </div>
                                <div class="step-pane" id="modal-step5">
                                    <div class="center">
                                        <h4 class="blue">Step 5</h4>
                                    </div>
                                </div>
                                <div class="step-pane" id="modal-step6">
                                    <div class="center">
                                        <h4 class="blue">Step 6</h4>
                                    </div>
                                </div>


                            </div>

                            <div class="modal-footer wizard-actions">
                                <button class="btn btn-sm btn-prev">
                                    <i class="icon-arrow-left"></i>
                                    Prev
                                </button>

                                <button class="btn btn-success btn-sm btn-next" data-last="Finish ">
                                    Next
                                    <i class="icon-arrow-right icon-on-right"></i>
                                </button>

                                <button class="btn btn-danger btn-sm pull-left" data-dismiss="modal">
                                    <i class="icon-remove"></i>
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </div>
                </div><!-- PAGE CONTENT ENDS -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->

<!-- basic scripts -->


<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${request.contextPath}/static/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
</script>

<!-- <![endif]-->

<script src="${request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/static/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="${request.contextPath}/static/js/fuelux/fuelux.wizard.min.js"></script>
<script src="${request.contextPath}/static/js/jquery.validate.min.js"></script>
<script src="${request.contextPath}/static/js/additional-methods.min.js"></script>
<script src="${request.contextPath}/static/js/bootbox.min.js"></script>
<script src="${request.contextPath}/static/js/jquery.maskedinput.min.js"></script>
<script src="${request.contextPath}/static/js/select2.min.js"></script>
<script src="${request.contextPath}/static/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${request.contextPath}/static/js/jquery.ui.touch-punch.min.js"></script>
<script src="${request.contextPath}/static/js/jquery.easy-pie-chart.min.js"></script>
<script src="${request.contextPath}/static/js/jquery.gritter.min.js"></script>
<!-- ace scripts -->

<script src="${request.contextPath}/static/js/ace-elements.min.js"></script>
<script src="${request.contextPath}/static/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
    jQuery(function ($) {

        $('[data-rel=tooltip]').tooltip();

        $(".select2").css('width', '200px').select2({allowClear: true})
                .on('change', function () {
                    $(this).closest('form').validate().element($(this));
                });


        var $validation = false;
        $('#fuelux-wizard').ace_wizard().on('change', function (e, info) {
            if (info.step == 1 && $validation) {
                if (!$('#validation-form').valid()) return false;
            }
        }).on('finished', function (e) {
            bootbox.dialog({
                message: "Thank you! Your information was successfully saved!",
                buttons: {
                    "success": {
                        "label": "OK",
                        "className": "btn-sm btn-primary"
                    }
                }
            });
        }).on('stepclick', function (e) {
            //return false;//prevent clicking on steps
        });


        $('#skip-validation').removeAttr('checked').on('click', function () {
            $validation = this.checked;
            if (this.checked) {
                $('#sample-form').hide();
                $('#validation-form').removeClass('hide');
            }
            else {
                $('#validation-form').addClass('hide');
                $('#sample-form').show();
            }
        });

        $.mask.definitions['~'] = '[+-]';
        $('#phone').mask('(999) 999-9999');

        jQuery.validator.addMethod("phone", function (value, element) {
            return this.optional(element) || /^\(\d{3}\) \d{3}\-\d{4}( x\d{1,6})?$/.test(value);
        }, "Enter a valid phone number.");

        $('#validation-form').validate({
            errorElement: 'div',
            errorClass: 'help-block',
            focusInvalid: false,
            rules: {
                email: {
                    required: true,
                    email: true
                },
                password: {
                    required: true,
                    minlength: 5
                },
                password2: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                name: {
                    required: true
                },
                phone: {
                    required: true,
                    phone: 'required'
                },
                url: {
                    required: true,
                    url: true
                },
                comment: {
                    required: true
                },
                state: {
                    required: true
                },
                platform: {
                    required: true
                },
                subscription: {
                    required: true
                },
                gender: 'required',
                agree: 'required'
            },

            messages: {
                email: {
                    required: "Please provide a valid email.",
                    email: "Please provide a valid email."
                },
                password: {
                    required: "Please specify a password.",
                    minlength: "Please specify a secure password."
                },
                subscription: "Please choose at least one option",
                gender: "Please choose gender",
                agree: "Please accept our policy"
            },

            invalidHandler: function (event, validator) { //display error alert on form submit
                $('.alert-danger', $('.login-form')).show();
            },

            highlight: function (e) {
                $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
            },

            success: function (e) {
                $(e).closest('.form-group').removeClass('has-error').addClass('has-info');
                $(e).remove();
            },

            errorPlacement: function (error, element) {
                if (element.is(':checkbox') || element.is(':radio')) {
                    var controls = element.closest('div[class*="col-"]');
                    if (controls.find(':checkbox,:radio').length > 1) controls.append(error);
                    else error.insertAfter(element.nextAll('.lbl:eq(0)').eq(0));
                }
                else if (element.is('.select2')) {
                    error.insertAfter(element.siblings('[class*="select2-container"]:eq(0)'));
                }
                else if (element.is('.chosen-select')) {
                    error.insertAfter(element.siblings('[class*="chosen-container"]:eq(0)'));
                }
                else error.insertAfter(element.parent());
            },

            submitHandler: function (form) {
            },
            invalidHandler: function (form) {
            }
        });

        //override dialog's title function to allow for HTML titles
        $.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
            _title: function (title) {
                var $title = this.options.title || '&nbsp;'
                if (("title_html" in this.options) && this.options.title_html == true)
                    title.html($title);
                else title.text($title);
            }
        }));

        $("#id-btn-dialog1").on('click', function (e) {
            e.preventDefault();

            var dialog = $("#dialog-message").removeClass('hide').dialog({
                modal: true,
                title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='icon-ok'></i> jQuery UI Dialog</h4></div>",
                title_html: true,
                buttons: [
                    {
                        text: "Cancel",
                        "class": "btn btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    },
                    {
                        text: "OK",
                        "class": "btn btn-primary btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    }
                ]
            });

            /**
             dialog.data( "uiDialog" )._title = function(title) {
                        title.html( this.options.title );
                    };
             **/
        });


        $("#id-btn-dialog2").on('click', function (e) {
            e.preventDefault();

            $("#dialog-confirm").removeClass('hide').dialog({
                resizable: false,
                modal: true,
                title: "<div class='widget-header'><h4 class='smaller'><i class='icon-warning-sign red'></i> Empty the recycle bin?</h4></div>",
                title_html: true,
                buttons: [
                    {
                        html: "<i class='icon-trash bigger-110'></i>&nbsp; Delete all items",
                        "class": "btn btn-danger btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    }
                    ,
                    {
                        html: "<i class='icon-remove bigger-110'></i>&nbsp; Cancel",
                        "class": "btn btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    }
                ]
            });
        });
        $("#id-btn-dialog3").on('click', function (e) {
            e.preventDefault();

            var dialog = $("#dialog-message1").removeClass('hide').dialog({
                modal: true,
                title: "<div class='widget-header widget-header-small'><h4 class='smaller'><i class='icon-ok'></i> jQuery UI Dialog</h4></div>",
                title_html: true,
                buttons: [
                    {
                        text: "Cancel",
                        "class": "btn btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    },
                    {
                        text: "OK",
                        "class": "btn btn-primary btn-xs",
                        click: function () {
                            $(this).dialog("close");
                        }
                    }
                ]
            });

            /**
             dialog.data( "uiDialog" )._title = function(title) {
                        title.html( this.options.title );
                    };
             **/
        });
        $('#modal-wizard .modal-header').ace_wizard();
        $('#modal-wizard .wizard-actions .btn[data-dismiss=modal]').removeAttr('disabled');
    })
</script>
</body>
</html>
