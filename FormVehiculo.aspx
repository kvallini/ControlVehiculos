<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormVehiculo.aspx.vb" Inherits="ControlVehiculos.FormVehiculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:HiddenField ID="editando" runat="server" />

    <div class="container mt-4 d-flex justify-content-center">
        <div class="card shadow-sm border-0 w-100" style="max-width: 600px;">
            <div class="card-header bg-primary text-white text-center">
                <h4 class="mb-0">Formulario de Vehículo</h4>
            </div>

            <div class="card-body d-flex flex-column gap-3 align-items-center">

                <!-- Placa -->
                <asp:TextBox ID="txtPlaca" CssClass="form-control text-center" placeholder="Placa" runat="server" />

                <!-- Marca -->
                <asp:DropDownList ID="ddlMarca" runat="server" CssClass="form-select text-center">
                    <asp:ListItem Text="Seleccione una marca" Value="" />
                    <asp:ListItem Text="Toyota" Value="Toyota" />
                    <asp:ListItem Text="Hyundai" Value="Hyundai" />
                    <asp:ListItem Text="Kia" Value="Kia" />
                    <asp:ListItem Text="Mazda" Value="Mazda" />
                    <asp:ListItem Text="Nissan" Value="Nissan" />
                </asp:DropDownList>

                <!-- Modelo -->
                <asp:DropDownList ID="ddlModelo" runat="server" CssClass="form-select text-center">
                    <asp:ListItem Text="Seleccione un modelo" Value="" />
                    <asp:ListItem Text="Sedán" Value="Sedán" />
                    <asp:ListItem Text="SUV" Value="SUV" />
                    <asp:ListItem Text="Pick-up" Value="Pick-up" />
                    <asp:ListItem Text="Hatchback" Value="Hatchback" />
                    <asp:ListItem Text="Van" Value="Van" />
                </asp:DropDownList>

                <!-- Propietario -->
                <asp:DropDownList ID="ddlPropietario" runat="server" CssClass="form-select text-center">
                    <asp:ListItem Text="Seleccione propietario" Value="" />
                </asp:DropDownList>

                <div class="d-flex gap-2">
                    <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary fw-semibold" Text="Guardar" OnClick="btnGuardar_Click" />
                </div>

                <asp:Label ID="lblMensaje" runat="server" CssClass="fw-bold text-danger" />
            </div>
        </div>
    </div>

    <!-- Tabla Vehículos -->
    <div class="container mt-4">
        <asp:GridView ID="gvVehiculo" runat="server"
            AutoGenerateColumns="False"
            ShowHeaderWhenEmpty="True"
            EmptyDataText="No hay vehículos registrados."
            CssClass="table table-striped table-hover border"
            DataKeyNames="IdVehiculo"
            OnRowDeleting="gvVehiculo_RowDeleting"
            OnRowEditing="gvVehiculo_RowEditing"
            OnRowCancelingEdit="gvVehiculo_RowCancelingEdit"
            OnRowUpdating="gvVehiculo_RowUpdating"
            OnSelectedIndexChanged="gvVehiculo_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ControlStyle-CssClass="btn btn-outline-primary btn-sm" />
                <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-outline-secondary btn-sm" />
                <asp:BoundField DataField="IdVehiculo" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="Placa" HeaderText="Placa" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm" />
            </Columns>
        </asp:GridView>
    </div>

    <!-- Tabla Propietarios con Vehículo -->
    <div class="container mt-4">
        <h5 class="text-center fw-semibold mb-3 text-primary">Personas con vehículo asignado</h5>

        <asp:GridView ID="gvAsignados" runat="server"
            AutoGenerateColumns="False"
            ShowHeaderWhenEmpty="True"
            EmptyDataText="No hay propietarios con vehículo asignado."
            CssClass="table table-striped table-hover border"
            DataKeyNames="IdPropietario"
            OnRowEditing="gvAsignados_RowEditing"
            OnRowUpdating="gvAsignados_RowUpdating"
            OnRowCancelingEdit="gvAsignados_RowCancelingEdit"
            OnRowDeleting="gvAsignados_RowDeleting">
            <Columns>
                <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-outline-secondary btn-sm" />
                <asp:BoundField DataField="IdPropietario" HeaderText="ID" ReadOnly="True" />
                <asp:BoundField DataField="NombreCompleto" HeaderText="Propietario" ReadOnly="True" />
                <asp:BoundField DataField="Placa" HeaderText="Placa" ReadOnly="True" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" />
                <asp:BoundField DataField="Modelo" HeaderText="Modelo" />
                <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm" />
            </Columns>
        </asp:GridView>
    </div>

    <!-- SweetAlert Script -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</asp:Content>
