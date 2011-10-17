<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LittleTraveller.Models.Item>" %>

<%@ Import Namespace="LittleTraveller.Helpers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Create
    </h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.sku) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.sku) %>
            <%: Html.ValidationMessageFor(model => model.sku) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.seasonID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.seasonID, (SelectList)ViewData["seasons"]) %>
            <%: Html.ValidationMessageFor(model => model.seasonID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.colorID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.colorID, (SelectList)ViewData["colors"])  %>
            <%: Html.ValidationMessageFor(model => model.colorID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.color2ID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.color2ID, (SelectList)ViewData["colors"])%>
            <%: Html.ValidationMessageFor(model => model.color2ID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.color3ID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.color3ID, (SelectList)ViewData["colors"]) %>
            <%: Html.ValidationMessageFor(model => model.color3ID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.sizeType) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.sizeType, (SelectList)ViewData["SizeTypes"], new { onChange = "createSizeList(this.value)" }) %>
            <%: Html.ValidationMessageFor(model => model.sizeType) %>         
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.size) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.size, (SelectList)ViewData["Sizes"])%>
            <%: Html.ValidationMessageFor(model => model.size) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.styleTypeID) %>
        </div>
        <div class="editor-field">
           <%= Html.DropDownListFor(model => model.styleTypeID, (SelectList)ViewData["StyleTypes"])%>
               <%: Html.ValidationMessageFor(model => model.styleTypeID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.designID) %>
        </div>
        <div class="editor-field">
           <%= Html.DropDownListFor(model => model.designID, (SelectList)ViewData["Designs"])%>
            <%: Html.ValidationMessageFor(model => model.designID) %>
        </div>
        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</asp:Content>
