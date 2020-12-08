<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SavingDataWithStoredprocedures.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"/>
</head>
<body style="background: linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);">
    <form id="form1" runat="server">
        
        <div class="container" style="margin: 0 auto; padding: 10%;">
            
            <div class="card" style="background-color: #75A8C6; border: groove; border-radius: 15px;">
                
                <div class="card-body">

                    <!--Applicant box-->
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Name</span>
                        </div>
                        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Applicant's name" runat="server"></asp:TextBox>
                    </div>

                    <!--Dept box-->
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon2">Department</span>
                        </div>
                        <asp:TextBox ID="TextBox2" class="form-control" placeholder="Department's name" runat="server"></asp:TextBox>
                    </div>

                    <!--Gender box-->
                    <div class="Malegender">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <asp:RadioButton ID="RadioButton1" runat="server" />
                                </div>
                            </div>
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" Text="Male" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <div class="Femalegender">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">
                                    <asp:RadioButton ID="RadioButton2"  runat="server" />
                                </div>
                            </div>
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" Text="Female" Enabled="False"></asp:TextBox>
                        </div>
                    </div>

                    <!--Alert-->
                    
                        <asp:Label ID="Label1" runat="server" class="alert alert-primary" role="alert" Text="Label">This is a primary alert—check it out!</asp:Label>
                    

                <!--Submit button-->
                    <div class="but">
                        <asp:Button ID="Button1" class="btn btn-success"  runat="server" Text="Submit" OnClick="Button1_Click" ClientClick ="alertme();" OnClientClick="swal(&quot;Good job!&quot;, &quot;You clicked the wrong button!&quot;, &quot;info&quot;);" />
                    </div>

    

                </div>
            </div>
        </div>
  
    </form>
</body>
</html>
