<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-12">
                    <h1 class="text-center">Gallery View</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="f1">
                        <asp:Repeater ID="galleryRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Gallery Image</th>
                                    <th>Gallery Title</th>
                                    <th>Painter Name</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                 <tr>
                                    <td> <%# Eval("galleryId") %> </td>
                                    <td> 
                                        <img src="photos/gallarys/<%# Eval("galleryImage") %>" height="100px" width="100px" />
                                    </td>
                                    <td> <%# Eval("galleryTitle") %> </td>
                                    <td> <%# Eval("painterName") %> </td>
                                     <td>
                                       <asp:Button ID="del" runat="server" OnClick="del_Click" CommandArgument='<%# Eval("galleryId") %>' Text="DELETE" CssClass="btn btn-danger" />
                                       <a href="admin-gallery-edit.aspx?gid=<%# Eval("galleryId") %>" class="btn btn-warning">Edit</a>
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

