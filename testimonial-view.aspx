<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="testimonial-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Testimonial  View</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <asp:Repeater ID="testimonialRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>Testimonial Id</th>
                                    <th>Testimonial Comment</th>
                                    <th>Testimonial Star</th>
                                    <th>User Id</th>
                                    <th>painter Id</th>
                                </tr>
                            </thead>
                            <tbody>
                                </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                <td><%# Eval("testimonialId") %></td>
                                <td><%# Eval("testimonialComment") %></td>
                                <td><%# Eval("userId") %></td>
                                <td><%# Eval("painterId") %></td>
                                </tr>
                                </ItemTemplate>
                             <FooterTemplate>
                            </tbody>
                        </table>
                                 </FooterTemplate>
                            </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

