<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="comments.aspx.vb" Inherits="JobPro.comments" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>JobPro Directory Feedback Form: Tell Us How We Are Doing</title>

<meta http-equiv="title" content="JobPro Directory Feedback Form: Let us know how we are doing in meeting your needs." />

<META name="DESCRIPTION" content="Let us know how we're doing so we can make improvements to the JobPro Directory to serve you better.">

<META name="KEYWORDS" content="job search, employment, employers list, employers directory, vancouver, BC, finding work, proactive job search, british columbia, canada">

<META name="robots" content="All,INDEX">

<META name="googlebot" content="noarchive">

<META name="city" content="Vancouver">

<META name="province" content="BC">

<META name="resource-type" content="document">

<META name="distribution" content="global">

<META name="classification" content="web sites">

<META name="rating" content="General">

<META name="language" content="en-CA">

<META name="META_TAG_GENERATOR" content="JobPro Directory http://www.bccontacts.net">

<META name="revisit-after" content="14 days">

<META http-equiv=Content-Type content="text/html;charset=windows-1252">

<link href="css/css-print.css" rel="stylesheet" type="text/css" media="print" />
<link href="css/css-content.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="ajaxtabs/ajaxtabs.css" />

<script type="text/javascript" src="js/datacentrik.js"></script>

<link rel="shortcut icon" href="images/favicon.ico" />

    <style type="text/css">
        .firstColumnStyle
        {   font-family: Verdana;
            font-size: smaller;
            width: 100px;            
            height: 100%;
            text-align: right
        }
        .secondColumnStyle                
        {   
        	font-family: Verdana;
        	width: 70%;
            height: 100%;             
        }
    </style>
    
</head>
<body>


<!--

TOP INFORMATION

-->
<div id="top-information">

<div id="nav-main">
<span class="white_text">Helping you find better employment faster in British 
    Columbia, Canada</span>

<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://www.jobprodirectory.com/contact.html" title="contact us"><span class="blue-white_links">Contact</span></a></span>

</div>
        <!--

TOP NAV

-->

    <!--

CONTENT CONTAINER

-->
    <div id="content-container-two-column">

        <!--

CONTENT MAIN COLUMN

-->

<ul id="maintab" class="shadetabs">
    <li><a href="http://www.jobprodirectory.com/index.html">Home</a></li>
    <li><a href="http://www.jobprodirectory.com/download.html" title="Download the JobPro Directory to find better employment faster">Download Free Trial</a></li>
    <li><a href="http://www.jobprodirectory.com/purchase.html" title="Buy the JobPro Directory using your credit card or PayPal">Purchase</a></li>
</ul>

<table>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><h2>Send Us Your Comments &amp; Listing Updates</h2></td>
    </tr>
</table>


<div id="content-main-one-column">

<p>Let us know how we're doing so that we can make improvements to serve you better. You may also use this form to submit listing updates. Click the <strong>Submit</strong> button below when done.
</p>

    <form id="form1" runat="server">    
    <div>
    
        <table style="font-family: Verdana;" align="left">
        
           <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle">
                   <asp:Label ID="lblStatusTop" runat="server" Text="status report" Visible="False" style="margin-right: 50px;"></asp:Label>
               </td>
               <td>&nbsp;</td>
           </tr>            

            <tr>
                <td>
                   <asp:Label ID="lblCompanyName" runat="server" Text="Name*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtCommenterName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" TabIndex="1" MaxLength="65"></asp:TextBox> 
            </td>
        <td>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            ControlToValidate="txtCommenterName" 
            ErrorMessage="Name is a required field."
            Text="X" 
            Font-Bold="True"
            Font-Size="100%"    
            SetFocusOnError="True"
            runat="server" />         
        </td>
            </tr>     
            
            <tr>
                <td>
                   <asp:Label ID="Label11" runat="server" Text="Email*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtCommenterEmail" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="2"></asp:TextBox> 
               </td>
               <td>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    ControlToValidate="txtCommenterEmail" 
                    ErrorMessage="Email Address is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />            
        
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                    ControlToValidate="txtCommenterEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                    ErrorMessage="Invalid Email Address"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />  
               </td>
            </tr>   
            
            
           <tr>
                <td>
                   <asp:Label ID="lblCompanyDescription" runat="server" Text="Comments*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtCommenterComments" runat="server" Text="" Width="100%" Height="200px" 
                        TextMode="MultiLine" BackColor="#FFFFCC" TabIndex="3"></asp:TextBox> 
               </td>
                <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                    ControlToValidate="txtCommenterComments" 
                    ErrorMessage="Comments is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />         
               </td>
            </tr>                  
                
           <tr>
                <td>&nbsp;
                    
                </td>
                <td class="secondColumnStyle">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
           </tr>                                
          
             <tr>
                <td>Reply requested</td>
                <td class="secondColumnStyle"> 
                    <asp:RadioButtonList ID="rblReplyRequested" TabIndex="4" runat="server" 
                        RepeatDirection="Horizontal" BackColor="#FFFFCC" BorderStyle="None">
                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>    
                </td>
                <td>&nbsp;        
                </td>
            </tr>             
            
             <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle" align="center">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
            </tr>                   
            
             <tr>
                <td>
                   </td>
                <td class="secondColumnStyle" align="center">
                   
                    <asp:Label ID="lblStatusBottom" runat="server" Text="status report" Visible="False" style="margin-right: 50px;"></asp:Label>                                      
                </td>
                <td>&nbsp;</td>
            </tr>          
            
             <tr>
                <td>
                </td>
                <td align="left">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    DisplayMode="BulletList" 
                    HeaderText="Please correct the following errors:"
                    Font-Size="small" ShowMessageBox="True" /> 
               </td>
               <td></td>
            </tr>                        
   
            <tr>
                <td>
                    <a href="#anchorPagetop" onclick="smoothScroll();return false;"><img height="19" border="0" width="20" title="Go to top" src="images/top_of_page.gif"/>&nbsp;Top of page</a>
                </td>
                
                <td align="right">   
                    <asp:Button ID="btnSubmit" runat="server" style="width: 100px; height: 40px; margin-right: 25px;" 
                        Text="Submit" BorderColor="#FFCC00" BackColor="Yellow" Font-Bold="True" 
                        Font-Size="Medium" TabIndex="5" /> 
                </td>
                <td>&nbsp;</td>
            </tr>   
            
             <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle" align="center">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
            </tr>    
            
             <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle" align="center">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
            </tr>                                  
       
        </table>
    </div>
    </form>

<br /><br /><br />


<!-- Start of StatCounter Code -->
<script type="text/javascript" language="javascript">
    var sc_project = 843565;
    var sc_partition = 6;
    var sc_security = "1d49c78a";
    var sc_invisible = 1;
</script>

<script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/counter.js"></script><noscript><a href="http://www.statcounter.com/" target="_blank"><img  src="http://c7.statcounter.com/counter.php?sc_project=843565&amp;java=0&amp;security=1d49c78a&amp;invisible=1" alt="advanced web statistics" border="0"></a> </noscript>
<!-- End of StatCounter Code -->



        </div>
        <div class="clear"> <!-- nothing appears in this horizontal row --> </div>
    </div>

        <!--

FOOTER

-->
        <div id="footer">

            Copyright &copy; 2005 - 2016 JobPro Directory

        </div>

<!-- Start of Google Analytics Code for JobProDirectory.com -->
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
    _uacct = "UA-1894480-2";
    urchinTracker();
</script>
<!-- End of Google Analytics Code for JobProDirectory.com -->

</body>
</html>