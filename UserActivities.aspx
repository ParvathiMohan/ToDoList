<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserActivities.aspx.cs" Inherits="WebApplication1.UserActivities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(images/backgroundimage.jpg)">
    <form id="form1" runat="server">
        <div style="position: absolute;left: 50%;top: 50%;transform: translate(-50%, -50%);">
            <asp:Label ID="welcomeLabel" runat="server" Text="Have a Look !" Font-Names="Garamond" BorderStyle="Dashed" ForeColor="Blue" Font-Bold="True" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="msgLabel" runat="server" Text="Welcome  " Font-Names="Garamond" ForeColor="Blue" Font-Bold="True" Font-Size="Large"></asp:Label>
            <asp:Label ID="nameLabel" runat="server" Text="" Font-Names="Garamond" ForeColor="Blue" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br/><br/><br/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating"
                    BackColor="White" BorderColor="Blue" BorderStyle="None" BorderWidth="1px"   
                    CellPadding="4" Width="508px" Height="148px">  
                    <Columns>  
                        <asp:TemplateField HeaderText="Activity">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Eval("ActivityName") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("ActivityName") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Status">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Eval("ActivityStatus") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("ActivityStatus") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField HeaderText="Last Updated">  
                            <EditItemTemplate>  
                                <asp:TextBox ID="lastUpdatedTextBox" runat="server" Text='<%# Eval("LastUpdated") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lastUpdatedLabel" runat="server" Text='<%# Eval("LastUpdated") %>'></asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Update Activity">  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                      
                        
                    </Columns>                    
                </asp:GridView>  
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="newRecordAddButton" runat="server" Text="Add New Activity" Font-Bold="true" OnClick="newRecordAddButton_Click" style="height: 26px" ForeColor="Blue" />
        </p>
    </form>
</body>
</html>
