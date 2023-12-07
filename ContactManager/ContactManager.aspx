<%@ Page Title="Contact Manager" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactManager.aspx.cs" Inherits="ASPNETExercises.ContactManager.ContactManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <div class="row">
            <div class="col-4">
                <div class="mb-3">
                    <label class="form-label fw-bold">First Name</label>
                    <asp:TextBox 
                        id="txtFirstName"
                        CssClass="form-control"
                        Runat="server"/>
                </div>
                <div class="mb-3">
                    <label class="form-label fw-bold">Last Name</label>
                    <asp:TextBox 
                        id="txtLastName"
                        CssClass="form-control"
                        Runat="server"/>
                </div>
                <div class="mb-3">
                    <label class="form-label fw-bold">Phone Number</label>
                    <asp:TextBox 
                        id="txtPhoneNumber"
                        CssClass="form-control"
                        Runat="server"/>
                </div>
            </div>
            <div class="col-4">
                <div class="mb-3">
                    <label class="form-label fw-bold">Street</label>
                    <asp:TextBox 
                        id="txtStreet"
                        CssClass="form-control"
                        Runat="server"/>
                </div>
                <div class="mb-3">
                    <label class="form-label fw-bold">City</label>
                    <asp:TextBox 
                        id="txtCity"
                        CssClass="form-control"
                        Runat="server"/>
                </div>
                <div class="row">
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label fw-bold">Province</label>
                            <asp:TextBox 
                                id="txtState"
                                CssClass="form-control"
                                Runat="server"/>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="mb-3">
                            <label class="form-label fw-bold">Postal Code</label>
                            <asp:TextBox 
                                id="txtZip"
                                CssClass="form-control"
                                Runat="server"/>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="row">
            <div class="col-4">
                <div class="row">
                    <div class="col-4">
                        <asp:LinkButton 
                            id="btnPrevious"
                            Text="<< Previous"
                            CssClass="btn btn-danger"
                            OnClick="btnPrevious_Click"
                            runat="server" />
                    </div>
                    <div class="col-4">
                        <asp:LinkButton 
                            id="btnSave"
                            Text="Save Changes"
                            CssClass="btn btn-primary"
                            OnClick="btnSave_Click"
                            runat="server" />
                    </div>
                    <div class="col-4">
                        <asp:LinkButton 
                            id="btnNext"
                            Text="Next >>"
                            CssClass="btn btn-success"
                            OnClick="btnNext_Click"
                            runat="server" />
                    </div>
                </div>
                
            </div>
        </div>
    </main>
</asp:Content>
