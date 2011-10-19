<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LittleTraveller.Models.Item>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Edit</h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Sku) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Sku) %>
            <%: Html.ValidationMessageFor(model => model.Sku) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.SeasonID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.SeasonID, (SelectList)ViewData["Seasons"]) %>
            <%: Html.ValidationMessageFor(model => model.SeasonID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ColorID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.ColorID, (SelectList)ViewData["Colors"]) %>
            <%: Html.ValidationMessageFor(model => model.ColorID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Color2ID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.Color2ID, (SelectList)ViewData["Colors"]) %>
            <%: Html.ValidationMessageFor(model => model.Color2ID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Color3ID) %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.Color3ID, (SelectList)ViewData["Colors"]) %>
            <%: Html.ValidationMessageFor(model => model.Color3ID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.SizeType) %>
        </div>
 <%--       <div class="editor-label">
            <%: Html.TextBoxFor(model => model.SizeType, new { @readonly = "readonly" })%>
        </div>
--%>    
         <%-- bug: not generating default SizeType --%>
        <div class="editor-field">
            <%: Html.DropDownListFor(c => c.SizeType, (SelectList)ViewData["SizeTypes"], new { onChange = "createSizeList(this.value)" }) %>
            <%: Html.ValidationMessageFor(model => model.SizeType) %>
        </div>


        <%--  here for bug : not generating default SizeType --%>
        <div class="editor-label">
             <%: Html.Label((string) "SizeType in DB is " + Model.SizeType)%> 
        </div>


        <div class="editor-label">
            <%: Html.LabelFor(model => model.Size) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.Size, (SelectList)ViewData["Sizes"])%>
            <%: Html.ValidationMessageFor(model => model.Size) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.StyleTypeID) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.StyleTypeID, (SelectList)ViewData["StyleTypes"])%>
            <%: Html.ValidationMessageFor(model => model.StyleTypeID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.DesignID) %>
        </div>
        <div class="editor-field">
            <%= Html.DropDownListFor(model => model.DesignID, (SelectList)ViewData["Designs"])%>
            <%: Html.ValidationMessageFor(model => model.DesignID) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Price) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Price, String.Format("{0:F}", Model.Price)) %>
            <%: Html.ValidationMessageFor(model => model.Price) %>
        </div>
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</asp:Content>
