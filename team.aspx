<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-dark">The Team</h1>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Team Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h1 class="display-5">Dedicated Team Members</h1>
                <hr class="w-25 mx-auto text-primary" style="opacity: 1;">
            </div>
            <div class="row g-3">
                <asp:Repeater ID="rptr" runat="server">
                        <ItemTemplate>

                              <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <img class="img-fluid w-100" src="photos/painters/<%# Eval("painterImage") %>" alt="">
                        <div class="team-text">
                            
                            <div class="mt-auto mb-3">
                                <h4 class="mb-1"><%# Eval("painterName") %></h4>
                                <span class="text-uppercase">Call : <%# Eval("painterContectNo") %></span>
                            </div>
                        </div>
                    </div>
                </div>



                        </ItemTemplate>

                </asp:Repeater> 
              

            </div>
        </div>
    </div>
    <!-- Team End -->


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

