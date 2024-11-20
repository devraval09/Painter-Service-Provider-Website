<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">

    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-dark">Contact Us</h1>
                    <div class="pt-2">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h1 class="display-5">Please Feel Free To Contact Us</h1>
                <hr class="w-25 mx-auto text-primary" style="opacity: 1;">
            </div>
            <div class="row g-3 mb-5">
                <div class="col-lg-4 col-md-6 pt-5">
                    <div class="contact-item d-flex flex-column align-items-center justify-content-center text-center pb-5">
                        <div class="contact-icon p-3">
                            <div><i class="fa fa-2x fa-map-marker-alt"></i></div>
                        </div>
                        <h4 class="mt-5">Ahemdabad, Gujarat, INDIA</h4>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 pt-5">
                    <div class="contact-item d-flex flex-column align-items-center justify-content-center text-center pb-5">
                        <div class="contact-icon p-3">
                            <div><i class="fa fa-2x fa-phone"></i></div>
                        </div>
                        <h4 class="mt-5">+91 6358173971</h4>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 pt-5">
                    <div class="contact-item d-flex flex-column align-items-center justify-content-center text-center pb-5">
                        <div class="contact-icon p-3">
                            <div><i class="fa fa-2x fa-envelope-open"></i></div>
                        </div>
                        <h4 class="mt-5">painter@gmail.com</h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        <iframe class="position-relative w-100 h-100"
                            src="https://www.google.co.in/maps/place/Asian+Paints+Colourideas+-+Malveya+Sales/@23.0200241,72.4910657,15z/data=!3m1!5s0x395e9b2c35d3cfa1:0x1b35e48f8f8057c7!4m10!1m2!2m1!1spainter+near+Star+Bazaar,+BRTS+Corridor,+Satellite,+Ahmedabad,+Gujarat!3m6!1s0x395e9b7376031337:0x7f51cd60aeed0c01!8m2!3d23.0200241!4d72.5090901!15sCkZwYWludGVyIG5lYXIgU3RhciBCYXphYXIsIEJSVFMgQ29ycmlkb3IsIFNhdGVsbGl0ZSwgQWhtZWRhYmFkLCBHdWphcmF0WkQiQnBhaW50ZXIgbmVhciBzdGFyIGJhemFhciBicnRzIGNvcnJpZG9yIHNhdGVsbGl0ZSBhaG1lZGFiYWQgZ3VqYXJhdJIBC3BhaW50X3N0b3JlmgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVU53YW1OeVgyOW5SUkFC4AEA!16s%2Fg%2F11fj5frs_8?entry=ttu"
                            frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="f1">
                            <div class="row g-3">

                                <div class="col-12 col-sm-6">
                                     <label for="Name">enter Name</label>
                                    <asp:TextBox ID="Name" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                </div>
                                <div class="col-12 col-sm-6">
                                     <label for="Email">enter Email</label>
                                    <asp:TextBox ID="Email" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                </div>
                                <div class="col-12">
                                     <label for="Subject">enter Subject</label>
                                    <asp:TextBox ID="Subject" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                    
                                </div>
                                <div class="col-12">
                                    <label for="Massage">enter Massage</label>
                                    <asp:TextBox ID="Massage" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-control"  TextMode="MultiLine"/>
                                    
                                </div>
                                <div class="col-12">
                                  <asp:Button ID="Sand" runat="server" style="height: 55px;" CssClass="btn btn-secondary w-100 py-3" OnClick="Sand_Click" Text="Sand Massage:"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


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
    <!-- Call To Action Start -
</asp:Content>

