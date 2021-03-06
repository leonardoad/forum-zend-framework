<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>{$TituloPagina} - {$NomeSistema}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
        {*<link rel="apple-touch-icon" href="{$baseUrl}Public/pages/ico/60.png">
        <link rel="apple-touch-icon" sizes="76x76" href="{$baseUrl}Public/pages/ico/76.png">
        <link rel="apple-touch-icon" sizes="120x120" href="{$baseUrl}Public/pages/ico/120.png">
        <link rel="apple-touch-icon" sizes="152x152" href="{$baseUrl}Public/pages/ico/152.png">*}
        <link rel="icon" type="image/png" href="{$baseUrl}Public/Images/favicon/favicon.png" />
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="default">
        <meta content="" name="description" />
        <meta content="" name="author" />

        <script type="text/javascript">
            eval("base = '{$baseUrl}'");
            var cBaseUrl = '{$baseUrl}';
            var HTTP_HOST = '{$HTTP_HOST}';
        </script>

        <!-- This is the onli JS that has to be on the begining, cuz there are some components that need this before everithing else! (Leonardo )-->
        <script src="{$baseUrl}Public/assets/plugins/jquery/jquery-1.11.1.min.js" type="text/javascript"></script>
    </head>
        <body class="fixed-header dashboard  menu-behind">
{*    <body class="fixed-header dashboard ">*}
        <div>
            <link href="{$baseUrl}Public/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/plugins/bootstrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet" type="text/css" media="screen" />
            <link href="{$baseUrl}Public/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" media="screen" />
            <link href="{$baseUrl}Public/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css" media="screen" />
            <link href="{$baseUrl}Public/assets/plugins/nvd3/nv.d3.min.css" rel="stylesheet" type="text/css" media="screen" />
            <link href="{$baseUrl}Public/assets/plugins/mapplic/css/mapplic.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/plugins/rickshaw/rickshaw.min.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/plugins/jquery-metrojs/MetroJs.css" rel="stylesheet" type="text/css" media="screen" />
            <link href="{$baseUrl}Public/pages/css/pages-icons.css" rel="stylesheet" type="text/css">
            <link class="main-stylesheet" href="{$baseUrl}Public/pages/css/pages.css" rel="stylesheet" type="text/css" />
            <link href="{$baseUrl}Public/assets/css/style.css" rel="stylesheet" type="text/css">

            <!--[if lte IE 9]>
                <link href="{$baseUrl}Public/assets/plugins/codrops-dialogFx/dialog.ie.css" rel="stylesheet" type="text/css" media="screen" />
                <![endif]-->
            {$scriptsCss}
            {literal}
                <script>
            window.intercomSettings = {
                app_id: "uypl4r9y",
                name: "{/literal}{$usuarioLogado}{literal}",
                email: "{/literal}{$userEmail}{literal}",
                created_at: {/literal}{$userCreatedAtUnixTimestamp}{literal}
            };
                </script>
                <script>(function () {
                        var w = window;
                        var ic = w.Intercom;
                        if (typeof ic === "function") {
                            ic('reattach_activator');
                            ic('update', intercomSettings);
                        } else {
                            var d = document;
                            var i = function () {
                                i.c(arguments)
                            };
                            i.q = [];
                            i.c = function (args) {
                                i.q.push(args)
                            };
                            w.Intercom = i;
                            function l() {
                                var s = d.createElement('script');
                                s.type = 'text/javascript';
                                s.async = true;
                                s.src = 'https://widget.intercom.io/widget/APP_ID';
                                var x = d.getElementsByTagName('script')[0];
                                x.parentNode.insertBefore(s, x);
                            }
                            if (w.attachEvent) {
                                w.attachEvent('onload', l);
                            } else {
                                w.addEventListener('load', l, false);
                            }
                        }
                    })()
                </script>
            {/literal}
        </div>
        <!-- BEGIN SIDEBPANEL-->
        <nav class="page-sidebar" data-pages="sidebar">

            <!-- BEGIN SIDEBAR MENU HEADER-->
            <div class="sidebar-header">

                <span class="h5" style="color: white; "  >{$NomeSistema}</span>
                {*                                <img src="{$baseUrl}Public/assets/img/logo_white.png" alt="logo" class="brand" data-src="{$baseUrl}Public/assets/img/logo_white.png" data-src-retina="assets/img/logo_white_2x.png" width="78" height="22">*}
                <div class="sidebar-header-controls">
                    {*<button type="button" class="btn btn-xs sidebar-slide-toggle btn-link m-l-20" data-pages-toggle="#appMenu"><i class="fa fa-angle-down fs-16"></i>
                    </button>*}
                    <button type="button" class="btn btn-link visible-lg-inline " data-toggle-pin="sidebar"><i class="fa fs-12"></i>
                    </button>
                </div>
            </div>
            <!-- END SIDEBAR MENU HEADER-->
            <!-- START SIDEBAR MENU -->
            <div class="sidebar-menu p-t-20">
                <!-- BEGIN SIDEBAR MENU ITEMS-->
                <ul class="menu-items ">
                    {$menu}
                </ul>
                <div class="clearfix"></div>
            </div>
            <!-- END SIDEBAR MENU -->
        </nav>
        <!-- END SIDEBAR -->
        <!-- END SIDEBPANEL-->
        <!-- START PAGE-CONTAINER -->
        <div class="page-container ">
            <!-- START HEADER -->
            <div class="header ">
                <!-- START MOBILE CONTROLS -->
                <div class="container-fluid relative">
                    <!-- LEFT SIDE -->
                    <div class="pull-left full-height visible-sm visible-xs">
                        <!-- START ACTION BAR -->
                        <div class="header-inner">
                            <a href="#" class="btn-link toggle-sidebar visible-sm-inline-block visible-xs-inline-block padding-5" data-toggle="sidebar">
                                <span class="icon-set menu-hambuger"></span>
                            </a>
                        </div>
                        <!-- END ACTION BAR -->
                    </div>
                    <div class="pull-center hidden-md hidden-lg">
                        <div class="header-inner">
                            <div class="brand inline">
                                {$NomeSistema}
                                {*                                <img src="{$baseUrl}Public/assets/img/logo.png" alt="logo" data-src="{$baseUrl}Public/assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">*}
                            </div>
                        </div>
                    </div>
                    <!-- RIGHT SIDE -->
                    <div class="pull-right full-height visible-sm visible-xs">
                        <!-- START ACTION BAR -->
                        <div class="header-inner">
                            <a href="#" class="btn-link visible-sm-inline-block visible-xs-inline-block" data-toggle="quickview" data-toggle-element="#quickview">
                                <span class="icon-set menu-hambuger-plus"></span>
                            </a>
                        </div>
                        <!-- END ACTION BAR -->
                    </div>
                </div>
                <!-- END MOBILE CONTROLS -->
                <div class=" pull-left sm-table hidden-xs hidden-sm">
                    <div class="header-inner">
                        <div class="brand inline" style="float: left;">
                            <h4>{$NomeSistema}</h4>
                            {*                            <img src="{$baseUrl}Public/assets/img/logo.png" alt="logo" data-src="{$baseUrl}Public/assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">*}
                        </div>
                        {*                        <a href="#" class="search-link" data-toggle="search"><i class="pg-search"></i>Search for <span class="bold">places</span>, <span class="bold">activities</span> or <span class="bold">events</span></a>*}

                        <div class="serach-form"  >
                            {$formSearch}
                        </div>
                    </div>

                </div>
                <div class=" pull-right">
                    <div class="header-inner">
                        <a href="#" class="btn-link icon-set globe-fill m-l-20 sm-no-margin hidden-sm hidden-xs" data-toggle="quickview" data-toggle-element="#quickview">
                            <span class="bubble"></span>
                        </a>
                    </div>
                </div>
                <div class=" pull-right">
                    <!-- START User Info-->
                    <div class="visible-lg visible-md m-t-10">
                        <div class="pull-left p-r-10 p-t-10 fs-16 font-heading">
                            <span class="semi-bold">{$usuarioLogado}</span> <span class="text-master">{$loggeduserlastname}</span>
                        </div>
                        <div class="dropdown pull-right">
                            <button class="profile-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="thumbnail-wrapper d32 circular inline m-t-5">
                                    <img src="{$loggeduserPhoto}" alt="" data-src="{$loggeduserPhoto}" data-src-retina="{$loggeduserPhoto}" width="32" height="32">
                                </span>
                            </button>
                            <ul class="dropdown-menu profile-dropdown" role="menu">
                                <li><a href="#"><i class="pg-settings_small"></i> Settings</a>
                                </li>
                                <li><a href="#"><i class="pg-outdent"></i> Feedback</a>
                                </li>
                                <li><a href="#"><i class="pg-signals"></i> Help</a>
                                </li>
                                <li class="bg-master-lighter">
                                    <a href="{$baseUrl}login/logout" class="clearfix">
                                        <span class="pull-left">Logout</span>
                                        <span class="pull-right"><i class="pg-power"></i></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- END User Info-->
                </div>
            </div>
            <!-- END HEADER -->
            <!-- START PAGE CONTENT WRAPPER -->
            <div class="page-content-wrapper ">
                <!-- START PAGE CONTENT -->
                <div class="content sm-gutter">
                    <!-- START CONTAINER FLUID -->
                    <div class="container-fluid padding-25 sm-padding-10">
                        {$body}
                    </div>
                    <!-- END CONTAINER FLUID -->
                </div>
                <!-- END PAGE CONTENT -->
                <!-- START COPYRIGHT -->
                <!-- START CONTAINER FLUID -->
                <!-- START CONTAINER FLUID -->
                <div class="container-fluid container-fixed-lg footer">
                    <div class="copyright sm-text-center">
                        <p class="small no-margin pull-left sm-pull-reset">
                            <span class="hint-text">Copyright &copy; 2017 </span>
                            <span class="font-montserrat">Voucher</span>.
                            <span class="hint-text">All rights reserved. </span>
                            <span class="sm-block"><a href="#" class="m-l-10 m-r-10">Terms of use</a> | <a href="#" class="m-l-10">Privacy Policy</a></span>
                        </p>
                        <p class="small no-margin pull-right sm-pull-reset">
                            <!-- <a href="#">Hand-crafted</a> <span class="hint-text">&amp; Made with Love ®</span> -->
                        </p>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- END COPYRIGHT -->
            </div>
            <!-- END PAGE CONTENT WRAPPER -->
        </div>
        <!-- END PAGE CONTAINER -->
        <!--START QUICKVIEW -->
        <div id="quickview" class="quickview-wrapper" data-pages="quickview">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
                <!--
                <li class="">
                    <a href="#quickview-notes" data-toggle="tab">Notes</a>
                </li>
                <li>
                    <a href="#quickview-alerts" data-toggle="tab">Alerts</a>
                </li>
                -->
                <li class="active">
                    <a href="#quickview-chat" data-toggle="tab">Friends</a>
                </li>
            </ul>
            <a class="btn-link quickview-toggle" data-toggle-element="#quickview" data-toggle="quickview"><i class="pg-close"></i></a>
            <!-- Tab panes -->
            <div class="tab-content">
                <!-- BEGIN Notes !-->
                <div class="tab-pane fade  in no-padding" id="quickview-notes">
                    <div class="view-port clearfix quickview-notes" id="note-views">
                        <!-- BEGIN Note List !-->
                        <div class="view list" id="quick-note-list">
                            <div class="toolbar clearfix">
                                <ul class="pull-right ">
                                    <li>
                                        <a href="#" class="delete-note-link"><i class="fa fa-trash-o"></i></a>
                                    </li>
                                    <li>
                                        <a href="#" class="new-note-link" data-navigate="view" data-view-port="#note-views" data-view-animation="push"><i class="fa fa-plus"></i></a>
                                    </li>
                                </ul>
                                <button class="btn-remove-notes btn btn-xs btn-block hide"><i class="fa fa-times"></i> Delete</button>
                            </div>
                            <ul>
                                <!-- BEGIN Note Item !-->
                                <li data-noteid="1">
                                    <div class="left">
                                        <!-- BEGIN Note Action !-->
                                        <div class="checkbox check-warning no-margin">
                                            <input id="qncheckbox1" type="checkbox" value="1">
                                            <label for="qncheckbox1"></label>
                                        </div>
                                        <!-- END Note Action !-->
                                        <!-- BEGIN Note Preview Text !-->
                                        <p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                        <!-- BEGIN Note Preview Text !-->
                                    </div>
                                    <!-- BEGIN Note Details !-->
                                    <div class="right pull-right">
                                        <!-- BEGIN Note Date !-->
                                        <span class="date">12/12/14</span>
                                        <a href="#" data-navigate="view" data-view-port="#note-views" data-view-animation="push"><i class="fa fa-chevron-right"></i></a>
                                        <!-- END Note Date !-->
                                    </div>
                                    <!-- END Note Details !-->
                                </li>
                                <!-- END Note List !-->
                                <!-- BEGIN Note Item !-->
                                <li data-noteid="2">
                                    <div class="left">
                                        <!-- BEGIN Note Action !-->
                                        <div class="checkbox check-warning no-margin">
                                            <input id="qncheckbox2" type="checkbox" value="1">
                                            <label for="qncheckbox2"></label>
                                        </div>
                                        <!-- END Note Action !-->
                                        <!-- BEGIN Note Preview Text !-->
                                        <p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                        <!-- BEGIN Note Preview Text !-->
                                    </div>
                                    <!-- BEGIN Note Details !-->
                                    <div class="right pull-right">
                                        <!-- BEGIN Note Date !-->
                                        <span class="date">12/12/14</span>
                                        <a href="#"><i class="fa fa-chevron-right"></i></a>
                                        <!-- END Note Date !-->
                                    </div>
                                    <!-- END Note Details !-->
                                </li>
                                <!-- END Note List !-->
                                <!-- BEGIN Note Item !-->
                                <li data-noteid="2">
                                    <div class="left">
                                        <!-- BEGIN Note Action !-->
                                        <div class="checkbox check-warning no-margin">
                                            <input id="qncheckbox3" type="checkbox" value="1">
                                            <label for="qncheckbox3"></label>
                                        </div>
                                        <!-- END Note Action !-->
                                        <!-- BEGIN Note Preview Text !-->
                                        <p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                        <!-- BEGIN Note Preview Text !-->
                                    </div>
                                    <!-- BEGIN Note Details !-->
                                    <div class="right pull-right">
                                        <!-- BEGIN Note Date !-->
                                        <span class="date">12/12/14</span>
                                        <a href="#"><i class="fa fa-chevron-right"></i></a>
                                        <!-- END Note Date !-->
                                    </div>
                                    <!-- END Note Details !-->
                                </li>
                                <!-- END Note List !-->
                                <!-- BEGIN Note Item !-->
                                <li data-noteid="3">
                                    <div class="left">
                                        <!-- BEGIN Note Action !-->
                                        <div class="checkbox check-warning no-margin">
                                            <input id="qncheckbox4" type="checkbox" value="1">
                                            <label for="qncheckbox4"></label>
                                        </div>
                                        <!-- END Note Action !-->
                                        <!-- BEGIN Note Preview Text !-->
                                        <p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                        <!-- BEGIN Note Preview Text !-->
                                    </div>
                                    <!-- BEGIN Note Details !-->
                                    <div class="right pull-right">
                                        <!-- BEGIN Note Date !-->
                                        <span class="date">12/12/14</span>
                                        <a href="#"><i class="fa fa-chevron-right"></i></a>
                                        <!-- END Note Date !-->
                                    </div>
                                    <!-- END Note Details !-->
                                </li>
                                <!-- END Note List !-->
                                <!-- BEGIN Note Item !-->
                                <li data-noteid="4">
                                    <div class="left">
                                        <!-- BEGIN Note Action !-->
                                        <div class="checkbox check-warning no-margin">
                                            <input id="qncheckbox5" type="checkbox" value="1">
                                            <label for="qncheckbox5"></label>
                                        </div>
                                        <!-- END Note Action !-->
                                        <!-- BEGIN Note Preview Text !-->
                                        <p class="note-preview">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>
                                        <!-- BEGIN Note Preview Text !-->
                                    </div>
                                    <!-- BEGIN Note Details !-->
                                    <div class="right pull-right">
                                        <!-- BEGIN Note Date !-->
                                        <span class="date">12/12/14</span>
                                        <a href="#"><i class="fa fa-chevron-right"></i></a>
                                        <!-- END Note Date !-->
                                    </div>
                                    <!-- END Note Details !-->
                                </li>
                                <!-- END Note List !-->
                            </ul>
                        </div>
                        <!-- END Note List !-->
                        <div class="view note" id="quick-note">
                            <div>
                                <ul class="toolbar">
                                    <li><a href="#" class="close-note-link"><i class="pg-arrow_left"></i></a>
                                    </li>
                                    <li><a href="#" data-action="Bold"><i class="fa fa-bold"></i></a>
                                    </li>
                                    <li><a href="#" data-action="Italic"><i class="fa fa-italic"></i></a>
                                    </li>
                                    <li><a href="#" class=""><i class="fa fa-link"></i></a>
                                    </li>
                                </ul>
                                <div class="body">
                                    <div>
                                        <div class="top">
                                            <span>21st april 2014 2:13am</span>
                                        </div>
                                        <div class="content">
                                            <div class="quick-note-editor full-width full-height js-input" contenteditable="true"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Notes !-->
                <!-- BEGIN Alerts !-->
                <div class="tab-pane fade no-padding" id="quickview-alerts">
                    <div class="view-port clearfix" id="alerts">
                        <!-- BEGIN Alerts View !-->
                        <div class="view bg-white">
                            <!-- BEGIN View Header !-->
                            <div class="navbar navbar-default navbar-sm">
                                <div class="navbar-inner">
                                    <!-- BEGIN Header Controler !-->
                                    <a href="javascript:;" class="inline action p-l-10 link text-master" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                        <i class="pg-more"></i>
                                    </a>
                                    <!-- END Header Controler !-->
                                    <div class="view-heading">
                                        Notications
                                    </div>
                                    <!-- BEGIN Header Controler !-->
                                    <a href="#" class="inline action p-r-10 pull-right link text-master">
                                        <i class="pg-search"></i>
                                    </a>
                                    <!-- END Header Controler !-->
                                </div>
                            </div>
                            <!-- END View Header !-->
                            <!-- BEGIN Alert List !-->
                            <div data-init-list-view="ioslist" class="list-view boreded no-top-border">
                                <!-- BEGIN List Group !-->
                                <div class="list-view-group-container">
                                    <!-- BEGIN List Group Header!-->
                                    <div class="list-view-group-header text-uppercase">
                                        Calendar
                                    </div>
                                    <!-- END List Group Header!-->
                                    <ul>
                                        <!-- BEGIN List Group Item!-->
                                        <li class="alert-list">
                                            <!-- BEGIN Alert Item Set Animation using data-view-animation !-->
                                            <a href="javascript:;" class="" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                                <p class="col-xs-height col-middle">
                                                    <span class="text-warning fs-10"><i class="fa fa-circle"></i></span>
                                                </p>
                                                <p class="p-l-10 col-xs-height col-middle col-xs-9 overflow-ellipsis fs-12">
                                                    <span class="text-master">David Nester Birthday</span>
                                                </p>
                                                <p class="p-r-10 col-xs-height col-middle fs-12 text-right">
                                                    <span class="text-warning">Today <br></span>
                                                    <span class="text-master">All Day</span>
                                                </p>
                                            </a>
                                            <!-- END Alert Item!-->
                                            <!-- BEGIN List Group Item!-->
                                        </li>
                                        <!-- END List Group Item!-->
                                        <!-- BEGIN List Group Item!-->
                                        <li class="alert-list">
                                            <!-- BEGIN Alert Item Set Animation using data-view-animation !-->
                                            <a href="#" class="" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                                <p class="col-xs-height col-middle">
                                                    <span class="text-warning fs-10"><i class="fa fa-circle"></i></span>
                                                </p>
                                                <p class="p-l-10 col-xs-height col-middle col-xs-9 overflow-ellipsis fs-12">
                                                    <span class="text-master">Meeting at 2:30</span>
                                                </p>
                                                <p class="p-r-10 col-xs-height col-middle fs-12 text-right">
                                                    <span class="text-warning">Today</span>
                                                </p>
                                            </a>
                                            <!-- END Alert Item!-->
                                        </li>
                                        <!-- END List Group Item!-->
                                    </ul>
                                </div>
                                <!-- END List Group !-->
                                <div class="list-view-group-container">
                                    <!-- BEGIN List Group Header!-->
                                    <div class="list-view-group-header text-uppercase">
                                        Social
                                    </div>
                                    <!-- END List Group Header!-->
                                    <ul>
                                        <!-- BEGIN List Group Item!-->
                                        <li class="alert-list">
                                            <!-- BEGIN Alert Item Set Animation using data-view-animation !-->
                                            <a href="javascript:;" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                                <p class="col-xs-height col-middle">
                                                    <span class="text-complete fs-10"><i class="fa fa-circle"></i></span>
                                                </p>
                                                <p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
                                                    <span class="text-master link">Jame Smith commented on your status<br></span>
                                                    <span class="text-master">“Perfection Simplified - Company Revox"</span>
                                                </p>
                                            </a>
                                            <!-- END Alert Item!-->
                                        </li>
                                        <!-- END List Group Item!-->
                                        <!-- BEGIN List Group Item!-->
                                        <li class="alert-list">
                                            <!-- BEGIN Alert Item Set Animation using data-view-animation !-->
                                            <a href="javascript:;" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                                <p class="col-xs-height col-middle">
                                                    <span class="text-complete fs-10"><i class="fa fa-circle"></i></span>
                                                </p>
                                                <p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
                                                    <span class="text-master link">Jame Smith commented on your status<br></span>
                                                    <span class="text-master">“Perfection Simplified - Company Revox"</span>
                                                </p>
                                            </a>
                                            <!-- END Alert Item!-->
                                        </li>
                                        <!-- END List Group Item!-->
                                    </ul>
                                </div>
                                <div class="list-view-group-container">
                                    <!-- BEGIN List Group Header!-->
                                    <div class="list-view-group-header text-uppercase">
                                        Sever Status
                                    </div>
                                    <!-- END List Group Header!-->
                                    <ul>
                                        <!-- BEGIN List Group Item!-->
                                        <li class="alert-list">
                                            <!-- BEGIN Alert Item Set Animation using data-view-animation !-->
                                            <a href="#" class="p-t-10 p-b-10" data-navigate="view" data-view-port="#chat" data-view-animation="push-parrallax">
                                                <p class="col-xs-height col-middle">
                                                    <span class="text-danger fs-10"><i class="fa fa-circle"></i></span>
                                                </p>
                                                <p class="p-l-10 col-xs-height col-middle col-xs-12 overflow-ellipsis fs-12">
                                                    <span class="text-master link">12:13AM GTM, 10230, ID:WR174s<br></span>
                                                    <span class="text-master">Server Load Exceeted. Take action</span>
                                                </p>
                                            </a>
                                            <!-- END Alert Item!-->
                                        </li>
                                        <!-- END List Group Item!-->
                                    </ul>
                                </div>
                            </div>
                            <!-- END Alert List !-->
                        </div>
                        <!-- EEND Alerts View !-->
                    </div>
                </div>
                <!-- END Alerts !-->
                <div class="tab-pane fade in active no-padding" id="quickview-chat">
                    <!-- **************************** FRIENDS LIST **************************** -->
                    <div class="view-port clearfix" id="chat" name="friendslist" url="Usuario" event="load"></div>
                </div>
            </div>
        </div>
        <!-- END QUICKVIEW-->
        <!-- START OVERLAY -->
        <div class="overlay hide" data-pages="search">
            <!-- BEGIN Overlay Content !-->
            <div class="overlay-content has-results m-t-20">
                <!-- BEGIN Overlay Header !-->
                <div class="container-fluid">
                    <!-- BEGIN Overlay Logo !-->
                    <span class="h1"  >{$NomeSistema}</span>
                    {*                    <img class="overlay-brand" src="{$baseUrl}Public/assets/img/logo.png" alt="logo" data-src="{$baseUrl}Public/assets/img/logo.png" data-src-retina="assets/img/logo_2x.png" width="78" height="22">*}
                    <!-- END Overlay Logo !-->
                    <!-- BEGIN Overlay Close !-->
                    <a href="#" class="close-icon-light overlay-close text-black fs-16">
                        <i class="pg-close"></i>
                    </a>
                    <!-- END Overlay Close !-->
                </div>
                <!-- END Overlay Header !-->
                <div class="container-fluid">
                    <!-- BEGIN Overlay Controls !-->
                    <input id="overlay-search" class="no-border overlay-search bg-transparent" placeholder="Search..." autocomplete="off" spellcheck="false">
                    <br>
                    <div class="inline-block">
                        <div class="checkbox right">
                            <input id="checkboxn" type="checkbox" value="1" checked="checked">
                            <label for="checkboxn"><i class="fa fa-search"></i> Search within page</label>
                        </div>
                    </div>
                    <div class="inline-block m-l-10">
                        <p class="fs-13">Press enter to search</p>
                    </div>
                    <!-- END Overlay Controls !-->
                </div>
                <!-- BEGIN Overlay Search Results, This part is for demo purpose, you can add anything you like !-->
                <div class="container-fluid">
                    <span>
                        <strong>suggestions :</strong>
                    </span>
                    <span id="overlay-suggestions"></span>
                    <br>
                    <div class="search-results m-t-40">
                        <p class="bold">Pages Search Results</p>
                        <div class="row">
                            <div class="col-md-6">
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                        <div>
                                            <img width="50" height="50" src="{$baseUrl}Public/assets/img/profiles/avatar.jpg" data-src="{$baseUrl}Public/assets/img/profiles/avatar.jpg" data-src-retina="assets/img/profiles/avatar2x.jpg" alt="">
                                        </div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on pages</h5>
                                        <p class="hint-text">via john smith</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                        <div>T</div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> related topics</h5>
                                        <p class="hint-text">via pages</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular bg-success text-white inline m-t-10">
                                        <div><i class="fa fa-headphones large-text "></i>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> music</h5>
                                        <p class="hint-text">via pagesmix</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                            </div>
                            <div class="col-md-6">
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular bg-info text-white inline m-t-10">
                                        <div><i class="fa fa-facebook large-text "></i>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5"><span class="semi-bold result-name">ice cream</span> on facebook</h5>
                                        <p class="hint-text">via facebook</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular bg-complete text-white inline m-t-10">
                                        <div><i class="fa fa-twitter large-text "></i>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5">Tweats on<span class="semi-bold result-name"> ice cream</span></h5>
                                        <p class="hint-text">via twitter</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                                <!-- BEGIN Search Result Item !-->
                                <div class="">
                                    <!-- BEGIN Search Result Item Thumbnail !-->
                                    <div class="thumbnail-wrapper d48 circular text-white bg-danger inline m-t-10">
                                        <div><i class="fa fa-google-plus large-text "></i>
                                        </div>
                                    </div>
                                    <!-- END Search Result Item Thumbnail !-->
                                    <div class="p-l-10 inline p-t-5">
                                        <h5 class="m-b-5">Circles on<span class="semi-bold result-name"> ice cream</span></h5>
                                        <p class="hint-text">via google plus</p>
                                    </div>
                                </div>
                                <!-- END Search Result Item !-->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Overlay Search Results !-->
            </div>
            <!-- END Overlay Content !-->
        </div>
        <!-- END OVERLAY -->
        <!-- BEGIN VENDOR JS -->
        <script src="{$baseUrl}Public/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/modernizr.custom.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/bootstrapv3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-bez/jquery.bez.min.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
        <script type="text/javascript" src="{$baseUrl}Public/assets/plugins/select2/js/select2.full.min.js"></script>
        <script type="text/javascript" src="{$baseUrl}Public/assets/plugins/classie/classie.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
        <!-- end of default js -->
        <!-- From here down, is the dashbord js (I think so!) -->
        {*
        <script src="{$baseUrl}Public/assets/plugins/nvd3/lib/d3.v3.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/nv.d3.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/utils.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/tooltip.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/interactiveLayer.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/models/axis.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/models/line.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/nvd3/src/models/lineWithFocusChart.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/mapplic/js/hammer.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/mapplic/js/jquery.mousewheel.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/mapplic/js/mapplic.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/rickshaw/rickshaw.min.js"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-metrojs/MetroJs.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/jquery-sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/skycons/skycons.js" type="text/javascript"></script>
        <script src="{$baseUrl}Public/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js" type="text/javascript"></script>*}
        <!-- END VENDOR JS -->

        <!-- BEGIN FRAMEWORK JS-->
        {$scriptsJs}
        <!-- END FRAMEWORK JS-->

        <!-- BEGIN CORE TEMPLATE JS -->
        <script src="{$baseUrl}Public/pages/js/pages.min.js"></script>
        <!-- END CORE TEMPLATE JS -->
        <!-- BEGIN PAGE LEVEL JS -->
        {*        <script src="{$baseUrl}Public/assets/js/dashboard.js" type="text/javascript"></script>*}
        {*        <script src="{$baseUrl}Public/assets/js/scripts.js" type="text/javascript"></script>*}
        <!-- END PAGE LEVEL JS -->
    </body>
</html>