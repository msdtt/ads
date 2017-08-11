<html>
<link href="${request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${request.contextPath}/static/css/font-awesome.min.css" />


<link rel="stylesheet" href="${request.contextPath}/static/css/jquery-ui-1.10.3.full.min.css" />
<link rel="stylesheet" href="${request.contextPath}/static/css/datepicker.css" />
<link rel="stylesheet" href="${request.contextPath}/static/css/ui.jqgrid.css" />

<link rel="stylesheet" href="${request.contextPath}/static/css/ace.min.css" />
<link rel="stylesheet" href="${request.contextPath}/static/css/ace-rtl.min.css" />
<link rel="stylesheet" href="${request.contextPath}/static/css/ace-skins.min.css" />
</head>

<body>
<div class="page-content">
    <div class="page-header">
        <h1>
            广告管理
            <small>
                <i class="icon-double-angle-right"></i>
                所有广告
            </small>
        </h1>
    </div>

    <div class="row">
        <div class="col-xs-12">

            <form id="queryform" method="post">
                <div class="alert alert-info">
                    <i class="icon-hand-right"></i>
                    <label>广告名称</label>
                    <input type="text" id="adsName" name="adsName" value="" />
                    <button class="btn btn-sm btn-purple" id="query_button" onclick="return false;query();" >查询</button>

                </div>
            </form>
            <table id="grid-table"></table>

            <div id="grid-pager"></div>

        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
</div><!-- /.main-content -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='${request.contextPath}/static/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
</script>

<script src="${request.contextPath}/static/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/static/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="${request.contextPath}/static/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="${request.contextPath}/static/js/jqGrid/jquery.jqGrid.min.js"></script>
<script src="${request.contextPath}/static/js/jqGrid/i18n/grid.locale-en.js"></script>


<script type="text/javascript">
    var grid_selector = "#grid-table";
    var pager_selector = "#grid-pager";

    $("#query_button").click(function(){
        var adsName = $("#adsName").val();

        jQuery(grid_selector).jqGrid("setGridParam",
                {
                    url:'/ads/list', //生成json数据的url源
                    datatype:"json",
                    postData:{
                        "adsName":adsName
                    },
                    page:"1"
                }).trigger("reloadGrid");
    });

    jQuery(function($) {



        jQuery(grid_selector).jqGrid({
            url:'/ads/list', //生成json数据的url源
            datatype: 'json',
            height: 250,
            colNames:[' ', 'ID','广告名称','广告类型','总投放数','总点击数','广告位','展现几率','生效时间','状态','需求来源','反馈评分（10分）','备注'],
            colModel:[
                {name:'myac',index:'', width:80, fixed:true, sortable:false, resize:false,
                    formatter:'actions',
                    formatoptions:{
                        keys:true,

                        delOptions:{recreateForm: true, beforeShowForm:beforeDeleteCallback},
                        //editformbutton:true, editOptions:{recreateForm: true, beforeShowForm:beforeEditCallback}
                    }
                },
                {name:'id',index:'id', width:60, sorttype:"int", editable: false},
                {name:'adsName',index:'adsName', width:60, sorttype:"textarea", editable: true},
                {name:'adsType',index:'adsType', width:60, sorttype:"textarea", editable: true},
                {name:'announceNo',index:'announceNo', width:60, sorttype:"textarea", editable: true},
                {name:'clickNo',index:'clickNo', width:60, sorttype:"textarea", editable: true},
                {name:'position',index:'position', width:60, sorttype:"textarea", editable: true},
                {name:'showRate',index:'showRate', width:60, sorttype:"textarea", editable: true},
                {name:'validateTime',index:'validateTime', width:60, sorttype:"textarea", editable: true},
                {name:'statuse',index:'statuse', width:60, sorttype:"textarea", editable: true},
                {name:'needsOrigin',index:'needsOrigin', width:60, sorttype:"textarea", editable: true},
                {name:'feedbackScore',index:'feedbackScore', width:60, sorttype:"textarea", editable: true},
                {name:'note',index:'note', width:60, sorttype:"textarea", editable: true},
            ],jsonReader: {    //jsonReader来跟服务器端返回的数据做对应
                root: "rows",  //包含实际数据的数组
                page: "currPage",  //当前页
                total: "totalPage",//总页数
                records:"totalCount", //查询出的记录数
                repeatitems : false
            },

            viewrecords : true,
            rowNum:10,
            rowList:[10,20,30],
            pager : pager_selector,
            altRows: true,
            //toppager: true,

            multiselect: true,
            //multikey: "ctrlKey",
            multiboxonly: true,

            loadComplete : function() {
                var table = this;
                setTimeout(function(){
                    styleCheckbox(table);

                    updateActionIcons(table);
                    updatePagerIcons(table);
                    enableTooltips(table);
                }, 0);
            },

            editurl: "/ads/edit",

            autowidth: true

        });

        //navButtons
        jQuery(grid_selector).jqGrid('navGrid',pager_selector,
                { 	//navbar options

                    add: true,
                    addicon : 'icon-plus-sign purple',
                    refresh: true,
                    refreshicon : 'icon-refresh green',
                },
                {
                    //new record form
                    closeAfterAdd: true,
                    recreateForm: true,
                    viewPagerButtons: false,
                    beforeShowForm : function(e) {
                        var form = $(e[0]);
                        form.find('#id').attr('readOnly',true)
                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                        style_edit_form(form);
                    }
                },
                {
                    //delete record form
                    recreateForm: true,
                    beforeShowForm : function(e) {
                        var form = $(e[0]);
                        if(form.data('styled')) return false;

                        form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
                        style_delete_form(form);

                        form.data('styled', true);
                    },
                    onClick : function(e) {
                        alert(1);
                    }
                }
        )


        function style_edit_form(form) {
            //enable datepicker on "sdate" field and switches for "stock" field
            form.find('input[name=sdate]').datepicker({format:'yyyy-mm-dd' , autoclose:true})
                    .end().find('input[name=stock]')
                    .addClass('ace ace-switch ace-switch-5').wrap('<label class="inline" />').after('<span class="lbl"></span>');

            //update buttons classes
            var buttons = form.next().find('.EditButton .fm-button');
            buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
            buttons.eq(0).addClass('btn-primary').prepend('<i class="icon-ok"></i>');
            buttons.eq(1).prepend('<i class="icon-remove"></i>')

            buttons = form.next().find('.navButton a');
            buttons.find('.ui-icon').remove();
            buttons.eq(0).append('<i class="icon-chevron-left"></i>');
            buttons.eq(1).append('<i class="icon-chevron-right"></i>');
        }
        function beforeDeleteCallback(e) {
            var form = $(e[0]);
            if(form.data('styled')) return false;

            form.closest('.ui-jqdialog').find('.ui-jqdialog-titlebar').wrapInner('<div class="widget-header" />')
            style_delete_form(form);

            form.data('styled', true);
        }


        function style_delete_form(form) {
            var buttons = form.next().find('.EditButton .fm-button');
            buttons.addClass('btn btn-sm').find('[class*="-icon"]').remove();//ui-icon, s-icon
            buttons.eq(0).addClass('btn-danger').prepend('<i class="icon-trash"></i>');
            buttons.eq(1).prepend('<i class="icon-remove"></i>')
        }

        //it causes some flicker when reloading or navigating grid
        //it may be possible to have some custom formatter to do this as the grid is being created to prevent this
        //or go back to default browser checkbox styles for the grid
        function styleCheckbox(table) {
            /**
             $(table).find('input:checkbox').addClass('ace')
             .wrap('<label />')
             .after('<span class="lbl align-top" />')


             $('.ui-jqgrid-labels th[id*="_cb"]:first-child')
             .find('input.cbox[type=checkbox]').addClass('ace')
             .wrap('<label />').after('<span class="lbl align-top" />');
             */
        }


        //unlike navButtons icons, action icons in rows seem to be hard-coded
        //you can change them like this in here if you want
        function updateActionIcons(table) {
            /**
             var replacement =
             {
                 'ui-icon-pencil' : 'icon-pencil blue',
                 'ui-icon-trash' : 'icon-trash red',
                 'ui-icon-disk' : 'icon-ok green',
                 'ui-icon-cancel' : 'icon-remove red'
             };
             $(table).find('.ui-pg-div span.ui-icon').each(function(){
						var icon = $(this);
						var $class = $.trim(icon.attr('class').replace('ui-icon', ''));
						if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
					})
             */
        }

        //replace icons with FontAwesome icons like above
        function updatePagerIcons(table) {
            var replacement =
            {
                'ui-icon-seek-first' : 'icon-double-angle-left bigger-140',
                'ui-icon-seek-prev' : 'icon-angle-left bigger-140',
                'ui-icon-seek-next' : 'icon-angle-right bigger-140',
                'ui-icon-seek-end' : 'icon-double-angle-right bigger-140'
            };
            $('.ui-pg-table:not(.navtable) > tbody > tr > .ui-pg-button > .ui-icon').each(function(){
                var icon = $(this);
                var $class = $.trim(icon.attr('class').replace('ui-icon', ''));

                if($class in replacement) icon.attr('class', 'ui-icon '+replacement[$class]);
            })
        }

        function enableTooltips(table) {
            $('.navtable .ui-pg-button').tooltip({container:'body'});
            $(table).find('.ui-pg-div').tooltip({container:'body'});
        }

        //var selr = jQuery(grid_selector).jqGrid('getGridParam','selrow');


    });
</script>
</body>
</html>
