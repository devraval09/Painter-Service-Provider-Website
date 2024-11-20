<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-add.aspx.cs" Inherits="admin_gallery_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Gallery Add</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form2">
                            <div class="row g-3">
                                <div class="col-12">
                                    <label for="galleryImg">Select Gallery Image</label>
                                    <asp:FileUpload ID="galleryImg" runat="server" Style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                </div>
                                <div class="col-12">
                                    <label for="galleryTitle">enter Gallery Title</label>
                                    <asp:TextBox ID="galleryTitle" runat="server" placeholder="Enter Title" Style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="painterId">Select Painter</label>
                                    <asp:DropDownList ID="painterId" runat="server" Style="height: 55px;" CssClass="bg-light border-0 form-check form-control">
                                    </asp:DropDownList>
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

