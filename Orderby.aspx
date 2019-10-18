<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Orderby.aspx.cs" Inherits="WebApplication1.Orderby" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 1000px; margin: auto auto; margin-top: 20px;">
        <asp:GridView ID="GridView1" runat="server" Width="100%" Height="100%" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:TemplateField HeaderText="订单号">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Oid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Oid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Uname" HeaderText="用户名称" />
                <asp:BoundField DataField="Hname" HeaderText="酒店名称" />
                <asp:BoundField DataField="Rtype" HeaderText="房间类型" />
                <asp:BoundField DataField="date" HeaderText="入住日期" />
                <asp:BoundField DataField="ispay" HeaderText="订单是否完成" />
                <asp:TemplateField HeaderText="支付方式">
                    <ItemTemplate>
                        <div style="padding-left: 30px;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Oid") %>' OnClick="LinkButton1_Click1">微信支付</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Oid") %>' OnClick="LinkButton2_Click1">支付宝支付</asp:LinkButton>
                        </div>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("Hname") %>' OnClick="LinkButton3_Click">去评价</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </div>
</asp:Content>
