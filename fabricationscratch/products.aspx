<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="fabricationscratch.products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .pstyle{
            font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif;
            font-size:20px;
        }

    </style>

    <section style="background-color:#C2CAD0" class="m-0">
       
        <div class="container-fluid ">
            <div class="row  align-items-center" >
          <%--   <div  w-100 ">--%>
                 <div class=" col-6 pstyle text-white text-center   p-2">
                     <p  >
                        We keep moving forward, opening new doors,<br /> and doing new things, because we're curious <br />and curiosity keeps leading us down new paths.
                     </p>
                    
                     For <b><i>custom design </i></b>
                    
                    
                     <br />
                     <a href="contact.aspx" class="text-white btn btn-primary btn-lg"  data-toggle="modal" data-target="#mymodal"> <b>Click Here..</b></a>
                 </div>
                 <div class="col-6" >
                      <img   class="d-block w-50 float-right p-0 rounded-circle" style="height:300px;width:800px" src="images/door_3.jpg" />
                 </div>
               

        <%--</div>--%>
            </div>
            
    </div>
    </section>
     
    
    <section>
        <form action="#">

            <div>


                <div class="modal fade" id="mymodal">
                    <div class="model modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <%--  modal header--%>
                            <div class="modal-header  text-white text-center form-group bg-danger">

                                <h4 class="modal-title text-capitalize ">Custom Design</h4>
                                <button type="button" class="close" data-dismiss="modal">
                                    &times;
                                </button>
                            </div>
                            <div class="modal-body form-group">
                                <label for="Username">Username:</label>
                                <input type="text" class="form-control" id="username1" placeholder="Enter username" name="username">
                            </div>
                            <div class="modal-body form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                            </div>
                            <div class="modal-body form-group">
                                <label for="email">Mobile:</label>
                                <input type="text" class="form-control" id="mobile" placeholder="Enter mobile" name="mobile">
                            </div>
                            <div class="modal-body form-group">
                                <label for="message">Mesaage:</label>
                                <input type="text" class="form-control" id="message" placeholder="Enter message" name="message">
                            </div>

                            <div class="modal-footer ">

                                <button style="margin-left: 93px" type="button" class="btn btn-primary text-white" data-dismiss="modal">Submit</button>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </section>







     <section>
       <h1 class="text-dark text-center">Let's Open Doors......</h1> 
        </section>
    <section>
        <div class="container">
            <div class="row align-items-center">
                <asp:Repeater runat="server" ID="rep">
                    <ItemTemplate>
                        <div class="col-lg-3 col-sm-6  p-md-3 p-2 text-center">
                            <div>
                                <div>
                                    <img style="height: 250px; width: 250px" src="../<%# Eval("product_img") %>" />
                                </div>
                                <p class="text-center m-0">
                                    <%# Eval("product_desc") %>
                                <p class="text-center m-0">
                                    <b><%# Eval("product_name") %></b>
                                </p>
                                <p class="text-center text-success m-0">
                                    $<%# Convert.ToInt32(Eval("product_price").ToString()) %>
                                </p>
                                <p>
                                    <a role="button " class="btn btn-warning btn-block p-2" href="add_cookies.aspx?id=<%# Eval("product_id") %>">Add to cart</a>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>



            </div>
        </div>

    </section>

</asp:Content>

