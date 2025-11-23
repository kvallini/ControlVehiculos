<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Home.aspx.vb" Inherits="ControlVehiculos.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="card shadow-sm border-2" style="background-color:#E1EEFF;">
    <div class="card-header text-white" style="background-color:#03AFF3;">
                <h4 class="mb-0">Bienvenida</h4>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label class="form-label fw-bold text-pink">Usuario:</label>
                    <asp:Label ID="lblUsuario" runat="server" CssClass="form-control-plaintext text-dark fw-semibold" />
                </div>
                <div class="mb-3">
                    <label class="form-label fw-bold text-pink">Email:</label>
                    <asp:Label ID="lblEmail" runat="server" CssClass="form-control-plaintext text-dark fw-semibold" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>