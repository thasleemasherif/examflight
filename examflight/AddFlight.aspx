<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFlight.aspx.cs" Inherits="examflight.AddFlight" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title></title>
        <style type="text/css">
        .auto-style3 {
            height: 26px;
            text-align: center;
            position: relative;
            left: 0px;
            top: 2px;
        }
        .auto-style4 {
            height: 29px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
    </style>
</head>
<body style="background-image:">
    <form id="form1" runat="server">
        
               <table align="center" class="auto-style3" style="border-style: groove;">
            <tr>
                <td class="auto-style4" >Flight Id :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextId" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >Source :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextSourc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" >Destination :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextDest" runat="server" class="auto-style7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >No of Seats :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextSeat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >Flight Fare :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextFare" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td  colspan="2">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Flight" BackColor="Black" ForeColor="#CCCCCC" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </td>
            </tr>
                       
        </table>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div >
            <asp:GridView ID="GridFlight" runat="server" Width="100%" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <AlternatingRowStyle BorderColor="#660033" BorderStyle="Dotted" />
                <Columns>
                    <asp:TemplateField HeaderText="Flight ID ">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("flightid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Source">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("source") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Destination">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("destination") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="No Of Seats">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("noofseats") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Flight Fare">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("flightfare") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
                </div>
        </div>
    </form>
</body>
</html>
