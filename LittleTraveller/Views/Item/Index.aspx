<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<LittleTraveller.Models.Item>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                sku
            </th>
            <th>
                seasonID
            </th>
            <th>
                colorID
            </th>
            <th>
                color2ID
            </th>
            <th>
                color3ID
            </th>
            <th>
                sizeType
            </th>
            <th>
                size
            </th>
            <th>
                styleTypeID
            </th>
            <th>
                designID
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { sku=item.sku }) %> 
                <%: Html.ActionLink("Details", "Details", new { sku=item.sku })%> 
                <%: Html.ActionLink("Delete", "Delete", new { sku=item.sku })%>
            </td>
            <td>
                <%: item.sku %>
            </td>
            <td>
                <%: item.seasonID %>
            </td>
            <td>
                <%: item.colorID %>
            </td>
            <td>
                <%: item.color2ID %>
            </td>
            <td>
                <%: item.color3ID %>
            </td>
            <td>
                <%: item.sizeType %>
            </td>
            <td>
                <%: item.size %>
            </td>
            <td>
                <%: item.styleTypeID %>
            </td>
            <td>
                <%: item.designID %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

