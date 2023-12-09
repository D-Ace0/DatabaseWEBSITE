﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="manageTasks.aspx.cs" Inherits="eLibrary.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
    <div class="row">
       <div class="col-md-5">
          <div class="card">
             <div class="card-body">
                <div class="row">
                   <div class="col">
                      <center>
                         <h4>Tasks</h4>
                      </center>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <center>
                          <img width="60" src="imgs/6194029.png" />
                      </center>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <hr>
                   </div>
                </div>
                <div class="row">
                   <div class="col-md-4">
                      <label>Task name</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="name"></asp:TextBox>
                      </div>
                   </div>
                   <div class="col-md-4">
                      <label>User ID</label>
                      <div class="form-group">
                         <div class="input-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                          
                         </div>
                      </div>
                     </div>
                      <div class="col-md-4">
                      <label>Creator</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Admin ID" ReadOnly="false"></asp:TextBox>
                      </div>
                   </div>
                   <div class="col-md-4">
                      <label>Category</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Task category" ReadOnly="false"></asp:TextBox>
                      </div>
                   </div>
                   <div class="col-md-4">
                      <label>Status</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" " ReadOnly="false"></asp:TextBox>
                      </div>
                   </div>
                   <div class="col-md-4">
                      <label>Priority</label>
                      <div class="form-group">
                         <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder=" " ReadOnly="false"></asp:TextBox>
                      </div>
                   </div>
                 <div class="col-md-4">
                     <label>Reminder</label>
                      <div class="form-group">
                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder=" " TextMode="Date"></asp:TextBox>
                       </div>
                      </div>
                   <div class="col-md-4">
                 <label>Task ID</label>
                   <div class="form-group">
                     <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder=" " ReadOnly="false"></asp:TextBox>
                    </div>
                   </div>
                      <div class="col-md-4">
                    <label>Deadline</label>
                   <div class="form-group">
                  <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder=" " TextMode="Date"></asp:TextBox>
                     </div>
                     </div>
                  </div>
                 <br />
                <div class="row">
                   <div class="col-4">
                      <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add task" OnClick="Button2_Click" />
                   </div>
                   <div class="col-4">
                      <asp:Button ID="Button4" class="btn btn-lg btn-block btn-success" runat="server" Text="Update task" OnClick="Button4_Click"/>
                   </div>

                    <div class="col-4">
                    <asp:Button ID="Button3" class="btn btn-lg btn-block btn-success" runat="server" Text="Add reminder"/>
                  </div>
                    </div>
                   <br />
                    <div class ="row">
                        <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="View status"/>
                       </div>
                       <div class="col-4">
                       <asp:Button ID="Button7" class="btn btn-lg btn-block btn-success" runat="server" Text="Finish task" OnClick="Button5_Click"/>
                       </div>
                    </div>
               
             </div>
          </div>
          <a href="homepage.aspx"> Back to Home</a><br>
          <br>
       </div>
       <div class="col-md-7">
          <div class="card">
             <div class="card-body">
                <div class="row">
                   <div class="col">
                      <center>
                         <h4>Task List</h4>
                      </center>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <hr>
                   </div>
                </div>
                <div class="row">
                   <div class="col">
                      <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                   </div>
                </div>
             </div>
          </div>
       </div>
    </div>
 </div>
</asp:Content>