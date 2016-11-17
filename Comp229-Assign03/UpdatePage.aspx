<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="comp.Update_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>&nbsp;</p>
    <asp:DataList  ID="studentsList" runat="server" OnItemCommand="StudentsList_ItemCommand" Width="488px"> 
    <ItemTemplate>
StudentID:<strong><%#Eval("StudentID") %></strong><br/><asp:Literal ID="extraDetailsLiteral" runat="server" EnableViewState="false" />
<asp:LinkButton ID="detailsButton" runat="server" Text="view more details about student" CommandName="MoreDetailsPlease" CommandArgument='<%#Eval("LastName")+" "+Eval("FirstMidName") %>'/>
        <br />
<asp:LinkButton ID="editButton" runat="server" Text="Edit student" CommandName="EditItem" CommandArgument='<%#Eval("StudentID")%>'/>

    </ItemTemplate>
   <EditItemTemplate>
             First and Middle Name<asp:TextBox ID="nameTextBox" runat="server" Text='<%# Eval("FirstMidName") %>'></asp:TextBox>
             Last Name  <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox><br />
        <asp:LinkButton ID="updateButton" runat="server" Text="UpdateItem" CommandName="UpdateItem" CommandArgument='<%#Eval("StudentID")%>'/>   
       or  
     <asp:LinkButton ID="cancelButton" runat="server" Text="Cancel Editing" CommandName="Cancel Editing" CommandArgument='<%#Eval("StudentID")%>'/>     
    </EditItemTemplate>
                    



        
                
        </asp:DataList>
   </asp:Content>