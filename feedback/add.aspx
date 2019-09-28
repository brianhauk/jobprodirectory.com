<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="add.aspx.vb" Inherits="JobPro.add" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Add or Update Your Free British Columbia, Canada Business Directory Listing</title>

<meta http-equiv="title" content="Add or Update Your Free British Columbia Business Directory Listing"/>

<META name="KEYWORDS" content="job search, employment, employers list, employers directory, vancouver, BC, finding work, proactive job search, british columbia, canada">

<META name="OWNER" content="JobPro BC Employers Directory http://www.jobprodirectory.com">

<META name="AUTHOR" content="JobPro Directory http://www.jobprodirectory.com">

<META name="copyright" content="JobPro BC Employers Directory, Vancouver, B.C., Canada">

<META name="robots" content="All,INDEX">

<META name="googlebot" content="noarchive">

<META name="city" content="Vancouver">

<META name="province" content="BC">

<META name="resource-type" content="document">

<META name="distribution" content="global">

<META name="classification" content="web sites">

<META name="rating" content="General">

<META name="language" content="en-CA">

<META name="META_TAG_GENERATOR" content="JobPro Directory http://www.jobprodirectory.com">

<META name="revisit-after" content="14 days">

<META http-equiv=Content-Type content="text/html;charset=windows-1252">

<!-- <link href="style.css" rel="stylesheet" type="text/css" /> -->
<link href="css/css-print.css" rel="stylesheet" type="text/css" media="print" />
<link href="css/css-content.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="ajaxtabs/ajaxtabs.css" />

<script type="text/javascript" src="js/datacentrik.js"></script>
<!-- <script type="text/javascript" src="ajaxtabs/ajaxtabs.js"></script>  -->

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
        <td><h2>Add or Update Your Free British Columbia Business Directory Listing and Be Found by People Needing Your Products &amp; Services</h2></td>
    </tr>
</table>


<div id="content-main-one-column">

<p>Make your British Columbia company or non-profit organization known to thousands 
    of people searching for your product or service. Add or update your company and 
    key contacts for free by providing the following information for both your 
    online and offline JobPro Directory listings. You may also <a href="http://www.jobprodirectory.com/feedback/comments.aspx">easily update company and contact information for organizations already listed</a>.
<br /><br />
    Required items are marked with an asterisk (*). Click the <strong>Submit</strong> 
    button below when done.
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
                   <asp:Label ID="lblCompanyName" runat="server" Text="Company Name(s)*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtCompanyName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" TabIndex="1" MaxLength="65"></asp:TextBox> 
            </td>
        <td>&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            ControlToValidate="txtCompanyName" 
            ErrorMessage="Company Name is a required field."
            Text="X" 
            Font-Bold="True"
            Font-Size="100%"    
            SetFocusOnError="True"
            runat="server" />         
        </td>
            </tr>        
            
            <tr>
                <td>
                   <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1*"></asp:Label>
                </td>
                <td class="secondColumnStyle" id="AddressLine1">
                    <asp:TextBox ID="txtAddressLine1" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" TabIndex="2" MaxLength="65"></asp:TextBox>  
               </td>
               <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                    ControlToValidate="txtAddressLine1" 
                    ErrorMessage="Address Line1 is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />         
               </td>
            </tr>          
            
            <tr>
                <td>
                   <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line2"></asp:Label>
                </td>
                <td class="secondColumnStyle" id="">
                    <asp:TextBox ID="txtAddressLine2" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" TabIndex="3" MaxLength="65"></asp:TextBox> 
               </td>
               <td>&nbsp;
               </td>
            </tr>     
            
            <tr>
                <td>
                   <asp:Label ID="lblCityTown" runat="server" Text="City or Town*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtCity" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" TabIndex="4" MaxLength="65"></asp:TextBox> 
               </td>
                    <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                    ControlToValidate="txtCity" 
                    ErrorMessage="City or Town is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />         
               </td>
            </tr>       
            
            <tr>
                <td>
                   <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtPostalCode" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="7" TabIndex="5"></asp:TextBox> 
               </td>
               <td>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    ControlToValidate="txtPostalCode" 
                    ErrorMessage="Postal Code is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />        
        
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                    ControlToValidate="txtPostalCode" 
                    ValidationExpression="^((\d{5}-\d{4})|(\d{5})|([AaBbCcEeGgHhJjKkLlMmNnPpRrSsTtVvXxYy]\d[A-Za-z]\s?\d[A-Za-z]\d))$" 
                    ErrorMessage="Invalid Postal Code"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />   
               </td>
            </tr>               
            
            <tr>
                <td>
                   <asp:Label ID="lblTelLocal" runat="server" Text="Phone*"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtTelLocal" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="6"></asp:TextBox> 
               </td>
               <td>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    ControlToValidate="txtTelLocal" 
                    ErrorMessage="Company Phone is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />            
        
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                    ControlToValidate="txtTelLocal" 
                    ValidationExpression="(?:^(?:(?:\+?1[\s])|(?:\+?1(?=(?:\()|(?:\d{10})))|(?:\+?1[\-](?=\d)))?(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$)|(?:^[2-9]\d{2}[- ]?\d{4}$)"  
                    ErrorMessage="Invalid Phone Number"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />                                     
               </td>
            </tr>                                            
            
            <tr>
                <td>
                   <asp:Label ID="lblTelLongDistance" runat="server" Text="Phone - Toll Free"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtTelLongDistance" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="7"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>                   
            
           <tr>
                <td>
                   <asp:Label ID="lblFaxLocal" runat="server" Text="Fax."></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtFaxLocal" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="8"></asp:TextBox>  
               </td>
               <td>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                    ControlToValidate="txtFaxLocal" 
                    ValidationExpression="(?:^(?:(?:\+?1[\s])|(?:\+?1(?=(?:\()|(?:\d{10})))|(?:\+?1[\-](?=\d)))?(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$)|(?:^[2-9]\d{2}[- ]?\d{4}$)"  
                    ErrorMessage="Invalid Fax Number"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />               
               </td>
            </tr>              
            
           <tr>
                <td>
                   <asp:Label ID="lblFaxLongDistance" runat="server" Text="Fax. - Toll Free"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtFaxLongDistance" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="9"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>              
            
           <tr>
                <td>
                   <asp:Label ID="lblPrimaryEmail" runat="server" Text="Primary Email*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtPrimaryEmail" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="10"></asp:TextBox>  
               </td>
               <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                    ControlToValidate="txtPrimaryEmail" 
                    ErrorMessage="Primary Email Address is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />            
        
                    <asp:RegularExpressionValidator ID="RequiredFieldValidator4"
                    ControlToValidate="txtPrimaryEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                    ErrorMessage="Invalid Primary Email Address"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />
               </td>
            </tr>                  
        
           <tr>
                <td>
                   <asp:Label ID="lblPrimaryCompanyWebsite" runat="server" Text="Primary Website"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtPrimaryCompanyWebsite" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="11"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>   
            
           <tr>
                <td>
                   <asp:Label ID="lblOtherCompanyWebsite" runat="server" Text="Other Company Website"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtOtherCompanyWebsite" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>   

           <tr>
                <td>
                   <asp:Label ID="lblLinkedinCompanyProfileURL" runat="server" Text="Linkedin URL"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtLinkedinCompanyProfileURL" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>  

           <tr>
                <td>
                   <asp:Label ID="lblFacebookCompanyProfileURL" runat="server" Text="Facebook URL"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtFacebookCompanyProfileURL" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>  
            
           <tr>
                <td>
                   <asp:Label ID="lblNumEmployees" runat="server" Text="Number Employees"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtNumEmployees" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="6" TabIndex="13"></asp:TextBox>  
               </td>
               <td> &nbsp;
                   <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                           ControlToValidate="txtNumEmployees" 
                    ErrorMessage="Number Employees must be a number."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True" MaximumValue="999999" MinimumValue="1" Type="Integer" />                           

                </td>
            </tr>             
            
           <tr>
                <td>
                   <asp:Label ID="lblCompanyDescription" runat="server" Text="<strong>Company Description</strong><br> Products &amp; Services*<br><br>What makes your<br> company unique?<br>  (unformatted text only)"></asp:Label>
                   <br /><br /> <a href="#anchorPagetop" onclick="smoothScroll();return false;"><img height="19" border="0" width="20" title="Go to top" src="images/top_of_page.gif"/>&nbsp;Top 
                    of page</a>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtProductsAndServices" runat="server" Text="" Width="100%" Height="200px" 
                        TextMode="MultiLine" BackColor="#FFFFCC" TabIndex="14"></asp:TextBox> 
               </td>
                <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                    ControlToValidate="txtProductsAndServices" 
                    ErrorMessage="Company Description is a required field."
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
                <td>
                   <strong>Contact Person 1</strong>
                </td>
                <td class="secondColumnStyle">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
            </tr>             
          
            <tr>
                <td>
                   <asp:Label ID="lblFirstName" runat="server" Text="First Name*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1FirstName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="15"></asp:TextBox>
               </td>
                <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                    ControlToValidate="txtContact1FirstName" 
                    ErrorMessage="Contact Person 1 First Name is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />         
               </td>
            </tr>
            
            <tr>
                <td>
                   <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1LastName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="16"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>
                   <asp:Label ID="lblTitle1" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1Title" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="17"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>            
            
            <tr>
                <td>
                   <asp:Label ID="Label12" runat="server" Text="Direct Phone"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1DirectPhone" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="18"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>            
            
            <tr>
                <td>
                   <asp:Label ID="Label11" runat="server" Text="Direct Email"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1DirectEmail" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="19"></asp:TextBox> 
               </td>
                              <td>
                                  &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                    ControlToValidate="txtContact1DirectEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                    ErrorMessage="Invalid Contact Person 1 Direct Email Address."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />               
               </td>
            </tr>   

           <tr>
                <td>
                   <asp:Label ID="lblLinkedinContact1ProfileURL" runat="server" Text="Linkedin URL"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtLinkedinContact1ProfileURL" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>   

           <tr>
                <td>
                   <asp:Label ID="lblPersonSiteOrBlogContact1" runat="server" Text="Personal website or blog"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtPersonSiteOrBlogContact1" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;
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
                <td>
                   <asp:Label ID="Label14" runat="server" Text="<strong>Contact Person 1<br>Mini Biography</strong><br><br>Give people a <br> reason to contact<br> you. Including this<br> increases your <br>listing's search <br>visibility &amp; your <br> credibility.<br>(unformatted text only)"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact1MiniBiography" runat="server" Text="" Width="100%" Height="200px" 
                        TextMode="MultiLine" BackColor="#FFFFCC" TabIndex="20"></asp:TextBox> 
               </td>
               <td>&nbsp;</td>
            </tr>      
            
           <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle">
<!--                   
      <p>No:<input id="rbNo" type="radio" name="rbGroup1" onclick="animatedcollapse.hide('additionalContacts')" checked="true" />&nbsp;&nbsp;&nbsp; 
      Yes:<input id="rbYes" type="radio" name="rbGroup1" onclick="animatedcollapse.show('additionalContacts')" />    </p>
-->                 
                </td>
               <td>&nbsp;</td>
           </tr>      
           
           <tr>
                <td>
                   <strong>Contact Person 2</strong>                                   
                </td>
                <td class="secondColumnStyle">                
<div id="additionalContacts" style="width: 100%; background: #FFFFCC; display:none">          
      xxxxxxxxxxxxxxxxx
</div>    
               </td>
               <td>&nbsp;</td>
           </tr>          
            
            <tr>
                <td>
                   <asp:Label ID="Label15" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2FirstName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="21"></asp:TextBox> 
               </td>
               <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>
                   <asp:Label ID="Label16" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2LastName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="22"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>
            
            <tr>
                <td>
                   <asp:Label ID="Label17" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2Title" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="23"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>            
            
            <tr>
                <td>
                   <asp:Label ID="Label18" runat="server" Text="Direct Phone"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2DirectPhone" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="24"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>            
            
            <tr>
                <td>
                   <asp:Label ID="Label19" runat="server" Text="Direct Email"></asp:Label> 
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2DirectEmail" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="25"></asp:TextBox>
               </td>
               <td>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                    ControlToValidate="txtContact2DirectEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                    ErrorMessage="Invalid Contact Person 2 Direct Email Address."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />               
               </td>
            </tr>   

           <tr>
                <td>
                   <asp:Label ID="lblLinkedinContact2ProfileURL" runat="server" Text="Linkedin URL"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtLinkedinContact2ProfileURL" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;</td>
            </tr>   

           <tr>
                <td>
                   <asp:Label ID="lblPersonSiteOrBlogContact2" runat="server" Text="Personal website or blog"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtPersonSiteOrBlogContact2" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="12"></asp:TextBox>  
               </td>
               <td>&nbsp;
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
                <td>
                   <asp:Label ID="Label20" runat="server" Text="<strong>Contact Person 2<br>Mini Biography</strong><br><br>Give people a <br> reason to contact<br> you. Including this<br> increases your <br>listing's search <br>visibility &amp; your <br> credibility.<br>(unformatted text only)"></asp:Label>
                   <br /><br /> <a href="#anchorPagetop" onclick="smoothScroll();return false;"><img height="19" border="0" width="20" title="Go to top" src="images/top_of_page.gif"/>&nbsp;Top 
                    of page</a>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtContact2MiniBiography" runat="server" Text="" Width="100%" Height="200px" 
                        TextMode="MultiLine" BackColor="#FFFFCC" TabIndex="26"></asp:TextBox> 
               </td>
               <td>&nbsp;</td>
            </tr>         
            
           <tr>
                <td>&nbsp;
                    
                </td>
                <td class="secondColumnStyle">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
           </tr>     
           
           
           <tr>
                <td>&nbsp;
                   </td>
                <td class="secondColumnStyle">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
           </tr>                        
            
           <tr>
                <td>
                   <asp:Label ID="Label10" runat="server" Text="<strong>Comments</strong><br>How can we <br> as a directory <br> publisher better<br> meet your needs?"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtComments" runat="server" Text="" Width="100%" Height="75px" 
                        TextMode="MultiLine" BackColor="#FFFFCC" TabIndex="27"></asp:TextBox> 
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
            
             <tr>
                <td>
                    <strong>Information Provider</strong></td>
                <td class="secondColumnStyle" align="center">&nbsp;
                   
               </td>
               <td>&nbsp;</td>
            </tr>    
            
            <tr>
                <td>
                   <asp:Label ID="lblSubmitterFirstName" runat="server" Text="First Name*"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtSubmitterFirstName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="28"></asp:TextBox> 
               </td>
                               <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11"
                    ControlToValidate="txtSubmitterFirstName" 
                    ErrorMessage="Information Provider First Name is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />         
               </td>
            </tr>
            
            <tr>
                <td>
                   <asp:Label ID="lblSubmitterLastName" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtSubmitterLastName" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="29"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>      
            
            <tr>
                <td>
                   <asp:Label ID="lblSubmitterTitle" runat="server" Text="Title"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtSubmitterTitle" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="30"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>     
            
            <tr>
                <td>
                   <asp:Label ID="Label1" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="secondColumnStyle">
                    <asp:TextBox ID="txtSubmitterPhone" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="20" TabIndex="31"></asp:TextBox>
               </td>
               <td>&nbsp;</td>
            </tr>                                            
            
             <tr id="submitterEmail">
                <td>
                   <asp:Label ID="lblSubmitterEmail" runat="server" Text="Email*"></asp:Label></td>
                <td class="secondColumnStyle" align="left">
                    <asp:TextBox ID="txtSubmitterEmail" runat="server" Text="" Width="100%" 
                        BackColor="#FFFFCC" MaxLength="65" TabIndex="32"></asp:TextBox>
               </td>
               <td>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    ControlToValidate="txtSubmitterEmail" 
                    ErrorMessage="Information Provider Email Address is a required field."
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />            
        
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                    ControlToValidate="txtSubmitterEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                    ErrorMessage="Invalid Information Provider Email Address"
                    Text="X" 
                    Font-Bold="True"
                    Font-Size="100%"    
                    SetFocusOnError="True"
                    runat="server" />
               </td>
            </tr>  
            
             <tr>
                <td>
                    Include me as<br />a contact.</td>
                <td class="secondColumnStyle"> 
                    <asp:RadioButtonList ID="rblIncludeMeAsAContact" TabIndex="33" runat="server" 
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
                    Send me a free<br />evaluation copy of the<br />JobPro Directory.</td>
                <td> 
                    <asp:RadioButtonList ID="rblSendProviderEval" runat="server" TabIndex="34"
                        RepeatDirection="Horizontal" BackColor="#FFFFCC" BorderStyle="None">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem Selected="True">No</asp:ListItem>
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
                    Send me a copy<br />of this form<br />information for<br />my records.
                </td>
                <td class="secondColumnStyle"> 
                    <asp:RadioButtonList ID="rblSendProviderCopyOfFormInfo" runat="server" TabIndex="36"
                        RepeatDirection="Horizontal" BackColor="#FFFFCC" BorderStyle="None">
                        <asp:ListItem Selected="True">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>    
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
                <td class="style1" align="left">
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
                        Font-Size="Medium" TabIndex="37" /> 
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
var sc_project=843565;
var sc_partition=6;
var sc_security="1d49c78a";
var sc_invisible=1;
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