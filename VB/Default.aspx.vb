Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web
Imports System.Globalization

Partial Public Class [Default]
    Inherits System.Web.UI.Page

    Protected Sub dde_Validation(ByVal sender As Object, ByVal e As ValidationEventArgs)
        Try
            If e.Value IsNot Nothing AndAlso Not String.IsNullOrEmpty(e.Value.ToString()) Then
                Convert.ToDateTime(e.Value)
            End If
        Catch e1 As FormatException
            e.IsValid = False
        End Try
    End Sub
End Class