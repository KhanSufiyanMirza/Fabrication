<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="fabricationscratch.checkout" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .row-color {
            background-color: #E7717D;
        }
    </style>
    <section>
        <div class=" container-fluid">
            <div class="row m-md-5 m-0">
                <div class="col-md-6 <%--border border-dark --%>p-3">
                    <div class="text-center text-white row-color">
                        <h4>Cart Total</h4>
                    </div>
                    <div class="m-md-3 ">
                        SubTotal<p class=" float-right">120</p>
                    </div>
                    <div class="m-md-3 ">
                        Delivery<p class="float-right">120</p>
                    </div>
                    <div class="m-md-3 ">
                        Discount<p class="float-right">120</p>
                    </div>
                    <hr class="w-100" />
                    <div class="m-md-3 ">
                        Total<p class="float-right">120</p>
                    </div>
                </div>
                <div class=" col-md-6  <%-- border border-dark--%> p-3 ">
                    <div>
                        <div class=" text-center  text-white row-color">
                            <h4>Payment Method</h4>
                        </div>
                        <div class="m-md-3 ">
                            <input type="radio">
                            <span class=" float-none">Direct Payment Method</span>
                        </div>
                    </div>


                    <div class="m-md-3 ">
                        <input type="radio">
                        <span class="  float-none">Check Payment Method</span>
                    </div>




                    <div class="m-md-3 ">
                        <input type="radio">
                        <span class="  float-none">Paypal</span>
                    </div>



                    <div class="m-md-3 ">
                        <input type="checkbox">
                        <span class=" float-none">I have read terms and conditions, i accept it</span>
                    </div>
                    <div>
                        <button type="button" class="btn btn-color text-white w-100 ">Place an order</button>
                    </div>
                </div>




            </div>
        </div>

    </section>
</asp:Content>

