<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>

<style type="text/css">
    .auto-style1 {
        height: 29px;
    }
    .auto-style2 {
        width: 385px;
    }
    .auto-style3 {
        height: 35px;
        width: 385px;
    }
    .auto-style4 {
        width: 145px;
    }
    .auto-style5 {
        height: 35px;
        width: 145px;
    }
    .auto-style6 {
        height: 35px;
    }
</style>

<script type="text/javascript">
    function validatePhoneNumber(source, args) {
        var phoneHome = document.getElementById('<%= Phone.ClientID %>');
    if (phoneHome.value != '') {
        args.IsValid = true;
    }
    else {
        args.IsValid = false;
    }
    }
</script>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <div id="TableWrapper">
      <table class="auto-style1" runat="server" id="FormTable">
      <tr>
        <td colspan="3">
          <h1>Contact Form</h1>
          <p>
              Enter info here
          </p>
        </td>
      </tr>
      <tr>
        <td class="auto-style2">Name</td>
        <td>
          <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style4">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style2">E-mail address</td>
        <td>
          <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style2">Repeat e-mail address</td>
        <td>
          <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style4">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="The e-mail addresses don’t match">*</asp:CompareValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style3">phone number</td>
        <td class="auto-style6">
          <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style5">

            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumber" ErrorMessage="Enter an phone address">*</asp:CustomValidator>

        </td>
      </tr>

      <tr>
        <td class="auto-style2">Comments</td>
        <td>
          <asp:TextBox ID="Comments" runat="server" Height="63px" TextMode="MultiLine" Width="308px"></asp:TextBox>
        </td>
        <td class="auto-style4">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
          <asp:Button ID="SendButton" runat="server" Text="Send" />
        </td>
        <td class="auto-style4">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="3">
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
        </td>
      </tr>
      </table>
    </div>
    <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" CssClass="Attention" />
    <p runat="server" id="MessageSentPara" visible="False">
      Thank you for your message. We'll get in touch with you if necessary.
    </p>
  </ContentTemplate>
</asp:UpdatePanel>
