<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<LittleTraveller.Models.Item>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Index</h2>
    <table>
        <tr>
            <th>
            </th>
            <th>
                Sku
            </th>
            <th>
                SeasonID
            </th>
            <th>
                ColorID
            </th>
            <th>
                Color2ID
            </th>
            <th>
                Color3ID
            </th>
            <th>
                SizeType
            </th>
            <th>
                Size
            </th>
            <th>
                StyleTypeID
            </th>
            <th>
                DesignID
            </th>
            <th>
                Price
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { Sku=item.Sku }) %>
                <%: Html.ActionLink("Details", "Details", new { Sku=item.Sku })%>
                <%: Html.ActionLink("Delete", "Delete", new { Sku=item.Sku })%>
            </td>
            <td>
                <%: item.Sku %>
            </td>
            <td>
                <%: item.SeasonID %>
            </td>
            <td>
                <%: item.ColorID %>
            </td>
            <td>
                <%: item.Color2ID %>
            </td>
            <td>
                <%: item.Color3ID %>
            </td>
            <td>
                <%: item.SizeType %>
            </td>
            <td>
                <%: item.Size %>
            </td>
            <td>
                <%: item.StyleTypeID %>
            </td>
            <td>
                <%: item.DesignID %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Price) %>
            </td>
        </tr>
        <% } %>
    </table>
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
</asp:Content>
