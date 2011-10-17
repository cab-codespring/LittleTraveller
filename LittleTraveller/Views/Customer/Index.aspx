<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<LittleTraveller.Models.Customer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table width="4000">
        <tr>
            <th></th>
            <th width="60" >
                Cust #
            </th>
            <th width="400">
                Company Name
            </th>
            <th>
                Bill To Addr 1
            </th>
            <th>
                Bill To Addr 2
            </th>
            <th>
                Bill To City
            </th>
            <th>
                Bill To State
            </th>
            <th>
                Bill To Zip5
            </th>
            <th>
                Bill To Zip4
            </th>
            <th>
                Bill To Phone
            </th>
            <th>
                Bill To Fax
            </th>
            <th>
                Email
            </th>
            <th>
                Ship To Addr1
            </th>
            <th>
                Ship To Addr2
            </th>
            <th>
                Ship To City
            </th>
            <th>
                Ship To State
            </th>
            <th>
                Ship To Zip5
            </th>
            <th>
                Ship To Zip4
            </th>
            <th>
                Ship To Phone
            </th>
            <th>
                Ship To Fax
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td >
                <%: Html.ActionLink("Edit", "Edit", new { id=item.CustomerNum }) %> 
                <%: Html.ActionLink("Details", "Details", new { id=item.CustomerNum })%> 
                <%: Html.ActionLink("Delete", "Delete", new { id=item.CustomerNum })%>
            </td>
            <td >
                <%: item.CustomerNum %>
            </td>
            <td>
                <%: item.CompanyName %>
            </td>
            <td>
                <%: item.BillToAddr1 %>
            </td>
            <td>
                <%: item.BillToAddr2 %>
            </td>
            <td>
                <%: item.BillToCity %>
            </td>
            <td>
                <%: item.BillToState %>
            </td>
            <td>
                <%: item.BillToZip5 %>
            </td>
            <td>
                <%: item.BillToZip4 %>
            </td>
            <td>
                <%: item.BillToPhone %>
            </td>
            <td>
                <%: item.BillToFax %>
            </td>
            <td>
                <%: item.email %>
            </td>
            <td>
                <%: item.ShipToAddr1 %>
            </td>
            <td>
                <%: item.ShipToAddr2 %>
            </td>
            <td>
                <%: item.ShipToCity %>
            </td>
            <td>
                <%: item.ShipToState %>
            </td>
            <td>
                <%: item.ShipToZip5 %>
            </td>
            <td>
                <%: item.ShipToZip4 %>
            </td>
            <td>
                <%: item.ShipToPhone %>
            </td>
            <td>
                <%: item.ShipToFax %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

