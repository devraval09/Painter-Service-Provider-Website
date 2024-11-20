<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    
        
     <div class="container-fluid bg-primary py-5 bg-hero" style="margin-bottom: 90px;">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h1 class="display-5">Gallary</h1>
                <hr class="w-25 mx-auto text-primary" style="opacity: 1;">
            </div>
         </div>
     <div class="row g-3">
                  
      <asp:Repeater ID="rptr1" runat="server">
                        <ItemTemplate>
                <div class="col-lg-4 col-md-6">
                    <div class="team-item">
                        <img class="img-fluid w-100" src="photos/gallarys/<%# Eval("galleryImage") %>" alt="">
                        
                    </div>
                </div>
                             
                             </ItemTemplate>

                </asp:Repeater>
          </div>
            
</asp:Content>

