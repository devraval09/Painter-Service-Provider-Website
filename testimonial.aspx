<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="testimonial.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-dark">Testimonial</h1>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    <!-- Testimonial Start -->
    <div class="container-fluid bg-primary bg-testimonial py-5" style="margin: 180px 0;">
        <div class="container py-5">
            <div class="row g-0 justify-content-end">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-4">Testimonials</h1>
                      <asp:Repeater ID="rptr2" runat="server">
                        <ItemTemplate>
                    <div class="owl-carousel testimonial-carousel">
                        <div class="testimonial-item">
                          
                            <p class="fs-4 fw-normal"><i class="fa fa-quote-left text-secondary me-3"></i><%# Eval("testimonialComment") %></p>
                            <div class="d-flex align-items-center">
                               
                                <div class="ps-3">
                                    <h3><%# Eval("userId") %></h3>
                                    <span class="text-uppercase">Profession</span>
                                </div>
                            </div>
                        </div>
     
                    </div>
                </div>
                             </ItemTemplate>

                </asp:Repeater>
            </div>
        </div>
       
    </div>
    <!-- Testimonial End -->
    <!-- Call To Action Start -->
    <div class="container-fluid bg-primary bg-call-to-action py-5" style="margin-top: 90px;">
        <div class="container py-5">
            <div class="row g-0 justify-content-start">
                <div class="col-lg-6">
                    <h1 class="display-5 mb-4">Do You Have Any Project?</h1>
                    <p class="fs-4 fw-normal">Based on your skills, determine a list of services you can offer. Few commonly provided services are speciality coating, residential or commercial painting, wallpaper designs, enhancing existing paint jobs and identifying effective painting processes for pre-designed interiors and exteriors. Ensure you have a comprehensive list of services to increase the probability of collaborating with small and large-scale customers.</p>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Call To Action Start -->
</asp:Content>

