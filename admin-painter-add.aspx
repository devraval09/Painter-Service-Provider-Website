<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin-painter-add.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
      <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Painter Add</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form1">
                            <div class="row g-3">
                                <div class="col-12">
                                    <label for="painterName">Select Painter Name</label>
                                    <asp:TextBox ID="painterName" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                </div>
                                <div class="col-12">
                                    <label for="painterRate">enter Painter Rate</label>
                                    <asp:TextBox ID="painterRate" runat="server" placeholder="Enter Title" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="painterImg">Select Painter Image</label>
                                    <asp:FileUpload ID="painterImg" runat="server" style="height: 55px;" CssClass="bg-light border-0 form-check form-control"></asp:FileUpload>
                                </div>
                                 <div class="col-12">
                                    <label for="PainterCity">Select Painter City</label>
                                    <asp:TextBox ID="PainterCity" runat="server" style="height: 55px;" placeholder="Enter City" CssClass="bg-light border-0 form-check form-control"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="painterArea">enter Painter Area</label>
                                    <asp:TextBox ID="painterArea" runat="server" placeholder="Enter Area" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="painterAddress">enter Painter Address</label>
                                    <asp:TextBox ID="painterAddress" runat="server" placeholder="Enter Address" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                              
                                <div class="col-12">
                                    <label for="painterno">enter Painter Contect No</label>
                                    <asp:TextBox ID="painterno" runat="server" placeholder="Enter Title" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>

                                 <div class="col-12">
                                    <label for="painterno">enter Painter Build Area</label>
                                    <asp:TextBox ID="buildArea" runat="server" placeholder="Enter Builder Area" style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>

                                <div class="col-12">
                                 <asp:Button ID="btnadd" runat="server" CssClass="btn btn-secondary w-100 py-3" Text="ADD" OnClick="btnadd_Click" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

