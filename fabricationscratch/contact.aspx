<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="fabricationscratch.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section style="background-image: url(images/contact.png)">
        <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
        <!--Section description-->
        <p class="text-center w-responsive mx-auto mb-5">
            Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
        a matter of hours to help you.
        </p>

        <div class="container">
            <div class="row ">
                <div class="col-md-4 col-12">

                    <form action="#">
                        <div class="form-group">
                            <label for="name"><b>Name:</b></label>
                            <input type="text" class="form-control w-50" id="name" placeholder="Enter name" name="name">
                        </div>
                        <div class="form-group">
                            <label for="email"><b>Email:</b></label>
                            <input type="email" class="form-control w-50" id="email" placeholder="Enter email" name="email">
                        </div>
                        <div class="form-group">
                            <label for="mobile"><b>Mobile:</b></label>
                            <input type="text" class="form-control w-50" id="mobile" placeholder="Enter mobile" name="mobile">
                        </div>

                        <div class="form-group">
                            <label for="message"><b>Message:</b></label>
                            <input type="text" class="form-control w-50" id="message" placeholder="Enter message" name="message">
                        </div>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

                <div class="col-md-4 col-12 ">
                    <ul class="list-unstyled mb-0">
                        <li><i class="fas fa-map-marker-alt fa-2x"></i>
                            <p>Kalamboli, Panvel,India</p>
                        </li>

                        <li><i class="fas fa-phone mt-4 fa-2x"></i>
                            <p>+0123456789</p>
                        </li>

                        <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                            <p>khansufiyanmirza@gmail.com</p>
                        </li>

                    </ul>

                </div>
                <div class="col-md-4 col-12 embed-responsive embed-responsive-16by9 ">

                    <iframe class="embed-responsive-item"
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d30641.7116519989!2d73.08311158108337!3d19.034330455912958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7e9e80f68af95%3A0x340a3e0cba35a32d!2sPriyadarshani%20Society!5e0!3m2!1sen!2sin!4v1566801191956!5m2!1sen!2sin"></iframe>

                </div>
            </div>
        </div>
    </section>
</asp:Content>



