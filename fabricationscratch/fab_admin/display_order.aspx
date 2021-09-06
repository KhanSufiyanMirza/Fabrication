<%@ Page Title="" Language="C#" MasterPageFile="~/fab_admin/admin.Master" AutoEventWireup="true" CodeBehind="display_order.aspx.cs" Inherits="fabricationscratch.fab_admin.display_order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">

    
    <asp:GridView runat="server" ID="fl" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
                <Columns> 
                    <asp:TemplateField HeaderText="ID" >
                        <ItemTemplate>
                            <%# Eval("id") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CUSTOMERS NAME">
                        <ItemTemplate>
                            <%# Eval("name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                       <%#Eval("email_id") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="CITY">
                        <ItemTemplate>
                       <%#Eval("city") %>
                        </ItemTemplate>
                    </asp:TemplateField><asp:TemplateField HeaderText="STATE">
                        <ItemTemplate>
                       <%#Eval("state") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pincode">
                        <ItemTemplate>
                       <%#Eval("pincode") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                  <asp:TemplateField HeaderText="Mobile">
                        <ItemTemplate>
                       <%#Eval("mobile") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                 
                  
                    <asp:TemplateField HeaderText="view full order">
                        <ItemTemplate>
                        <a href="view_full_order.aspx?id=<%#Eval("id") %>">view full order</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <EditRowStyle BackColor="#7C6F57"  />
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
</asp:Content>
