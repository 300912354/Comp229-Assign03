<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="comp.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <style>
        .jumbotron {
           
            background-repeat: no-repeat;
            background-size: cover;
        }
           body
           {
               background-color:gainsboro;
           }
    </style>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student Page</h2>
    <p>&nbsp;</p>


    <div><asp:GridView ID="StudentGridView" runat="server" AutoGenerateColumns="False"  OnSelectedIndexChanged="StudentGridView_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" Width="441px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="Student Number" />
            <asp:BoundField DataField="LastName" HeaderText="LastName"  />
            <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" />
          <asp:CommandField ShowEditButton="True" />
               
                  
  </Columns> 
         <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView> 
        <br />
    </div>  
    <asp:DetailsView ID="studentDetails" runat="server" Height="16px" Width="281px" AutoGenerateRows="False"  CellPadding="4" ForeColor="#333333" GridLines="None" OnModeChanging="studentDetails_ModeChanging" style="margin-top: 0px">
           
             <AlternatingRowStyle BackColor="White" />
             <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
             <EditRowStyle BackColor="#7C6F57" />
             <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
           
             <Fields>
                <asp:BoundField DataField="StudentID" HeaderText="Student Number" />
            <asp:BoundField DataField="LastName" HeaderText="LastName"  />
            <asp:BoundField DataField="FirstMidName" HeaderText="FirstMidName" />
            <asp:BoundField DataField="EnrollmentDate" HeaderText="EnrollmentDate" />
                 <asp:CommandField ShowEditButton="True" />
                  
             </Fields>
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <%#Eval("LastName") %>
        </HeaderTemplate>
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
           </asp:DetailsView> 
            
           <%--<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#E3EAEB" />
            
         
           
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [CourseID], [Title] FROM [Courses]"></asp:SqlDataSource>
           
      <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CourseID" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None" Width="271px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="CourseID" HeaderText="CourseID" InsertVisible="False" ReadOnly="True" SortExpression="CourseID" />
                 <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
       
         </div>
   
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT [CourseID], [Title] FROM [Courses]"></asp:SqlDataSource>
        

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Comp229Assign03ConnectionString %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>--%>

<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="UpdatePage.aspx" >Student</asp:HyperLink>
</asp:Content>
