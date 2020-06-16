<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Daniloprova_exerc02.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastros Funcionarios</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <div class="container">

                <div class="text-center text-primary">
                    <h2>Cadastro de Funcionario</h2>
                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-6">
                        <label>Nome:</label>
                        <asp:RequiredFieldValidator ID="rfvnome" ControlToValidate="txtnome"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtNome" runat="server" MaxLength="70" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Endereço:</label>
                        <asp:RequiredFieldValidator ID="rfvendereco" ControlToValidate="txtendereco"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtendereco" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>


                <div class="row" style="margin-top: 15px">


                    <div class="col-md-6">
                        <label>Numero :</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtnumero"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtnumero" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Sexo:</label>
                        <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="txtSexo"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="txtSexo" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value=""></asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>


                <div class="row" style="margin-top: 15px">
                    <div class="col-md-5">
                        <label>Data_Nascimento :</label>
                        <asp:RequiredFieldValidator ID="rfvdata_nascimento" ControlToValidate="txtdata_nascimento"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtdata_nascimento" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-2">
                        <label>Carteira:</label>
                        <asp:RequiredFieldValidator ID="rfvcarteira" ControlToValidate="txtcarteira"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtcarteira" runat="server" MaxLength="8" CssClass="form-control"></asp:TextBox>
                    </div>


                    <div class="col-md-5">
                        <label>Telefone</label>
                        <asp:RequiredFieldValidator ID="rfvtelefone" ControlToValidate="txttelefone"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txttelefone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>

                <div class="row">



                    <div class="col-md-6">
                        <label>Celular</label>
                        <asp:RequiredFieldValidator ID="rfvcelular" ControlToValidate="txtcelular"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtcelular" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>E-mail </label>
                        <asp:RequiredFieldValidator ID="rfvemail" ControlToValidate="txtemail"
                            ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>


                <div class="row">
                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-12 text-right">
                        <asp:Button ID="btnGravar" CssClass="btn btn-outline-success" runat="server" Text="Gravar" OnClick="btnGravar_Click" />
                    </div>
                </div>

                <div class="row" style="margin-top: 15px">
                    <div class="col-md-12 text-right">
                        <asp:Label ID="lblResultado" CssClass="text text-danger" runat="server"></asp:Label>
                    </div>
                </div>

                </div>
            </div>
        
    </form>
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
