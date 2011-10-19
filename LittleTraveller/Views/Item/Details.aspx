<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LittleTraveller.Models.Item>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Details</h2>
    <fieldset>
        <legend>Fields</legend>
        <div class="display-label">
            Sku</div>
        <div class="display-field">
            <%: Model.Sku %></div>
        <div class="display-label">
            SeasonID</div>
        <div class="display-field">
            <%: Model.SeasonID %></div>
        <div class="display-label">
            ColorID</div>
        <div class="display-field">
            <%: Model.ColorID %></div>
        <div class="display-label">
            Color2ID</div>
        <div class="display-field">
            <%: Model.Color2ID %></div>
        <div class="display-label">
            Color3ID</div>
        <div class="display-field">
            <%: Model.Color3ID %></div>
        <div class="display-label">
            SizeType</div>
        <div class="display-field">
            <%: Model.SizeType %></div>
        <div class="display-label">
            size</div>
        <div class="display-field">
            <%: Model.Size %></div>
        <div class="display-label">
            styleTypeID</div>
        <div class="display-field">
            <%: Model.StyleTypeID %></div>
        <div class="display-label">
            designID</div>
        <div class="display-field">
            <%: Model.DesignID %></div>
        <div class="display-label">
            price</div>
        <div class="display-field">
            <%: String.Format("{0:F}", Model.Price) %></div>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.Sku }) %>
        |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</asp:Content>
