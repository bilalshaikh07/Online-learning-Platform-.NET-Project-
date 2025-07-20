<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="AvailableCourse.aspx.cs" Inherits="User_AvailableCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="txtsearch">
    <asp:TextBox runat="server" ID="txtsearch"></asp:TextBox>
       <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
   </div>


    <asp:Panel ID="pnlavailcourse" runat="server" ScrollBars="Both">

               <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
               
           <asp:Repeater ID="Repeater1" runat="server" >
                
                       <ItemTemplate>
                    <div class="col" style="width:32%">
                     <div class="card h-100 border-0 shadow-sm rounded-3 overflow-hidden video-card-item position-relative">
       
                     <div class="card-body">
                        <h6 class="card-title pb-4 text-black mb-1">
                           <span class="bg-warning badge text-black me-2"></span><%# Eval("coursename") %></h6>
                         <div>
                             <img  src="../thumbnailImg/<%#Eval("thumnailimg")%>" alt="loading...." style="width: 149px; height: 134px;border-radius: 6%;" />
                         </div>
                        <p class="card-text mb-0">A course by </span><%# Eval("authername")%></p>
                        <div class="card-text text-muted small"> 
                            <%# Eval("description") %>
                        </div>

                     </div>
                     <div class="card-footer border-0 bg-white border-top p-3">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                           <span class="badge bg-danger text-white">SALE</span>
                           <div class="card-price text-danger"><%# Eval("discount") %> % Disc. <del class="text-black">₹ <%# Eval("price") %></del></div>
                        </div>
                        <div class="d-grid"><button class="btn btn-primary">
                           <i class="bi bi-cart-fill"></i> <%# Eval("finalamount") %> 
                           </button>
                        </div>
                     </div>
                     <a href="CourseDetails.aspx?cid=<%# Eval("cid") %>" class="stretched-link"></a>
                     
                    </div>
                          </div>
                       </ItemTemplate>
</asp:Repeater>

             
        
               </div>
              

    </asp:Panel>           



<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_classConnectionString4 %>" SelectCommand="SELECT * FROM [CourseData]"></asp:SqlDataSource>


              
</asp:Content>

