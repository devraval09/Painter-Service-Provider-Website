<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="admin-gallery-edit.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
     <div class="container-fluid py-5">
        <div class="container py-5">
            <div class="row justify-content-center position-relative">
                <div class="col-lg-8">
                    <h1 class="text-center">Gallery Edit</h1>
                    <div class="bg-primary p-5 m-5 mb-0">
                        <form runat="server" id="form2">
                            <asp:Repeater ID="editgallery" runat="server" OnItemDataBound="editgallery_ItemDataBound">
                                <ItemTemplate>
                                      <div class="row g-3">
                                <div class="col-12">
                                    <label for="galleryImg">Select Gallery Image</label>
                                    <asp:HiddenField ID="oldimg" runat="server" Value='<%# Eval("galleryImage") %>' />
                                    <asp:FileUpload ID="galleryImg" runat="server" Style="height: 55px;" CssClass="bg-light border-0 form-control" />
                                </div>
                                <div class="col-12">
                                    <label for="galleryTitle">enter Gallery Title</label>
                                    <asp:TextBox ID="galleryTitle" runat="server" placeholder="Enter Title" Text='<%# Eval("galleryTitle") %>' Style="height: 55px;" CssClass="form-control bg-light border-0"></asp:TextBox>
                                </div>
                                <div class="col-12">
                                    <label for="painterId">Select Painter</label>
                                    <asp:DropDownList ID="painterId" runat="server" Style="height: 55px;" CssClass="bg-light border-0 form-check form-control">
                                    </asp:DropDownList>
                                </div>

                                <div class="col-12">
                                    <asp:Button ID="btnedit" runat="server" CssClass="btn btn-secondary w-100 py-3" Text="ADD" OnClick="btnedit_Click" />
                                </div>
                            </div>
                                </ItemTemplate>
                            </asp:Repeater>
                          
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

