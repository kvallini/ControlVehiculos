Public Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then

            Dim Usuario As Usuario = TryCast(Session("Usuario"), Usuario)

            If Usuario Is Nothing Then
                Response.Redirect("Login.aspx")
                Return
            End If

            lblUsuario.Text = "Bienvenido, " & Usuario.NombreUsuario
            lblEmail.Text = Usuario.Email

        End If
    End Sub


End Class