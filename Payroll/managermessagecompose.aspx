﻿<%@ Page Language="C#" MasterPageFile="~/Payroll/Payroll/ManagerMasterPage.master" AutoEventWireup="true" CodeFile="managermessagecompose.aspx.cs" Inherits="adminmessagecompose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" CssClass="mylabel" 
        Style="position:absolute;top:59px; left:13px;" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
    <asp:Label ID="lblPageTitle" runat="server" Text="Compose Message:" 
        Style="position:absolute; top: 118px; left: 11px;" CssClass="mylabel" 
        Font-Bold="True" Font-Size="14px" ForeColor="Red"></asp:Label>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" />
     <asp:Label ID="lblTo" runat="server" Text="To:" 
        Style="position:absolute; top: 143px; left: 11px;" CssClass="mylabel"></asp:Label>
     <asp:Label ID="lblMessage" runat="server" Text="Message:" 
        Style="position:absolute; top: 171px; left: 11px;" CssClass="mylabel"></asp:Label>
    <asp:TextBox ID="txtMessage" runat="server" 
        Style="position:absolute; top: 172px; left: 76px; width: 284px; height: 133px;" 
        CssClass="mytextbox" TabIndex="20" TextMode="MultiLine"></asp:TextBox>
    <asp:DropDownList ID="dropTo" runat="server" CssClass="mytextbox"         
        Style="position:absolute; top: 142px; left: 76px; height: 18px; width: 188px;" 
        TabIndex="10">
    </asp:DropDownList>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        Style="position:absolute; top: 314px; left: 298px;" BackColor="#009933" 
        BorderStyle="Groove" CssClass="mylabel" Font-Bold="True" ForeColor="Yellow" 
        onclick="btnSubmit_Click" TabIndex="30" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Please Enter the Message." Style="position:absolute; top: 175px; left: 370px;" 
        ControlToValidate="txtMessage" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True">*</asp:RequiredFieldValidator>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Please select any one option in the list." Style="position:absolute; top: 145px; left: 272px;" 
        ControlToValidate="dropTo" CssClass="mylabel" Font-Size="15px" 
        SetFocusOnError="True" InitialValue="---Select---">*</asp:RequiredFieldValidator>
</asp:Content>