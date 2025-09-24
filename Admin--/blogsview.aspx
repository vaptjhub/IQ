<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="blogsview.aspx.cs" Inherits="Admin_blogsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="row">
        <div class="col-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                <h4 class="mb-sm-0">Blogs</h4>
                <div class="page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item"><a href="dashboard.aspx">Dashboard</a></li>
                        <li class="breadcrumb-item active">Blogs</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <%=displaymessage  %>
    

    <div class="row">
        <div class="col-xl-12">
            <div class="card">
                <div class="card-body">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                        <table id="example" class="table table-bordered dt-responsive table-striped align-middle" style="width:100%">
                            <thead>
                                <th>S.No</th>
                                <th>Date</th>
                                <th>Blog Title</th>
                                <th>Short Description</th>
                                <th>Image</th>
                                <th><span class="label label-success">action</span></th>
                            </thead>
                        <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><% srno = srno + 1; %><% =srno %></td>
                                <td><%#Eval("blogsdate", "{0:dd/M/yyyy}")%></td>
                                <td><%# Eval("blogstitle")%></td>
                                <td><%# Eval("blogsshortdescription")%></td>
                                <td><img src='../images/blogs/thumbnail/<%# Eval("blogsimage1")%>' alt="" /></td>
                                <td>
                                    <div class="dropdown d-inline-block">
                                        <button class="btn btn-soft-secondary btn-sm dropdown" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="ri-more-fill align-middle"></i>
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-end">
                                            <li><a href="blogsadd.aspx?blogsid=<%# encriptid(Eval("blogsid").ToString()) %>" class="dropdown-item edit-item-btn"><i class="ri-pencil-fill align-bottom me-2 text-muted"></i> Edit</a></li>
                                            <li><a href="blogsview.aspx?blogsid=<%# encriptid(Eval("blogsid").ToString()) %>" onclick="if (confirm('Delete selected item?')){return true;}else{event.stopPropagation(); event.preventDefault();};" class="dropdown-item remove-item-btn" target="_blank"><i class="ri-delete-bin-fill align-bottom me-2 text-muted"></i> Delete</a></li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                        </tbody>
                        </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

