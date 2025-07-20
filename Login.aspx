<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="row justify-content-center align-items-center">
               <div class="col-lg-5">
                  <div class="h5 text-muted text-uppercase">Log in to <span class="text-primary">Edotree</span></div>
                  <div class="fw-bold display-5 py-2 text-black mb-2">Connect with the best professionals</div>
                  <p class="lead text-dark-50 mb-0">Learn from expert professionals and<br> join
                     the largest online community for creatives.
                  </p>
               </div>
               <div class="col-lg-5">
                  <div class="text-center rounded-3 bg-white shadow-sm p-5">
                     <div class="d-grid gap-3 mb-2">
                       
                         <asp:TextBox ID="txtemail"  class="form-control"  runat="server"  placeholder="Enter Email" ></asp:TextBox>
                          <asp:TextBox ID="txtpass"  class="form-control"  runat="server"  TextMode="Password"  placeholder="Enter Password" ></asp:TextBox>
                 
                        <div class="d-flex justify-content-between">
                           <div class="mb-0 form-check">
                              <input type="checkbox" class="form-check-input" id="exampleCheck1">
                              <label class="form-check-label small text-muted" for="exampleCheck1">Remember me</label>
                           </div>
                           <div>
                              <a href="forgot.html" class="text-mdinfo small">Forgot password?</a>
                           </div>
                        </div>
                         <asp:Button ID="Button1" runat="server"  class="btn btn-primary"  Text="Sign In" OnClick="Button1_Click1" />
                       
                     </div>
                     <p class="text-muted mt-3 mb-0">Don’t have an account? <a href="signup.html" class="text-mdinfo">Sign Up</a></p>
                  </div>
               </div>
            </div>

</asp:Content>

