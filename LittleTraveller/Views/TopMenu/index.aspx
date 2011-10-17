<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="../../Customer/">Customer Maintenance</asp:HyperLink>
    </h2>
    <h2>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="../../Item/">Item Maintenance</asp:HyperLink>
    </h2>
    </form>
</asp:Content>
