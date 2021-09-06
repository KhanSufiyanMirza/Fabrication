<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="fabricationscratch.index" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .ope img {
            opacity: 0.7;
        }

            .ope img:hover {
                opacity: 1;
            }

        .carousel-item {
            height: 400px !important;
        }
    </style>
    <script>


        $(document).ready(function () {
            $(".img_hover").hover(function () {
                $(this).animate({
                    height: '150px',
                    width: '150px'
                },
                    function () {
                        $(this).animate({
                            height: '100px',
                            width: '100px'
                        });
                    });
            });
        });

    </script>
    <section>
        <div class="container-fluid  ">
            <!--Carousel start -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="container-fluid ">
                            <img class="d-block img-fluid w-100 " src="images/carosol.jpg" alt="First slide">
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="container-fluid ">
                            <img class="d-block w-100 " src="images/carousel_4305.png" alt="Second slide">
                        </div>
                    </div>

                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--carosal end-->

    </section>
    <section>
        <div class="container">
            <div class="row align-items-center">
                <div class=" col-12 p-md-3 p-2 text-center text-dark  ">

                    <h3>Why Should You Choose Us.........!!</h3>
                    <hr class="w-50 bg-dark" />

                </div>
            </div>
        </div>
    </section>
    <%--start--%>
    <section>

        <div class="container">

            <div class=" row   p-md-3 p-1 ope">
                <div class="col-md-4 col-12 p-3  text-center">
                    <img class="img-fluid img_hover" style="height: 100px; width: 100px" src="images/free-delivery.png" />
                    <br />
                    <p class="pt-md-3 p-1"><b>Free Delivery</b></p>

                </div>
                <div class="col-md-4 col-12 p-3 text-center ">
                    <img class="img-fluid img_hover" style="height: 100px; width: 100px" src="images/crown.png" />
                    <br />
                    <p class="pt-md-3 p-1"><b>Superior quality</b></p>
                </div>
                <div class="col-md-4  col-12 p-3  text-center">
                    <img class="img-fluid img_hover" style="height: 100px; width: 100px" src="images/customer_service.png" />
                    <br />
                    <p class="pt-md-3 p-1"><b>Support 24/7 </b></p>

                </div>




            </div>

        </div>
    </section>
    <%--end--%>
    <section>
        <div class="continer">
            <div class="row">
                <div class="pt-md-4 pb-md-3 p-2  col-12 text-center">

                    <h2 class="text-dark ">Our Categories
                        <br />
                    </h2>
                    <h5 class="text-danger">Explore Now!!</h5>
                    <hr class="w-50 bg-danger" />

                </div>
            </div>
        </div>

    </section>
    <!--category start-->


    <section>
        <div class="container">
            <div class="row align-items-center">


                <div class="col-lg-4 col-sm-6  p-md-3 p-2 text-center">
                    <div>
                        <div>
                            <img style="height: 300px; width: 300px" src="images/grill_1.jpg" />
                        </div>

                        <a class="btn btn-info text-white" href="grill.aspx">Click to explore more Grills</a>

                    </div>

                </div>

                <div class="col-lg-4 col-sm-6  p-md-3 p-2 text-center">
                    <div>
                        <div>

                            <img style="height: 300px; width: 300px" src="images/door_3.jpg" />
                        </div>
                        <a class="btn btn-info text-white" href="door.aspx">Click to explore more Doors</a>
                    </div>

                </div>

                <div class="col-lg-4 col-sm-6 col-md-12  p-md-3 p-2 text-center">
                    <div>
                        <div>


                            <img style="height: 300px; width: 300px" src="images/shed_6.jpg" />
                        </div>
                        <a class="btn btn-info text-white" href="shed.aspx">Click to explore more Sheds</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row align-items-center">


                <div class="col-lg-4 col-sm-6  p-md-3 p-2 text-center">
                    <div>
                        <div>
                            <img style="height: 300px; width: 300px" src="images/grill_1.jpg" />
                        </div>
                        <a class="btn btn-info text-white" href="grill.aspx">Click to explore more Grills</a>
                    </div>

                </div>

                <div class="col-lg-4 col-sm-6  p-md-3 p-2 text-center">
                    <div>
                        <div>

                            <img style="height: 300px; width: 300px" src="images/door_3.jpg" />
                        </div>
                        <a class="btn btn-info text-white" href="door.aspx">Click to explore more Doors</a>
                    </div>

                </div>

                <div class="col-lg-4 col-sm-6 col-md-12 p-md-3 p-2 text-center">
                    <div>
                        <div>


                            <img style="height: 300px; width: 300px" src="images/shed_6.jpg" />
                        </div>
                        <a class="btn btn-info text-white" href="shed.aspx">Click to explore more Sheds</a>
                    </div>
                </div>
            </div>
        </div>


    </section>
    <%--category end--%>

    <div class="p-3 text-center  m-3 ">

        <h2 class="text-dark">Our Products!!
            <br />
        </h2>
        <h5 class="text-danger">Come on....order</h5>
        <hr class="w-50 bg-danger" />

    </div>
    <%--purcheshind start--%>

    <section>
        <div class="container">
            <div class="row align-items-center">

                <div class="col-lg-3 col-sm-6  p-md-3 p-2 text-center">
                    <div>
                        <div>
                            <img style="height: 250px; width: 250px" src="images/door_3.jpg" />
                        </div>
                        <p class="text-center m-0">
                            Lorem Ipsum is simply dummy text.
                        <p class="text-center m-0">
                            <b>DOOR</b>
                        </p>
                        <p class="text-center text-success m-0">
                            $200
                        </p>
                        <p>
                            <button type="button " class="btn btn-info text-white btn-block p-2">Add to cart</button>
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6  p-md-3 p-2 text-center ">
                    <div>
                        <div>
                            <img style="height: 250px; width: 250px" src="images/door_3.jpg" />
                        </div>
                        <p class="text-center m-0">
                            Lorem Ipsum is simply dummy text.
                        <p class="text-center m-0">
                            <b>DOOR</b>
                        </p>
                        <p class="text-center text-success m-0">
                            $200
                        </p>
                        <p>
                            <button type="button " class="btn btn-info text-white btn-block p-2">Add to cart</button>
                        </p>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6  p-md-3 p-2 text-center  ">
                    <div>
                        <div>
                            <img style="height: 250px; width: 250px" src="images/door_3.jpg" />
                        </div>
                        <p class="text-center m-0">
                            Lorem Ipsum is simply dummy text.
                        <p class="text-center m-0">
                            <b>DOOR</b>
                        </p>
                        <p class="text-center text-success m-0">
                            $200
                        </p>
                        <p>
                                 <button type="button " class="btn btn-info text-white btn-block p-2">Add to cart</button>
                        </p>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 p-md-3 p-2 text-center">
                    <div>
                        <div>
                            <img style="height: 250px; width: 250px" src="images/door_3.jpg" />
                        </div>
                        <p class="text-center m-0">
                            Lorem Ipsum is simply dummy text.
                        <p class="text-center m-0">
                            <b>DOOR</b>
                        </p>
                        <p class="text-center text-success m-0">
                            $200
                        </p>
                        <p>
                            <button type="button " class="btn btn-info text-white btn-block p-2">Add to cart</button>
                        </p>
                    </div>

                </div>

            </div>
        </div>

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
                                    
                                 <%# Convert.ToInt32(Eval("product_quantity")) > 0 ? " <a role='button' href='addcart.aspx?id= "+Eval("product_id")+"' class='btn btn-primary btn-block p-2'>Add to cart</a>":"<a role='button' href='#' class='btn btn-danger btn-block p-2'>not available</a>" %>
                                </p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater> 



            </div>
        </div>

    </section>


    <%--purcheshind end--%>
</asp:Content>

