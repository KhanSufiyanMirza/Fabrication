<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="fabricationscratch.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <section class="ftco-section ftco-cart ">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate p-md-3 p-1">
                        <div class="cart-list ">

                            <table class="table">
                                <thead class="thead-primary">
                                    <tr class="text-center bg-primary text-white">
                                        <th>Product image</th>

                                        <th>Product name</th>
                                        <th>Price</th>
                                        <th>quantity</th>
                                        <th>Modify</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater runat="server" ID="rep">
                                        <ItemTemplate>
                                            <tr>

                                                <td>
                                                    <img src="<%# Eval("product_images") %>" alt="<%# Eval("product_name") %>" class="img-fluid" height="100" width="100" />
                                                </td>

                                                <td class="text-uppercase text-center"><%# Eval("product_name") %> </td>

                                                <td class="text-uppercase text-center"><%# Eval("product_price") %> <i class="fa fa-inr" aria-hidden="true"></i></td>
                                                <td>
                                                    <asp:TextBox runat="server" class="form-control w-50" />
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnEditing" CssClass="btn btn-primary">Edit</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="OnDeleting" CssClass="btn btn-primary">Delete</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="OnCancel" Visible="false" CssClass="btn btn-primary">Cancel</asp:LinkButton>
                                                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="OnUpdating" Visible="false" CssClass="btn btn-primary">Update</asp:LinkButton>
                                                </td>

                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <!-- END TR-->


                                    <!-- END TR-->
                                </tbody>
                            </table>

                            <asp:Repeater runat="server" ID="Rep1">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead class="thead-primary">
                                            <tr class="text-center bg-primary text-white">
                                                <th>Product image</th>

                                                <th>Product name</th>
                                                <th>Price</th>
                                                <th>quantity</th>
                                                <th>Modify</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>

                                        <td>
                                            <img src="<%# Eval("product_img") %>" alt="<%# Eval("product_name") %>" class="img-fluid" height="100" width="100" />
                                        </td>

                                        <td class="text-uppercase text-center">
                                            <%# Eval("product_name") %>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("id") %>' Visible="false"></asp:Label>
                                        </td>

                                        <td class="text-uppercase text-center"><%# Eval("product_price") %> <i class="fa fa-inr" aria-hidden="true"></i></td>
                                        <td >
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_quantity") %>'></asp:Label>

                                            <asp:TextBox ID="TextBox9" runat="server"  Text='<%# Eval("product_quantity") %>' Visible="false" CssClass="form-control w-50"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="OnEditing" CssClass="btn btn-primary">Edit</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="OnDeleting" CssClass="btn btn-primary">Delete</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="OnCancel" Visible="false" CssClass="btn btn-primary">Cancel</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="OnUpdating" Visible="false" CssClass="btn btn-primary">Update</asp:LinkButton>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                            </table>
                                </FooterTemplate>
                            </asp:Repeater>

                            <!-- END TR-->


                            <!-- END TR-->

                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row ">

                        <div class="col-lg-6 m-0 p-5">
                            <div class="mb-3">
                                <h3>Estimate shipping and tax</h3>
                                <p>Enter your destination to get a shipping estimate</p>
                                <div class="form-group">
                                    <label>Country</label>
                                    <input type="text" class="form-control text-left px-3" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label>State/Province</label>
                                    <input type="text" class="form-control text-left px-3" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label>Zip/Postal Code</label>
                                    <input type="text" class="form-control text-left px-3" placeholder="">
                                </div>
                            </div>
                            <p><a href="checkout.html" class="btn btn-primary py-3 px-4">Estimate</a></p>
                        </div>

                        <div class="col-lg-6 p-5">
                            <div class="cart-total mb-3">
                                <h3>Cart Totals</h3>
                                <p class="d-flex">
                                    <span>Subtotal</span>
                                    <span>$20.60</span>
                                </p>
                                <p class="d-flex">
                                    <span>Delivery</span>
                                    <span>$0.00</span>
                                </p>
                                <p class="d-flex">
                                    <span>Discount</span>
                                    <span>$3.00</span>
                                </p>
                                <hr>
                                <p class="d-flex total-price">
                                    <span>Total</span>
                                    <span>$17.60</span>
                                </p>
                            </div>
                            <p><a href="#" class="btn btn-primary py-3 px-4" data-toggle="modal" data-target="#mymodal">Proceed to Checkout</a></p>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <div class="modal fade" id="mymodal">
            <div class="model modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <%--  modal header--%>
                    <div class="modal-header">
                        <h4 class="modal-title">sign in</h4>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                    </div>
                    <div class="modal-body">
                        Username :<asp:TextBox ID="TextBox1" runat="server" Style="margin-left: 45px; margin-bottom: 20px"></asp:TextBox>
                        <br />
                        Password :<asp:TextBox ID="TextBox2" runat="server" Style="margin-left: 51px; margin-bottom: 20px" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="modal-footer">

                        <asp:Button ID="Button1" runat="server" Style="margin-left: 93px" Text="Submit" Width="214px" type="button" class="btn btn-primary" data-dismiss="modal" />
                        <br />
                        <p class="p-3">
                            <button type="button" class="btn btn-link" data-toggle="modal" data-target="#mymodal1">Click for sign up</button>
                        </p>
                    </div>
                </div>
            </div>

        </div>

        <%--for registeration--%>
        <div class="modal fade" id="mymodal1">
            <div class="model modal-dialog ">
                <div class="modal-content">
                    <%--  modal header--%>
                    <div class="modal-header">
                        <h4 class="modal-title">sign in</h4>
                        <button type="button" class="close" data-dismiss="modal">
                            &times;
                        </button>
                    </div>
                    <div class="modal-body">
                        <table class="table table-borderless">
                            <tr>
                                <td><b>Username</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                                <td>
                                    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox3" ForeColor="#FF5050" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Email Id</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                <td>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox4" ForeColor="#FF5050" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                    <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" EnableClientScript="False" ErrorMessage="Proper format" ForeColor="#FF5050" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                </td>

                            </tr>
                            <tr>
                                <td><b>Address</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                <td>
                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="TextBox5" runat="server" ForeColor="#FF5050"  ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Mobile No</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Number"></asp:TextBox></td>
                                <td>
                                    <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ForeColor="#FF5050" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                    <%--<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="10 digit" ForeColor="Red" MaximumValue="10" MinimumValue="10"></asp:RangeValidator>--%>
                                </td>
                            </tr>
                            <tr>
                                <td><b>Password</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox></td>
                                <td><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ForeColor="#FF5050" ErrorMessage ="RequiredFieldValidator"></asp:RequiredFieldValidator></td>--%>
                            </tr>
                            <tr>
                                <td><b>Confirm Password</b></td>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox></td>
                                <td>
                                    <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator6"  ControlToValidate="TextBox8" runat="server"  ForeColor="#FF5050" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                    <%-- <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="not match" ForeColor="Red"></asp:CompareValidator>--%>
                                </td>
                            </tr>

                        </table>

                    </div>
                    <div class="modal-footer">

                        <asp:Button ID="Button2" runat="server" Style="margin-left: 93px" Text="Submit" Width="214px" type="button" class="btn btn-primary" data-dismiss="modal" />
                        <br />

                    </div>
                </div>

            </div>
        </div>
    </form>



</asp:Content>
