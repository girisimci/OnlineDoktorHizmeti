<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="teleTIP_Temel_Sağlık_Hizmeti.giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 float-left">
                <br />
            </div>
            <div class="col-md-4 float-left mt-5">
                <form class="form-inline" action="action_page.aspx" method="post">



                    <label for="tckn">TC Kimlik</label>
                    <input type="text" class="form-control" placeholder="TC Kimlik numaranız" id="tckn" runat="server">
                    <br />

                    <label for="sifre">Şifre</label>
                    <input type="password" class="form-control" placeholder="Şifre" id="sifre" runat="server">
                    <br />
                    
                        <asp:Button ID="Button3" class="ml-1 btn btn-success   pl-5 pr-5 float-right" runat="server" Text="Giriş" OnClick="Button3_Click" />
                        <asp:Button ID="Button2" class=" btn btn-primary   pl-5 pr-5 float-right" runat="server" Text="Kayıt Ol" OnClick="Button2_Click" />
                        
                    
            </div>
        </div>
</asp:Content>
