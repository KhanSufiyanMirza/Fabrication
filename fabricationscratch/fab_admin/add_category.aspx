<%@ Page Title="" Language="C#" MasterPageFile="~/fab_admin/admin.Master" AutoEventWireup="true" CodeBehind="add_category.aspx.cs" Inherits="fabricationscratch.fab_admin.add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <div class="container">
            <div class="row pt-4 ">
                <div class="col-6">
                    <table class="table table-borderless">
                        <tr>
                            <td>
                                <b>ENTER CATEGORY NAME: </b>
                            </td>
                            <td>
                                <asp:TextBox ID="T1" runat="server" CssClass="form-control" ValidationGroup="ac"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="T1" ValidationGroup="ac"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>

                                <asp:Button ID="Button1" runat="server" Text="add category" CssClass="btn btn-primary pl-4" OnClick="Button1_Click" ValidationGroup="ac" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-6">

                    <asp:Repeater runat="server" ID="repeat">
                        <HeaderTemplate>
                            <table class="table table-borderless table-hover">
                                <tr style="background-color: cadetblue; color: white; font-weight: bold">
                                    <td>Category Name</td>


                                    <td>delete</td>

                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>

                                <td><%#Eval("product_category") %></td>
                                <td>
                                    <a href="delete_category.aspx?category=<%#Eval("product_category") %>" class="btn btn-primary">Delete</a>

                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
