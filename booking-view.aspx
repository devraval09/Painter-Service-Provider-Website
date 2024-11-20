<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="booking-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center"> Booking View</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="f3">
                         <asp:Repeater ID="bookingRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>User Id</th>
                                    <th>Painter Id</th>
                                    <th>Booking Date</th>
                                     <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                </HeaderTemplate>
                            <ItemTemplate>
                                 <tr>
                                <td><%# Eval("bookingId")%></td>
                                <td><%# Eval("bookingUserId") %></td>
                                <td><%# Eval("painterId") %></td>
                                <td><%# Eval("birthdate") %></td>
                                <td>
                                    <asp:Button ID="del" runat="server" OnClick="del_Click" CommandArgument='<%# Eval("bookingId") %>' Text="DELETE" CssClass="btn btn-danger" />
                                </td>
                                 </tr>
                                 </ItemTemplate>
                             <FooterTemplate>
                            </tbody>
                        </table>
                                 </FooterTemplate>
                            </asp:Repeater>
                             </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

