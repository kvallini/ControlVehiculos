<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="FormPersona.aspx.vb" Inherits="ControlVehiculos.FormPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:HiddenField ID="editando" runat="server" />

   <div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <div class="card">
                <div class="card-header bg-primary text-white text-center">
                    <h4 class="mb-0">Formulario de Persona</h4>
                </div>
                <div class="card-body">
                    <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Nombre" runat="server" />
                    <asp:TextBox ID="txtApellido1" CssClass="form-control mt-2" placeholder="Primer Apellido" runat="server" />
                    <asp:TextBox ID="txtApellido2" CssClass="form-control mt-2" placeholder="Segundo Apellido" runat="server" />
                    <asp:DropDownList ID="ddlNacionalidad" CssClass="form-control mt-2" runat="server">
                    <asp:ListItem Value="">-- Seleccione Nacionalidad --</asp:ListItem>
                    <asp:ListItem>Costarricense</asp:ListItem>
                    <asp:ListItem>Nicaragüense</asp:ListItem>
                    <asp:ListItem>Panameña</asp:ListItem>
                </asp:DropDownList>

                    <asp:TextBox ID="txtfechaNacimiento" CssClass="form-control mt-2" placeholder="Fecha de Nacimiento" runat="server" TextMode="Date" />
                    <asp:TextBox ID="txtTelefono" CssClass="form-control mt-2" placeholder="Teléfono" runat="server" />

                    <div class="mt-3 d-flex gap-2">
                        <asp:Button ID="btnMostrar" runat="server" CssClass="btn btn-primary" Text="Guardar" OnClick="btn_guardar" />
                        <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-outline-secondary" Text="Actualizar" OnClick="btnActualizar_Click" />
                    </div>

                    <asp:Label ID="lblMensaje" runat="server" CssClass="form-text text-danger mt-2" />
                </div>
            </div>
        </div>
    </div>
</div>

    <div class="container mt-4">
        <asp:GridView ID="gvPersonas" CssClass="table table-striped table-hover border" runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="idPersona"
    OnRowDeleting="gvPersonas_RowDeleting"
    OnRowEditing="gvPersonas_RowEditing"
    OnRowCancelingEdit="gvPersonas_RowCancelingEdit"
    OnRowUpdating="gvPersonas_RowUpdating"
    OnSelectedIndexChanged="gvPersonas_SelectedIndexChanged">
    
    <HeaderStyle CssClass="table-primary" />
    <RowStyle CssClass="align-middle" />
    
    <Columns>
        <asp:CommandField ShowSelectButton="True" 
            ButtonType="Button"
            ControlStyle-CssClass="btn btn-primary btn-sm" 
            HeaderText="Seleccionar" />
            
        <asp:CommandField ShowEditButton="True" 
            ButtonType="Button"
            ControlStyle-CssClass="btn btn-warning btn-sm" 
            HeaderText="Editar" />
            
        <asp:BoundField DataField="idPersona" HeaderText="ID" Visible="False" ReadOnly="True" SortExpression="idPersona" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
        <asp:BoundField DataField="Apellido1" HeaderText="Primer Apellido" SortExpression="Apellido1" />
        <asp:BoundField DataField="Apellido2" HeaderText="Segundo Apellido" SortExpression="Apellido2" />
        <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" SortExpression="Nacionalidad" />
        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" SortExpression="FechaNacimiento" 
                       DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="Telefono" HeaderText="Teléfono" SortExpression="Telefono" />
        
        <asp:CommandField ShowDeleteButton="True" 
            ButtonType="Button"
            ControlStyle-CssClass="btn btn-danger btn-sm" 
            HeaderText="Eliminar" />
    </Columns>
</asp:GridView>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:II-46ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:II-46ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Personas]"></asp:SqlDataSource>

    <!-- SweetAlert Script -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <style>
    .table th, .table td {
        padding: 0.75rem;
        vertical-align: middle;
    }
    .btn-sm {
        margin: 1px;
        padding: 0.25rem 0.5rem;
    }
    .table {
        margin-bottom: 1rem;
    }
</style>
   
</asp:Content>
