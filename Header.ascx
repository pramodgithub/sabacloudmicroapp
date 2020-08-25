<%@ control language="C#" autoeventwireup="true" inherits="Page_Template_Library_Bootstrap_Parts_Header" codebehind="Header.ascx.cs" %>
<%--<%@ Register Src="~/Page Template Library/Bootstrap/Parts/Checkout/Minicart.ascx" TagName="MiniCart" TagPrefix="cc" %>
--%>

<script>
    function validateSearch(controlId) {

        var ctl = document.getElementById(controlId);
        var val = controlId.value;
        if (val == null || val.trim() == "") {
            return false; // cancel submission
        }
        return true; // allow submit
    }
</script>

<asp:PlaceHolder runat="server" ID="StylesHolder">
    <meta charset='UTF-8'>

    <meta name="revisit-after" content="1 month">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, target-densitydpi=160dpi, initial-scale=1.0,maximum-scale=1.0">
    <meta http-equiv="cleartype" content="on">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
    <!--[if (lt IE 9) & (!IEMobile)]>
        <link href="/Style Library/PageStyle/lateIE.css" rel="stylesheet" type="text/css" />
    <![endif]-->

    <link rel="apple-touch-icon" sizes="114×114" href="/Image%20Library/Unassigned/touch-icon-114×114.png" />
    <link rel="apple-touch-icon" sizes="72×72" href="/Image%20Library/Unassigned/touch-icon-72×72.png" />
    <link rel="apple-touch-icon" href="/Image%20Library/Unassigned/touch-icon-iphone.png" />
    <link href="https://fonts.googleapis.com/css?family=Nunito&display=swap" rel="stylesheet">


    <!--[if lte IE 9]><script src="/Script Library/PageScripts/excanvas.compiled.js"></script><![endif]-->

    <!-- Bootstrap V3 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
        integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">
    <%--<link rel="stylesheet" href="centralHeaderStyle_BS3.css">--%>
    <link rel="stylesheet" type="text/css" href="https://centraldocrepository.blob.core.windows.net/centralheader/uat/scripts/central/cep_HeaderCore.css">
</asp:PlaceHolder>

<header id="main-header" role="banner" class="siteheader-body">


    <asp:PlaceHolder ID="bodyheadercontainer" runat="server">

        <!-- BS V3 DOM -->
        <div class="new-centralHeader">

            <nav id="centralHeader" class="navbar navbar-default">

                <div class="container-fluid">

                    <!--Spinner-->
                    <div id="spinner" style="margin: auto;">
                        <img src="https://allscriptscentralheadertest.azureedge.net/centralcdntestfiles/SIT/Spin.gif">
                    </div>
                    <!--Spinner End-->

                    <!--Toggle button-->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!--Toggle Button End-->

                    <!--Logo-->
                    <nav id="cep_Logo">
                    </nav>
                    <!--Logo End-->

                    <div class="collapse navbar-collapse" id="navbar">
                        <!--Search-->
                        <div id="cep_Search">
                        </div>
                        <!--Search End-->

                        <!--Left Side Nav-->
                        <ul id="cep_leftSideMenu" class="nav navbar-nav central-left-side-nav"></ul>
                        <ul class="navbar-right side-nav-style navbar-nav">
                            <li id="cep_rightSideMenu" class="nav-item dropdown nav-item-style"></li>
                        </ul>
                        <div id="cep_toggler">
                        </div>

                        <!--Left Side Nav End-->
                    </div>
                </div>

            </nav>

            <div id="cep_Announcement" class="pos-f-t margin-top-announcement">
            </div>
        </div>
    </asp:PlaceHolder>

    <div class="wrap">
        <div id="iappsHeader1" runat="server">

            <a class="logo" href="/">
                <fwcontrols:fwimagecontainer runat="server" fwcontainerid="bc5e3843-37ba-4882-a6c7-f6e6cbf5e8e1" id="logo" />
            </a>

            <a href="javascript:void(0)" id="main-nav-toggle"></a>

        </div>
        <div class="nav_family">
            <div class="search_bar">
                <asp:TextBox runat="server" OnTextChanged="productSearch_TextChanged" AutoPostBack="true" ClientIDMode="Static" ID="productSearch" CssClass="input-large search-query search-icon-top" Placeholder="Search for Apps or Information" />
                <input class="button-link grey" type="submit" value="Go" onclick="return validateSearch('productSearch');" />
                <a class="close">D</a>
            </div>
            <div id="iappsHeader2" runat="server">
                <a class="search_toggle button-link white" href="#">Search Store&nbsp;<span style="font-family: Pictos">s</span></a>

                <nav class="top_nav navigation">
                    <clcontrols:clhierarchicalnav runat="server" xsltfilename="" sitemapprovider="TopMenu"></clcontrols:clhierarchicalnav>

                </nav>
            </div>

            <nav id="main-nav" class="navigation" role="navigation">
                <clcontrols:clhierarchicalnav id="commercenav" runat="server" sitemapprovider="CommerceSite"></clcontrols:clhierarchicalnav>
            </nav>

            <a class="nav_close">Close</a>
        </div>
    </div>
    <div class="wrap" style="padding-top: 2px;" id="iappsloggedinSearch" runat="server">
        <div class="input-group">
            <span id="Span1" class="input-group-addon icon-Search"></span>
            <%--<input id="ask" type="text" aria-required="true" required="" class="form-control ask-a-question-search" 
                autocomplete="off" placeholder="Search for Apps or Information">--%>
            <asp:TextBox runat="server" OnTextChanged="productSearch_TextChanged" AutoPostBack="true"
                ClientIDMode="Static" ID="TextBox1" CssClass="form-control ask-a-question-search"
                Placeholder="Search for Apps or Information" />

            <div class="input-group-btn">
                <button type="submit" value="Go" onclick="return validateSearch('TextBox1');" class="btn btn-primary">GO</button>
            </div>

        </div>

        <%--<asp:TextBox runat="server" OnTextChanged="productSearch_TextChanged" AutoPostBack="true"
            ClientIDMode="Static" ID="TextBox1" CssClass="input-large search-query search-icon-top"
            Text="Search for Apps or Information" onfocus="if (this.value=='Search for Apps or Information') this.value='';"
            onblur="if (this.value=='') this.value='Search for Apps or Information';"></asp:TextBox>
        <input class="button-link grey" type="submit" value="Go" onclick="return validateSearch('productSearch');" />
        <a class="close">D</a>--%>
    </div>

</header>
<div id="script1" runat="server">
    <%-- <script>
        jQuery(document).ready(function () {
            jQuery(".CLHierarchicalNav li a:contains('Store Search')").each(function () {

                jQuery(this).parent().addClass("navSearch");
                jQuery(this).parent().html("<a href=\"#\"><span>Search Store&nbsp;</span><i style=\"font-family:Pictos\" class=\"search_toggle button-link white\">s</i></a>");

            });
        });
    </script>--%>
</div>
<div id="script2" runat="server">
    <%--  <script>
        jQuery(document).ready(function () {
            jQuery(".CLHierarchicalNav li a:contains('Store Search')").each(function () {

                jQuery(this).parent().hide();

            });
        });
    </script>--%>
</div>

<asp:PlaceHolder runat="server">
    <!-- BS V3 plugins -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"
        integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous">
    </script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
        integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous">
    </script>
    <script src="https://centraldocrepository.blob.core.windows.net/centralheader/uat/scripts/central/cep_HeaderCore.js"></script>

    <script>
        var correlationId = "<%= correlationId %>";
        console.log(correlationId);
        if (correlationId != null && correlationId != '') {
            document.getElementById("centralHeader").style.display = "";
            $("cep-Header").createCentralHeader({
                personPartyId: correlationId,
                username: "",
                token: "",
                headerVersion: "BS3",
                environment: "PROD"
            });
        }
        else {
            document.getElementById("centralHeader").style.display = "none";
        }
    </script>

    <%--<script type="text/javascript">
        var corid = "<%= correlationId %>";
        var headerUrl = "/CustomWeb/samlConnection.aspx";
        $.ajax({
            type: 'GET',
            url: headerUrl,
            data: {
                'correlationId': corid,
                'SAMLPassThrough': 'Yes'
            },
            dataType: 'json'
        })
        .done(function (data, status, xhr) {
            $('head').append(data.HeaderInformation.LinkTags);
            $('head').append(data.HeaderInformation.ScriptTags);
            $('#bodyheader').empty().append(data.HeaderInformation.BodyDivTags);
            $('body').addClass(data.HeaderInformation.BodyClass); //this is for the background image, Adding this is optional.
        })
        .fail(function (xhr, status, error) {
        });--%>


    <%-- 
   
        $(document).ready(function () {
            var correlationId = "<%= correlationId %>";
        if (correlationId != "") {
            $.ajax({
                type: 'GET',
                url: '<%= headerURL %>',
                data: { correlationId: correlationId },
                dataType: 'json',
                success: function (result) {
                    $('head').append(result.HeaderInformation.LinkTags);
                    $('head').append(result.HeaderInformation.ScriptTags);
                    $('#bodyheader').empty().append(result.HeaderInformation.BodyDivTags);
                  //  $('body').addClass(result.HeaderInformation.BodyClass); //this is for the background image, Adding this is optional.
                },
                failure: function () {
                }

            });
        }
        });
  
 


    var correlationId = "<%= correlationId %>";
  /*  $.ajax({
        type: 'GET',
        url: '<%= headerURL %>',
        data: {
            'correlationId': correlationId
        },
        dataType: 'json'
    })
         .done(function (data, status, xhr) {
             $('head').append(data.HeaderInformation.LinkTags);
             $('head').append(data.HeaderInformation.ScriptTags);
             $('#bodyheader').empty().append(data.HeaderInformation.BodyDivTags);
       
         })
         .fail(function (xhr, status, error) {
             getAlternate();
         });


         function getAlternate() { 
    
        var xmlhttp;
        var url = '<%= headerURL %>?correlationId=<%= correlationId %>'

        if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        }
        else {// code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }

        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                var arr = JSON.parse(xmlhttp.responseText);
                $('head').append(arr.HeaderInformation.ScriptTags);
                $('head').append(arr.HeaderInformation.LinkTags);
                $('#bodyheader').empty().append(arr.HeaderInformation.BodyDivTags);
            }
        }

        xmlhttp.open('GET', url, true);
        xmlhttp.send();
             /*} 
    --%>
    <%--</script>--%>
</asp:PlaceHolder>

