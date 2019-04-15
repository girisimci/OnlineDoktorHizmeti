<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="kayit_ol.aspx.cs" Inherits="teleTIP_Temel_Sağlık_Hizmeti.kayit_ol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        label{
            color:white;
            font-weight:bold;
            font-family:Tahoma;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 float-left">
                <br />
            </div>
            <div class="col-md-4 float-left mt-5">
                <form class="form-inline" action="action_page.aspx" method="post">

                    <label for="ad">Ad</label>
                    <input type="text" class="form-control " placeholder="Adınız" id="ad" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Ad alanı boş bırakılamaz!" ControlToValidate="ad" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    

                    <label for="soyad">Soyad</label>
                    <input type="text" class="form-control" placeholder="Soyadınız" id="soyad" runat="server">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Soyad alanı boş bırakılamaz!" ControlToValidate="soyad" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />

                    <label for="tckn">TC Kimlik</label>
                    <input type="text" class="form-control" placeholder="TC Kimlik numaranız" id="tckn" runat="server">
                    <br />

                    <label for="sifre">Şifre</label>
                    <input type="password" class="form-control" placeholder="Şifre" id="sifre" runat="server">
                    <br />

                    <label for="sifre_onay">Şifre Onay</label>
                    <input type="password" class="form-control" placeholder="Şifre onay" id="sifre_onay" runat="server">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Şifreler uyuşmuyor!" ControlToCompare="sifre" ControlToValidate="sifre_onay" ForeColor="Red"></asp:CompareValidator>
                    <br />

                    

                    <label for="tel">Telefon</label>
                    <input type="text" class="form-control" placeholder="Telefon numaranız" id="tel" runat="server">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Telefon numaranızı kontrol edin!" ControlToValidate="tel" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />

                    <label for="email">Email</label>
                    <input type="text" class="form-control" placeholder="Mail adresiniz" id="mail" runat="server">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Email adresinizi kontrol edin!" ControlToValidate="mail" ForeColor="Red" ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                    <br />

                    <label for="il">İl</label>
                    <asp:DropDownList class="form-control" ID="il" runat="server"></asp:DropDownList>
                    <br />

                    <!-- Cinsiyet -->
                <label class="lbl" for="cinsiyet">Cinsiyet</label>
                <br />
                <label class="radio-inline">
                    <asp:radiobutton id="rbErkek" name="gender" runat="server" checked GroupName="g"></asp:radiobutton>
                    
                    Erkek</label>
                <label class="radio-inline">
                    <asp:radiobutton class="ml-5" id="rbKadin" name="gender" runat="server" GroupName="g"></asp:radiobutton>
                    Kadın</label>
                <br />
                <br />
                <asp:Button ID="Button1" class="btn btn-primary mb-5 float-none pl-5 pr-5 float-right" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                </form>
            </div>

        </div>
    </div>
</asp:Content>
