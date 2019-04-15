<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="teleTIP_Temel_Sağlık_Hizmeti._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

        <div class="row">

            <div class="col-lg-4 offset-lg-4 align-self-center mt-5 text-center main_text">
                <br />
                <br />

                <h1 class="mt-md-5">Temel Sağlık Hizmetine </h1>
                <h1>Modern Dokunuş </h1>
                <hr style="height: 1px; border: none; color: white; background-color: white;" />
                <p>7/24 yer , mekan ve zaman fark etmeksizin sesli-görüntülü doktorunuz ile görüşün.</p>
                <br />
                <asp:Button  class="btn btn-primary btn-lg" ID="Button1" runat="server" Text="Ücretsiz Kayıt Ol" OnClick="Button1_Click" />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />


            </div>

        </div>
    </div>



    <div class="container-fluid mt-5 bg-light">
        <div class="row">
            <div class="col-md-6  mt-5 ">
                <div class="col-md-2 float-left">
                    <br />
                    <br />
                </div>
                <div class="col-md-8 float-left mt-5">
                    <br />
                    <br />
                    <h3 class="txtblue text-center">Teletıp ile zaman ve mesafe problemi yaşamadan temel sağlık hizmetine ulaşın.</h3>
                    <div class="col-md-2 float-left">
                        <br />
                    </div>
                    <div class="col-md-10 mt-3 float-left">
                        <ul>
                            <li>Sağlık hizmetine uzak veya hizmetin yetersiz olduğu yerleşimler</li>
                            <li>Evde yatan hastası olan aileler</li>
                            <li>Hamile kadınlar ya da çocuk sahibi aileler</li>
                        </ul>
                        
                    </div>
                </div>
                <div class="col-md-2 float-left">
                </div>

            </div>
            <div class="col-md-6  mt-5">

                <img class="img-fluid" src="images/icon10.png" />

            </div>
        </div>
    </div>
</asp:Content>
