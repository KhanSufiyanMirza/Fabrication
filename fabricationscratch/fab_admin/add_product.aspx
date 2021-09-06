<%@ Page Title="" Language="C#" MasterPageFile="~/fab_admin/admin.Master" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="fabricationscratch.fab_admin.add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container pt-4">
            <div class="row align-items-center">
                <div class="col-12 text-center ">
                    <label class="checkbox-inline">
                        <asp:CheckBox ID="CheckBox1" runat="server" />Prebuild Product</label>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="container p-2">
            <div class="row">

                <div class="col-md-4 col-12">
                    <p class="p-2">product name:</p>
                </div>
                <div class="col-md-8 col-12">
                    <asp:TextBox ID="T1" runat="server" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="product name is required" ControlToValidate="T1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <p class="p-2">product description:</p>
                </div>
                <div class="col-md-8 col-12">
                    <asp:TextBox ID="T2" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="product descriptio is required...!" ControlToValidate="T2" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <p class="p-2">product price:</p>
                </div>
                <div class="col-md-8 col-12">
                    <asp:TextBox ID="T3" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="product price is required...!" ControlToValidate="T3" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <p class="p-2">product qantity:</p>
                </div>
                <div class="col-md-8 col-12">
                    <asp:TextBox ID="T4" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="product quantity is required...!" ControlToValidate="T4" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <p class="p-2">product image:</p>
                </div>
                <div class="col-md-8 col-12">
                    <asp:FileUpload ID="img1" runat="server" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="please select image...!" ControlToValidate="img1" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-12">
                    <p class="p-2">product image:</p>
                </div>
                <div class="col-md-8 col-12">
                    select category:
         <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-success  "></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class=" col-12 text-center">
                    <asp:Button ID="Button2" runat="server" Text="upload" class="btn btn-primary w-100" OnClick="Button2_Click" />
                </div>

            </div>
        </div>
    </section>

</asp:Content>
