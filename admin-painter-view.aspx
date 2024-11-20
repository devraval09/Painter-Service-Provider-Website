<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin-painter-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-12">
                    <h1 class="text-center">painter View</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="f2">
                        <asp:Repeater ID="painterRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Price</th>
                                    <th>Image</th>
                                    <th>City</th>
                                    <th>Area</th>
                                    <th>Address</th>
                                    <th>ContectNo</th>
                                    <th>BuildArea</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                               </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                               
                                 <td><%# Eval("painterId") %></td>
                                 <td><%# Eval( "painterName") %></td>
                                 <td><%# Eval("painterPrice") %></td>
                                 <td>
                                     <img src="photos/painters/<%# Eval("painterImage") %>" height="120px" width="120px" />
                                 </td>
                                 <td><%# Eval("painterCity") %></td>
                                 <td><%# Eval("painterArea") %></td>
                                 <td><%# Eval("painterAddress") %></td>
                                 <td><%# Eval("painterContectNo") %></td>
                                 <td><%# Eval("painterBuildArea") %></td>
                                     <td>
                                       <asp:Button ID="del" runat="server" OnClick="del_Click" CommandArgument='<%# Eval("painterId") %>' Text="DELETE" CssClass="btn btn-danger" />
                                       <a href="admin-painter-edit.aspx?pid=<%# Eval("painterId") %>" class="btn btn-warning">Edit</a>
                                     
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

