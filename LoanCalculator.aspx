<%@ Page Title="Loan Calculator" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoanCalculator.aspx.cs" Inherits="ASPNETExercises.LoanCalculator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div class="row">
            <div class="col-4">
                <table class="table table-bordered">
                    <tr>
                        <th>Price:</th>
                        <td>
                            <asp:TextBox 
                                id="txtPrice"
                                CssClass="form-control"
                                type="number"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Down Payment:</th>
                        <td>
                            <asp:TextBox 
                                id="txtDownPayment"
                                CssClass="form-control"
                                type="number"
                                Runat="server"/>
                        </td>
                    </tr>
                    <tr>
                        <th>Interest Rate:</th>
                        <td>
                            <asp:TextBox 
                                id="txtInterest"
                                CssClass="form-control"
                                type="number"
                                min="0"
                                step=".01"
                                Runat="server"/>
                        </td>
                    </tr>
                    <td colspan="2" class="text-center">
                        <asp:Button 
                            id="submitBtn"
                            Text="Submit"
                            CssClass="btn btn-primary"
                            OnClick="submitBtn_Click"
                            Runat="server"/>
                    </td>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <asp:ListBox 
                    id="paymentsLstBox"
                    SelectionMode="Single"
                    CssClass="form-control"
                    Width="100%"
                    Rows="5"
                    Runat="server">
                </asp:ListBox>            
            </div>
        </div>
    </main>
</asp:Content>
