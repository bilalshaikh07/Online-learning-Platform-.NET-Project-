<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserPasswordChange.aspx.cs" Inherits="User_UserPasswordChange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="card">
          <div class="card-header bg-primary text-white text-center">
            <h3>Change Password</h3>
          </div>
          <div class="card-body">
            <form>
              <!-- Old Password Field -->
              <div class="mb-3">
                <label for="oldPassword" class="form-label">Old Password</label>
                  <br />
                  <asp:TextBox ID="oldPassword" runat="server" placeholder="Enter your old password" required ></asp:TextBox>
              </div>
              
              <!-- New Password Field -->
              <div class="mb-3">
                <label for="newPassword" class="form-label">New Password</label>
                  <br />
                  <asp:TextBox ID="newPassword" runat="server" placeholder="Enter your new password" required TextMode="Password"></asp:TextBox>

              </div>
              
              <!-- Retype New Password Field -->
              <div class="mb-3">
                <label for="retypePassword" class="form-label">Retype New Password</label>
                  <br />
                  <asp:TextBox ID="retypePassword" runat="server" placeholder="Retype your new password" required TextMode="Password"></asp:TextBox>

              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="retypePassword" ControlToValidate="newPassword" ErrorMessage="NEW PASSWORD ARE NOT SAME !!" Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:CompareValidator>

                  <br />
                  <br />
                  <asp:Label ID="lblChangemsg" runat="server" ForeColor="#FF3300"></asp:Label>

              </div>
              
              <!-- Submit Button -->
              <div class="d-grid gap-2">
                  <asp:Button type="submit" class="btn btn-primary" ID="btnchangepass" runat="server" Text="Change Password" OnClick="btnchangepass_Click" />
              </div>
            </form>
          </div>
        </div>


  <!-- Bootstrap JS and dependencies -->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>

</asp:Content>

