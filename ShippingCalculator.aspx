<%@ Page Title="Shipping Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShippingCalculator.aspx.cs" Inherits="ASPNETExercises.ShippingCalculator" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div class="row">
            <div class="col-4">
                <table class="table table-bordered">
                    <tr>
                        <th><asp:Label 
                                id="lblQuantity"
                                Text="Quantity:"
                                AssociatedControlID="txtQuantity"
                                CssClass="form-label fw-bold"
                                Runat="server" />
                        </th>
                        <td>
                            <asp:TextBox 
                                id="txtQuantity"
                                CssClass="form-control"
                                type="number"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label 
                                id="lblDistance"
                                Text="Distance:"
                                AssociatedControlID="txtDistance"
                                CssClass="form-label fw-bold"
                                Runat="server" />
                        </th>
                        <td>
                            <asp:TextBox 
                                id="txtDistance"
                                CssClass="form-control"
                                type="number"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label 
                                id="lblShippingType"
                                Text="Type"
                                CssClass="form-label fw-bold"
                                Runat="server"/>
                        </td>
                        <td>
                            <asp:DropDownList 
                                id="ddlShippingType"
                                CssClass="form-select"
                                OnSelectedIndexChanged="ddlShippingType_SelectedIndexChanged"
                                AutoPostBack="true"
                                Runat="server">
                                <asp:ListItem Text="Ground" Value="ground" />
                                <asp:ListItem Text="Priority Ground" Value="priority" />
                                <asp:ListItem Text="Air" Value="air" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label 
                                id="lblShippingTypeCost"
                                Text="Shipping Type Cost:"
                                CssClass="form-label fw-bold"
                                Runat="server"/>
                        </td>
                        <td>
                            <asp:Label 
                                id="lblCalculatedShippingTypeCost"
                                Text="$0.00"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <th><asp:Label 
                                id="lblShippingCost"
                                Text="Shipping Cost:"
                                CssClass="form-label fw-bold"
                                Runat="server" />
                        </th>
                        <td>
                            <asp:Label 
                                id="lblCalculatedShippingCost"
                                Text="$0.00"
                                CssClass="form-label fw-bold"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="text-center">
                            <asp:Button 
                                id="btnCalculate"
                                Text="Calculate"
                                CssClass="btn btn-primary"
                                OnClick="btnCalculate_Click"
                                runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label 
                                id="lblError"
                                CssClass="form-label fw-bold text-danger"
                                Runat="server"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </main>
</asp:Content>

