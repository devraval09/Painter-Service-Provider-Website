<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="_Default" %>

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
                    <h1 class="text-center">Register</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form1">
                            <div class="row g-3">
                                <div class="col-12">
                                   <label for="name">enter Name</label> 
                                    <asp:TextBox ID="name" runat="server" placeholder="Enter username"  style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                              
                                <div class="col-12">
                                    <label for="Gender">enter Gender</label>
                                   <asp:RadioButtonList ID="genddl" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="form-control bg-light border-0">
                                       <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                       <asp:ListItem Text="Female" Value="female"></asp:ListItem>
                                       <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                   </asp:RadioButtonList>
                                    
                                                                  </div>
                                <div class="col-12">
                                    <label for="date">enter Birthdate</label>
                                    <asp:TextBox ID="date" runat="server" placeholder="birthdate" TextMode="date" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                
                                <div class="col-12">
                                    <label for="Address">enter Address</label>
                                    <asp:TextBox ID="Address" runat="server" placeholder="Enter Address" TextMode="multiline" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="City">enter City</label>
                                    <asp:TextBox ID="City" runat="server" placeholder="Enter city"  style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                 <div class="col-12">
                                     <label for="MobileNo">enter MobileNo</label>
                                    <asp:TextBox ID="MobileNo" runat="server" placeholder="Enter mobileno"  style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="Email">enter Email</label>
                                    <asp:TextBox ID="Email" runat="server" placeholder="Enter email"  TextMode="Email" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                 <div class="col-12">
                                     <label for="pass">enter Password.</label>
                                    <asp:TextBox ID="pass" runat="server" placeholder="Enter Password" TextMode="Password" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                 <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-secondary w-100 py-3" Text="submit" OnClick="btnlogin_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

