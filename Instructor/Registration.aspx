<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Instructor_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        input {
            margin:9px; 
        }
    </style>

     <div class="row justify-content-center align-items-center">
               <div class="col-lg-5">
                  <div class="h5 text-muted text-uppercase">Sign up to <span class="text-primary">Edotree</span></div>
                  <div class="fw-bold display-5 py-2 text-black mb-2">Connect with the best professionals</div>
                  <p class="lead text-dark-50 mb-0">Learn from expert professionals and<br> join
                     the largest online community for creatives.
                  </p>
               </div>
               <div class="col-lg-5">
                  <div class="text-center rounded-3 bg-white shadow-sm p-5">
                    
                        <div class="d-grid d-md-flex gap-3">
                            <asp:TextBox ID="txtfname"  class="form-control"  runat="server"  placeholder="Enter First Name"></asp:TextBox>
                    
                            <asp:TextBox ID="txtlname"  class="form-control"  runat="server"  placeholder="Enter Last Name"></asp:TextBox>
                          
                        </div>
                             <asp:TextBox ID="txtphone"  class="form-control"  runat="server"  placeholder="Enter Mobile No" MaxLength="10"></asp:TextBox>
                            <asp:TextBox ID="txtDistrict"  class="form-control"  runat="server"  placeholder="Enter Your District"></asp:TextBox>
                            <asp:TextBox ID="txtState"  class="form-control"  runat="server"  placeholder="Enter Your State"></asp:TextBox>
                            <asp:TextBox ID="txtEducation"  class="form-control"  runat="server"  placeholder="Enter Heigher Education"></asp:TextBox>
                            <asp:TextBox ID="txtExperience"  class="form-control"  runat="server"  placeholder="Enter Experience"></asp:TextBox>
                            <asp:TextBox ID="txtEmail"  class="form-control"  runat="server"  placeholder="Enter Email"></asp:TextBox>
                            <asp:TextBox ID="txtPassword"  class="form-control"  runat="server"  placeholder="Enter password" TextMode="Password"></asp:TextBox>
                        <div class="form-check text-start">
                           <input type="checkbox" class="form-check-input" id="exampleCheck1">
                           <label class="form-check-label small text-muted" for="exampleCheck1">I agree to the <a href="terms-and-conditions.html" class="text-mdinfo">Terms & Conditions</a></label>
                        </div>
                       
                      <asp:Button ID="btnRestration" class="btn btn-primary" runat="server" Text="Sign Up" OnClick="btnRestration_Click" />
                  
                     <p class="text-muted mt-3 mb-0">Already have an account? <a href="Login.aspx" class="text-mdinfo">Sign In</a></p>
                  </div>
               </div>
            </div>

</asp:Content>

