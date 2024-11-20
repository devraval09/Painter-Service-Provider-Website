<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <style>
        input[type="radio"]{
            margin-right:10px;
            margin-left:10px;
        }
    </style>
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Book Painter</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form3">
                            <div class="row g-3">   
                            <div class="col-12">
                                    <label for="painterId">Select Painter</label>
                                    <asp:DropDownList  ID="painterId" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-check form-control">

                                    </asp:DropDownList>
                                </div>

                               <div class="col-12">
                                    <label for="birthdate">enter bookingdate</label>
                                    <asp:TextBox ID="birthdate" runat="server" placeholder="birthdate" TextMode="date" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                 <div class="col-12">
                                     <label for="squrefit">enter squrefit</label>
                                    <asp:TextBox ID="remark" runat="server" placeholder="Enter squrefit"  style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="btnbooking" runat="server" CssClass="btn btn-secondary w-100 py-3" Text="submit" OnClick="btnbooking_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>  

</asp:Content>

