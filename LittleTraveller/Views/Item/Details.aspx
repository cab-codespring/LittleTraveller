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
            sku</div>
        <div class="display-field">
            <%: Model.sku %></div>
        <div class="display-label">
            seasonID</div>
        <div class="display-field">
            <%: Model.seasonID %></div>
        <div class="display-label">
            colorID</div>
        <div class="display-field">
            <%: Model.colorID %></div>
        <div class="display-label">
            color2ID</div>
        <div class="display-field">
            <%: Model.color2ID %></div>
        <div class="display-label">
            color3ID</div>
        <div class="display-field">
            <%: Model.color3ID %></div>
        <div class="display-label">
            sizeType</div>
        <div class="display-field">
            <%: Model.sizeType %></div>
        <div class="display-label">
            size</div>
        <div class="display-field">
            <%: Model.size %></div>
        <div class="display-label">
            styleTypeID</div>
        <div class="display-field">
            <%: Model.styleTypeID %></div>
        <div class="display-label">
            designID</div>
        <div class="display-field">
            <%: Model.designID %></div>
        <div class="display-label">
            price</div>
        <div class="display-field">
            <%: String.Format("{0:F}", Model.price) %></div>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.sku }) %>
        |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</asp:Content>
