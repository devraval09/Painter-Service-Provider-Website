<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="user-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-12">
                    <h1 class="text-center"> User View</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <asp:Repeater ID="userRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>user Id</th>
                                    <th>User Name</th>
                                    <th>User Password</th>
                                    <th>User Nomber</th>
                                    <th>User Birthdate</th>
                                    <th>User Gender</th>
                                    <th>User Email</th>
                                    <th>User Address</th>
                                    <th>User City</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                 </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                <td><%# Eval("userId") %></td>
                                <td><%# Eval("userName") %></td>
                                <td><%# Eval("userPassword") %></td>
                                <td><%# Eval("userNomber") %></td>
                                <td><%# Eval("userBirthdate") %></td>
                                <td><%# Eval("userGender") %></td>
                                <td><%# Eval("userEmail") %></td>
                                <td><%# Eval("userAddress") %></td>
                                <td><%# Eval("userCity") %></td>
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

