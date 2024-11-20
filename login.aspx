<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">

    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Login</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form1">
                            <div class="row g-3">
                                <div class="col-12">
                                    <fieldset>
                                    <label for="email">enter Email</label>
                                    <asp:TextBox ID="txtemail" runat="server" placeholder="Enter Email" TextMode="Email" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="pass">enter Password</label>
                                    <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Password" TextMode="Password" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                 <asp:Button ID="btnlogin" runat="server" CssClass="btn btn-secondary w-100 py-3" Text="Login" OnClick="btnlogin_Click" />
                                </div>
                            </div>
                            <p>
                                <asp:Label ID="lblmsg" runat="server" />
                            </p>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

