<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.7.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to create ASPxDropDownEdit with a calendar and a time editor in DropDownWindowTemplate</title>
    <script src="JavaScript.js"></script>
    <style>
        .table{
            width: 100%;
            margin: 0 10px 15px;
        }
        .buttons{
            width: 100%;
            text-align: center;
            padding: 10px 0 10px;
            border-top: 1px solid #d6d6d6;
            background-color: #ededed;
        }
        .buttons *{
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxDropDownEdit OnValidation="dde_Validation" ID="dde" ClientInstanceName="dde" runat="server">
            <ValidationSettings ErrorTextPosition="Right" ErrorDisplayMode="ImageWithTooltip">
                <RequiredField IsRequired="true" />
            </ValidationSettings>
            <ClientSideEvents Validation="onDateValidation" DropDown="onDropDownOpen" />
            <DropDownWindowTemplate>
                <dx:ASPxCalendar ID="calendar" ClientInstanceName="calendar" runat="server">
                    <ValidationSettings ErrorTextPosition="Bottom" ErrorDisplayMode="ImageWithTooltip">
                        <RequiredField IsRequired="true" />
                    </ValidationSettings>
                </dx:ASPxCalendar>
                <table class="table">
                    <tr>
                        <td>
                            <dx:ASPxLabel AssociatedControlID="comboBoxOfHour" Text="Hours:" runat="server">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                            <dx:ASPxLabel AssociatedControlID="comboBoxOfMinute" Text="Minutes:" runat="server">
                            </dx:ASPxLabel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxComboBox ID="comboBoxOfHour" ClientInstanceName="comboBoxOfHour" AutoPostBack="false"
                                runat="server" Width="90">
                                <ValidationSettings ErrorTextPosition="Right" ErrorDisplayMode="ImageWithTooltip">
                                    <RequiredField IsRequired="true" />
                                </ValidationSettings>
                                <Items>
                                    <dx:ListEditItem Text="8" Value="8" />
                                    <dx:ListEditItem Text="9" Value="9" />
                                    <dx:ListEditItem Text="10" Value="10" />
                                    <dx:ListEditItem Text="11" Value="11" />
                                    <dx:ListEditItem Text="12" Value="12" />
                                    <dx:ListEditItem Text="13" Value="13" />
                                    <dx:ListEditItem Text="14" Value="14" />
                                    <dx:ListEditItem Text="15" Value="15" />
                                    <dx:ListEditItem Text="16" Value="16" />
                                    <dx:ListEditItem Text="17" Value="17" />
                                    <dx:ListEditItem Text="18" Value="18" />
                                    <dx:ListEditItem Text="19" Value="19" />
                                    <dx:ListEditItem Text="20" Value="20" />
                                </Items>
                            </dx:ASPxComboBox>
                        </td>
                        <td>
                            <dx:ASPxComboBox ID="comboBoxOfMinute" ClientInstanceName="comboBoxOfMinute" AutoPostBack="false"
                                runat="server" Width="90">
                                <ValidationSettings ErrorTextPosition="Right" ErrorDisplayMode="ImageWithTooltip">
                                    <RequiredField IsRequired="true" />
                                </ValidationSettings>
                                <Items>
                                    <dx:ListEditItem Text="00" Value="00" />
                                    <dx:ListEditItem Text="15" Value="15" />
                                    <dx:ListEditItem Text="30" Value="30" />
                                    <dx:ListEditItem Text="45" Value="45" />
                                </Items>
                            </dx:ASPxComboBox>
                        </td>
                    </tr>
                </table>
                <div class="buttons">
                    <dx:ASPxButton ID="okButton" Text="Ok" ClientInstanceName="okButton" AutoPostBack="false"
                        runat="server" Width="60">
                        <ClientSideEvents Click="onClickOkButton" />
                    </dx:ASPxButton>
                    <dx:ASPxButton ID="cancelButton" ClientInstanceName="cancelButton" AutoPostBack="false" Text="Cancel"
                        runat="server" Width="60">
                        <ClientSideEvents Click="onClickCancelButton" />
                    </dx:ASPxButton>
                </div>
            </DropDownWindowTemplate>
        </dx:ASPxDropDownEdit>
        <br />
        <dx:ASPxButton Text="Post Back" ID="pb" runat="server"></dx:ASPxButton>
    </div>
    </form>
</body>
</html>
