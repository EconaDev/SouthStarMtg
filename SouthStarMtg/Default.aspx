<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SouthStarMtg.Default" %>

<%@ Register Assembly="FlashControl" Namespace="Bewise.Web.UI.WebControls" TagPrefix="Bewise" %>
<asp:Content ID="content" ContentPlaceHolderID="Content" runat="server">
    <div style="width: 956px; height: 480px;">
        <div class="content-sub">
            <Bewise:FlashControl ID="FlashControl2" Width="956px" Height="480px" runat="server"
                WMode="Opaque" MovieUrl="~/Scripts/southstar-03a.swf" />
        </div>
        <div class="mainpageaddress">
            700 N. Fairfax Street • Old Town Alexandria • VA 22314 Tel: 703.548.5505
            • Fax: 703.637.4473
        </div>
    </div>
</asp:Content>
