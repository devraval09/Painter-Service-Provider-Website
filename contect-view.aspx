<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="contect-view.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-12">
                    <h1 class="text-center"> Contect View</h1>
                    <div class="bg-primary p-9 m-5 mb-0">
                         <form runat="server" id="f3">
                        <asp:Repeater ID="contectRepeater" runat="server">
                            <HeaderTemplate>
                        <table class="table border border-1">
                            <thead>
                                <tr>
                                    <th>Contect Id</th>
                                    <th>Contect Name</th>
                                    <th>Contect Subject</th>
                                    <th>Contect Message</th>
                                     <th>Action</th>
                                    
                                    
                                </tr>
                            </thead>
                            <tbody>
                                 </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                <td><%# Eval("ContectId") %></td>
                                <td><%# Eval("ContectName") %></td>
                                <td><%# Eval("Subject") %></td>
                                <td><%# Eval("Message") %></td>
                                <td>
                                    <asp:Button ID="del" runat="server" OnClick="del_Click"  CommandArgument='<%# Eval("ContectId") %>' Text="DELETE" CssClass="btn btn-danger" />
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

