<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToDB.aspx.cs" Inherits="WingtipToys.AddToDB" %>

<!DOCTYPE html>
<script runat="server">
    private void InsertProduct(object source, EventArgs e)
    {
        SqlDataSource1.Insert();
    }


</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h1 style="color:blue">General information about all our products: </h1>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WingtipToys %>"
            SelectCommand="SELECT * FROM [Products]"
            InsertCommand="INSERT INTO Products (ProductName, Description, UnitPrice, CategoryID) VALUES (@ProductName, @Description, @UnitPrice, @CategoryID)">           
            <InsertParameters>
                <asp:FormParameter FormField="ProductName" Name="ProductName" />
                <asp:FormParameter FormField="Description" Name="Description" />
                <asp:FormParameter FormField="UnitPrice" Name="UnitPrice"/>
                <asp:FormParameter FormField="CategoryID" Name="CategoryID" />
            </InsertParameters>
          
        </asp:SqlDataSource>
        <asp:GridView
          id="GridView1"
          runat="server"
          AllowSorting="True"
          DataSourceID="SqlDataSource1">
      </asp:GridView>
      <h1 style="color:blue">Do you want to add something new? </h1>
      <h1 style="color:black">Great! There are 5 available categories:
      </h1>
        <h3>1 - Cars</h3>
        <h3>2 - Phones</h3>
        <h3>3 - Clothes</h3>
        <h3>4 - Coins</h3>
        <h3>5 - Paintings</h3>


        <asp:Table ID="Table1" runat="server"
            CellPadding="10"
            GridLines="Both">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1"
                        Text="Enter the name of the product: "
                        runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox
                        ID="ProductName"
                        runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2"
                        Text="Enter description of the product: "
                        runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox
                        ID="Description"
                        runat="server" />
                </asp:TableCell>
            </asp:TableRow>
           
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblPrice"
                        Text="Enter price: "
                        runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox
                        ID="UnitPrice"
                        runat="server" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblCat"
                        Text="Enter category: "
                        runat="server" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox 
                        ID="CategoryID"
                        runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:RegularExpressionValidator ID="rvDigits" runat="server" ControlToValidate="CategoryID" ErrorMessage="Enter number from 1 to 5" ValidationGroup="valGroup" ForeColor="Red" ValidationExpression="[1-5]" />
          <br />
        <asp:Button
            ID="Button1"
            runat="server"
            Text="Insert New Product" 
            OnClick="InsertProduct" />
    </form>
</body>
</html>
