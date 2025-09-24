<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="blogsadd.aspx.cs" Inherits="Admin_blogsadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Blogs</h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="dashboard.aspx">dashboard</a></li>
                        <li class="breadcrumb-item active">Add/Edit Blogs</li>
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
                                <label for="basiInput" class="form-label">Blogs Title *</label>
                                <asp:TextBox ID="txttitle" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="R2" runat="server" ErrorMessage="!Title" ValidationGroup="one" ControlToValidate="txttitle" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xxl-4 col-md-6">
                                <label for="basiInput" class="form-label">Blogs Customize URL Title</label>
                                <asp:TextBox ID="txtblogscustomtitle" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqcustom" runat="server" ErrorMessage="!Customize Title" ValidationGroup="one" ControlToValidate="txtblogscustomtitle" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
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
                    <br />
                    <div class="row gy-4">
                        <div class="col-xxl-4 col-md-6">
                                <label class="form-label"> Date *</label>
                                <div class="input-group">
                                <span class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                                </span>
                                <asp:TextBox ID="txtnewsdate" data-provider="flatpickr" data-date-format="m/d/Y" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="req_pubyear" runat="server" ErrorMessage="!Date" ValidationGroup="one" ControlToValidate="txtnewsdate" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xxl-4 col-md-6">
                             <label class="form-label">Keywords</label>
                            <asp:TextBox ID="txtkeywords" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row gy-4">
                        <div class="col-xxl-4 col-md-6">
                                <label class="form-label"> Page Title TAG</label>
                                <asp:TextBox ID="txtpagetitletag" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xxl-4 col-md-6">
                             <label class="form-label">Page Description TAG</label>
                            <asp:TextBox ID="txtpagedescriptiontag" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xxl-4 col-md-6">
                             <label class="form-label">Page Keywords TAG</label>
                            <asp:TextBox ID="txtpagekeywordtag" runat="server" ValidationGroup="save" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <br /><br />
                    <div class="row gy-4">
                         <!-- Picture 1  -->
                        <div class="col-xxl-4 col-md-6">
                            <label class="form-label">Picture 1</label>
                            <table>
                                    <tr>
                                        <td><asp:FileUpload ID="fupImage1" runat="server"  /></td>
                                        <td><asp:Button runat="server" OnClick="btnPreview1_Click" ID="btnPhotoPreview1" ValidationGroup="two" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" /></td>
                                    </tr>
                                </table>
                            <asp:TextBox ID="txtblogsimage1tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                            <asp:Image runat="server" ID="ImagePreview1" Height="100px" Width="150px" />
                            <span class="help-inline"><asp:Label ID="lblimagetitle1" runat="server"></asp:Label></span>
                        </div>
                        
                        <!-- Picture 2  -->
                        <div class="col-xxl-4 col-md-6">
                            <label class="form-label">Picture 2</label>
                            <table>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="fupImage2" runat="server"  />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btnPhotoPreview2" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" onclick="btnPhotoPreview2_Click" /> 
                                        </td>
                                    </tr>
                                </table>
                            <asp:TextBox ID="txtblogsimage2tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                            <asp:Image runat="server" ID="ImagePreview2" Height="100px" Width="150px" />
                            <span class="help-inline"><asp:Label ID="lblimagetitle2" runat="server"></asp:Label></span>
                        </div>
                        <!-- Picture 3  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="form-label">Picture 3</label>
                            <table>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="fupImage3" runat="server"  />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btnPhotoPreview3" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" onclick="btnPhotoPreview3_Click" /> 
                                        </td>
                                    </tr>
                                </table>
                            <asp:TextBox ID="txtblogsimage3tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                            <asp:Image runat="server" ID="ImagePreview3" Height="100px" Width="150px" />
                            <span class="help-inline"><asp:Label ID="lblimagetitle3" runat="server"></asp:Label></span>
                        </div>
                    </div>

                    <br /><br />
                    <div class="row gy-4">
                        <!-- Picture 4  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 4</label>
                            <table>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="fupImage4" runat="server"  />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btnPhotoPreview4" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" onclick="btnPhotoPreview4_Click" /> 
                                        </td>
                                    </tr>
                                </table>
                                <asp:TextBox ID="txtblogsimage4tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                                <asp:Image runat="server" ID="ImagePreview4" Height="100px" Width="150px" />
                                <span class="help-inline"><asp:Label ID="lblimagetitle4" runat="server"></asp:Label></span>
                        </div>
                        <!-- Picture 5  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 5</label>
                            <table>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="fupImage5" runat="server"  />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btnPhotoPreview5" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" onclick="btnPhotoPreview5_Click" /> 
                                        </td>
                                    </tr>
                                </table>
                            <asp:TextBox ID="txtblogsimage5tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                            <asp:Image runat="server" ID="ImagePreview5" Height="100px" Width="150px" />
                                <span class="help-inline"><asp:Label ID="lblimagetitle5" runat="server"></asp:Label></span>
                            
                        </div>
                        <!-- Picture 6  -->
                        <div class="col-xxl-4 col-md-6">
                        <label class="col-sm-2 control-label">Picture 6</label>
                            <table>
                                    <tr>
                                        <td>
                                            <asp:FileUpload ID="fupImage6" runat="server"  />
                                        </td>
                                        <td>
                                            <asp:Button runat="server" ID="btnPhotoPreview6" CausesValidation="false" Text="Upload" CssClass="btn btn-info btn-sm" onclick="btnPhotoPreview6_Click" /> 
                                        </td>
                                    </tr>
                                </table>
                            <asp:TextBox ID="txtblogsimage6tag" runat="server" CssClass="form-control" placeholder="Picture ALT TAG" Width="250px"></asp:TextBox>
                            <asp:Image runat="server" ID="ImagePreview6" Height="100px" Width="150px" />
                            <span class="help-inline"><asp:Label ID="lblimagetitle6" runat="server"></asp:Label></span>
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

