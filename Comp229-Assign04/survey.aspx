<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="survey.aspx.cs" Inherits="Comp229_Assign04.survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/SurveyStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="SurvyPage">
      <h1>this is the survey page</h1>
      <h2>We honour your trust and providing the best services.</h2>
      <p>This survey information will remain confidentials and will not be share with any third party unless otherwise authorized by you.</p>
    <fieldset>
    <legend>Complete the Survey Here </legend>
     <div><asp:Label runat="server" Text="First Name" CssClass="Left"/>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="UsernameTxtBox" runat="server" TextMode="SingleLine" CssClass="Right" Width="180px" />
             <asp:RequiredFieldValidator ID="UserTxtBox_RequiredFieldValidator1" runat="server"
                  ControlToValidate="UsernameTxtBox" ErrorMessage="First name is Required" Display="Dynamic" />
        </div><br />
        <div><asp:Label runat="server" Text="Last Name" CssClass="Left"/>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Lastnames" runat="server" TextMode="SingleLine" CssClass="Right" Width="180px" />
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                  ControlToValidate="Lastnames" ErrorMessage="Last name is Required" Display="Dynamic" />
        </div>
<br />
        <div>
            <asp:Label runat="server" Text="Gender" CssClass="Left" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="Right" Width="180px">
                <asp:ListItem Text="Please select a gender " Value=" "></asp:ListItem>
               <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                <asp:ListItem Text="Female" Value="F"></asp:ListItem>
            </asp:DropDownList>    
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender" 
                ErrorMessage="Please select a gender" />         
        </div><br />
        <div>
               <asp:Label runat="server" Text="Age:" ></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:TextBox ID="txtForAge" runat="server" TextMode="SingleLine" Width="180px"/>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtForAge"
                     ErrorMessage="You must 19 year of age" MaximumValue="150" MinimumValue="19"
                     Type="Integer" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtForAge" ErrorMessage="Age field is required" type="Integer" />
        </div><br />
        <div>
                <asp:Label runat="server" Text="Email" CssClass="Left"></asp:Label>
                :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="EmailTxt" runat="server" TextMode="SingleLine" Width="180px"/>
                <asp:RegularExpressionValidator ID="EamilRegValidation" runat="server" 
                    ControlToValidate="EmailTxt" ErrorMessage="Email format does not matched" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
                <asp:RequiredFieldValidator ID="EmailRequired" runat="server"
                     ErrorMessage="Email is required" ControlToValidate="EmailTxt"/>
            </div></fieldset>
        <div>
            
            <FIELDSET>
        <LEGEND><b>Q1.What is the model and year of your Hyundai?</b></LEGEND>
                <asp:Label runat="server" Text="Year"></asp:Label>
                :<asp:TextBox ID="Yeartxt" runat="server" TextMode="SingleLine" />
                <asp:RequiredFieldValidator ID="rfvYear" runat="server"
                ControlToValidate="Yeartxt" ErrorMessage="Type the year of your Hyundai" Display="Dynamic" />
                <br /><br />
                <asp:Label runat="server" Text="Model"></asp:Label>
                <asp:TextBox ID="Modeltxt" runat="server" TextMode="SingleLine" />
                   <asp:RequiredFieldValidator ID="rfvModel" runat="server"
                  ControlToValidate="Modeltxt" ErrorMessage="Insert the model" Display="Dynamic" />
        </FIELDSET>
        </div>
              <div>
            
            <FIELDSET>
        <LEGEND><b>Q2.Are you satisfied with our dealership services?</b></LEGEND>
         <asp:RadioButtonList ID="rdbtnQ2" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvRdBtn" runat="server" ControlToValidate ="rdbtnQ2" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
        <div>
         <FIELDSET>
        <LEGEND><b>Q3.Did we answered all your questions at the time of purchase?</b></LEGEND>
         <asp:RadioButtonList ID="rdBtnQ3" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvRdBtnQ3" runat="server" ControlToValidate ="rdBtnQ3" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
                <div>
         <FIELDSET>
        <LEGEND><b>Q4.Was the purchase of your vehicle a pleasant experience? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtnQ4" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfqBtnQ4" runat="server" ControlToValidate ="rdBtnQ4" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
        <div>
         <FIELDSET>
        <LEGEND><b>Q5.Was your purchased vehicles exterior undamaged? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn5" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvBtn5" runat="server" ControlToValidate ="rdBtn5" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
        <div>
         <FIELDSET>
        <LEGEND><b>Q6.Was your vehicle delivered with all the features promised? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn6" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvBtn6" runat="server" ControlToValidate ="rdBtn6" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
                <div>
         <FIELDSET>
        <LEGEND><b>Q7.Did the dealership employees thoroughly inspected the vehicle? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn7" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvrdBtn7" runat="server" ControlToValidate ="rdBtn7" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
       <div>
         <FIELDSET>
        <LEGEND><b>Q8.Were all operating controls explained to you? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn8" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvBtn8" runat="server" ControlToValidate ="rdBtn8" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
        <div>
         <FIELDSET>
        <LEGEND><b>Q9.Were all terms of the warranty explained to you? </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn9" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvBtn9" runat="server" ControlToValidate ="rdBtn9" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
         <div>
         <FIELDSET>
        <LEGEND><b>Q10.Are you satisfied with our services </b></LEGEND>
         <asp:RadioButtonList ID="rdBtn10" runat="server" RepeatDirection="Horizontal" Height="26px" Width="141px">
         <asp:ListItem>Yes</asp:ListItem>
         <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>
         <asp:RequiredFieldValidator ID="rfvBtn10" runat="server" ControlToValidate ="rdBtn10" ErrorMessage="Please select an option" Display="Dynamic"></asp:RequiredFieldValidator> 
        </FIELDSET>
        </div>
        <br />
            <div>
                <FIELDSET>
                <asp:Button ID="Submitt" runat="server" Text="Submit Info" OnClick="Submitt_Click"/>
                    </FIELDSET>
            </div>
         
              </div>
</asp:Content>
