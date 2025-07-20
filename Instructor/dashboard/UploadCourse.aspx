<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor/dashboard/instructorDashMasterPage.master" AutoEventWireup="true" CodeFile="UploadCourse.aspx.cs" Inherits="Instructor_dashboard_UploadCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .form-control {
      width: 26em;
    margin: 8px; 
        }

    </style>
             <div class="row justify-content-center align-items-center">
               <div class="col-lg-5" style="width: 61%;text-align: center; justify-content: center;  align-items: center; display: flex ;">
                  <div class="text-center rounded-3 bg-white shadow-sm p-5" style="    display: flex; justify-content: center;align-items: center; flex-direction: column;">
                      <asp:TextBox  ID="txtcoursename" class="form-control" placeholder="Enter Cource  Name" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rfvCoursename" runat="server"  ControlToValidate="txtcoursename"  InitialValue="" ErrorMessage="Course name is required!" ForeColor="Red"  Display="Dynamic" />
                          <div class="d-grid d-md-flex gap-4" style="    width: 25em;">   
                           <p style="color:grey">Upload Thumbnail </p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:FileUpload ID="fileuploadimg" runat="server" />
                           </div>
                                 
                      <asp:TextBox  ID="txtshortDescription" class="form-control" placeholder="Enter Short Discription" runat="server" TextMode="MultiLine"></asp:TextBox>

                        <div class="d-grid d-md-flex gap-4">
                      <asp:TextBox  ID="txtprice" class="form-control" placeholder="Enter price" runat="server" TextMode="SingleLine"  Width="11.5em"></asp:TextBox>
                      <asp:TextBox  ID="txtdiscount" class="form-control" placeholder="Enter Discount" runat="server" TextMode="SingleLine" Width="11.5em"></asp:TextBox>
                             </div>
                      <asp:TextBox  ID="txtfinalamount" class="form-control" placeholder="Enter final Amount" runat="server" TextMode="SingleLine" ></asp:TextBox>
                      <asp:TextBox  ID="txtfulldescription" class="form-control" placeholder="Enter full discription(max 200 word)" runat="server" TextMode="MultiLine"></asp:TextBox>

                      <asp:TextBox  ID="txtvidiolink" class="form-control" placeholder="Enter Cource Intro link" runat="server" TextMode="SingleLine"></asp:TextBox>
                     <asp:TextBox  ID="txtdateofcourse" class="form-control" placeholder="Enter Uploading Date" runat="server" TextMode="Date"></asp:TextBox>

                     <asp:TextBox  ID="txtduration" class="form-control" placeholder="Enter Duration Of Course" runat="server" TextMode="SingleLine"></asp:TextBox>
                     <asp:TextBox  ID="txtauthername" class="form-control" placeholder="Enter Author Name" runat="server" TextMode="SingleLine"></asp:TextBox>
                  
                      <asp:Button ID="btndatasubmit" class="btn btn-primary" runat="server" Text="submit" Width="167px" OnClick="btndatasubmit_Click" />
                     
                  </div>
               </div>
            </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

</asp:Content>

