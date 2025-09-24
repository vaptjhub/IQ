<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="projectadd.aspx.cs" Inherits="Admin_projectadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Projects</h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="dashboard.aspx">dashboard</a></li>
                        <li class="breadcrumb-item active">Add/Edit Projects</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
        <%=displaymessage %>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="one" Font-Bold="true" ForeColor="Red"></asp:ValidationSummary>
                    <div class="row gy-4">
                        <div class="col-xxl-4 col-md-6">
                                <label for="basiInput" class="form-label">Project Name *</label>
                                <asp:TextBox ID="txtprojectname" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R2" runat="server" ErrorMessage="!Project Name" ValidationGroup="one" ControlToValidate="txtprojectname" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xxl-8 col-md-10">
                            <label class="form-label">Short Description *</label>
                            <asp:TextBox ID="txtshortdescription" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="req_short" runat="server" ErrorMessage="!Short Description" ValidationGroup="one" ControlToValidate="txtshortdescription" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>

                    </div>

                    <!-- Description -->
                    <div class="row gy-4">
                        <div class="col-xxl-12 col-md-12">
                            <label class="form-label">Description </label>
                            <textarea ID="txtlognDescription" runat="server" class="ckeditor-classic"></textarea>
                            
                       </div>
                    </div>

                    <div class="row gy-4">
                        <div class="col-xxl-4 col-md-6">
                                <label class="form-label"> Project Date *</label>
                                <div class="input-group">
                                <span class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                                </span>
                                <asp:TextBox ID="txtprojectdate" data-provider="flatpickr" data-date-format="m/d/Y" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="req_pubyear" runat="server" ErrorMessage="!Date" ValidationGroup="one" ControlToValidate="txtprojectdate" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xxl-4 col-md-6">
                             <label class="form-label">Keyword</label>
                            <asp:DropDownList ID="cbokeywords" runat="server" CssClass="form-control" ValidationGroup="save">
                                <asp:ListItem>IT</asp:ListItem>
                                <asp:ListItem>Services</asp:ListItem>
                                <asp:ListItem>Security</asp:ListItem>
                                <asp:ListItem>Website</asp:ListItem>
                                <asp:ListItem>Hardware</asp:ListItem>
                                <asp:ListItem>Marketing</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqkeywords" runat="server" ErrorMessage="!Keyword" ValidationGroup="save" ControlToValidate="cbokeywords" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row gy-4">
                         <!-- Picture 1  -->
                        <div class="col-xxl-4 col-md-6">
                            <label class="form-label">Picture 1</label>
                            <div class="col-sm-2">
                            <asp:FileUpload ID="fupImage1" runat="server"  />
                                <asp:Button runat="server" OnClick="btnPreview1_Click" ID="btnPhotoPreview1" ValidationGroup="two" CausesValidation="false" Text="Upload" CssClass="btn btn-info" />
                            </div>
                            <div class="col-sm-2">
                             
                            </div>
                            <div class="col-sm-3">
                        <asp:Image runat="server" ID="ImagePreview1" Height="100px" Width="150px" />
                        <span class="help-inline"><asp:Label ID="lblimagetitle1" runat="server"></asp:Label></span>
                        </div>
                        </div>
                        
                        <!-- Picture 2  -->
                        <div class="col-xxl-4 col-md-6">
                            <label class="form-label">Picture 2</label>
                            <div class="col-sm-2">
                            <asp:FileUpload ID="fupImage2" runat="server"  />
                                </div>
                            <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnPhotoPreview2" CausesValidation="false" Text="Upload" CssClass="btn green" onclick="btnPhotoPreview2_Click" /> 
                        </div>
                            <div class="col-sm-2">
                                <asp:Image runat="server" ID="ImagePreview2" Height="100px" Width="150px" />
                                <span class="help-inline"><asp:Label ID="lblimagetitle2" runat="server"></asp:Label></span>
                        </div>
                        </div>
                        <!-- Picture 3  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="form-label">Picture 3</label>
                        <div class="col-sm-2">
                        <asp:FileUpload ID="fupImage3" runat="server"  />
                            </div>
                            <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnPhotoPreview3" CausesValidation="false" Text="Upload" CssClass="btn green" onclick="btnPhotoPreview3_Click" /> 
                                </div>
                            <div class="col-sm-2">
                        <asp:Image runat="server" ID="ImagePreview3" Height="100px" Width="150px" />
                        <span class="help-inline"><asp:Label ID="lblimagetitle3" runat="server"></asp:Label></span>
                        </div>
                        </div>
                    </div>
                    <div class="row gy-4">
                        <!-- Picture 4  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 4</label>
                        <div class="col-sm-2">
                        <asp:FileUpload ID="fupImage4" runat="server"  />
                            </div>
                            <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnPhotoPreview4" CausesValidation="false" Text="Upload" CssClass="btn green" onclick="btnPhotoPreview4_Click" /> 
                                </div>
                            <div class="col-sm-2">
                        <asp:Image runat="server" ID="ImagePreview4" Height="100px" Width="150px" />
                        <span class="help-inline"><asp:Label ID="lblimagetitle4" runat="server"></asp:Label></span>
                        </div>
                        </div>
                        <!-- Picture 5  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 5</label>
                        <div class="col-sm-2">
                        <asp:FileUpload ID="fupImage5" runat="server"  />
                            </div>
                            <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnPhotoPreview5" CausesValidation="false" Text="Upload" CssClass="btn green" onclick="btnPhotoPreview5_Click" /> 
                                </div>
                            <div class="col-sm-2">
                        <asp:Image runat="server" ID="ImagePreview5" Height="100px" Width="150px" />
                        <span class="help-inline"><asp:Label ID="lblimagetitle5" runat="server"></asp:Label></span>
                        </div>
                        </div>
                        <!-- Picture 6  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 5</label>
                        <div class="col-sm-2">
                        <asp:FileUpload ID="fupImage6" runat="server"  />
                            </div>
                            <div class="col-sm-2">
                        <asp:Button runat="server" ID="btnPhotoPreview6" CausesValidation="false" Text="Upload" CssClass="btn green" onclick="btnPhotoPreview6_Click" /> 
                                </div>
                            <div class="col-sm-2">
                        <asp:Image runat="server" ID="ImagePreview6" Height="100px" Width="150px" />
                        <span class="help-inline"><asp:Label ID="lblimagetitle6" runat="server"></asp:Label></span>
                        </div>
                        </div>
                    </div>

                        <br />
                        <div class="row gy-4">
                            <div class="col-xxl-3 col-md-6">
                            <div>

                                <asp:Button ID="btnSave" Text="Save" CssClass="btn btn-success" runat="server" onclick="btnSave_Click" ValidationGroup="one" />
                                <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn btn-default" runat="server" onclick="btnCancel_Click"/>
                                <br />
                                <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:Label>
                            </div>
                        </div>
                        </div>
                </div>
            </div>
        </div>

    <//div>
</asp:Content>

