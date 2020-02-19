<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetRemoteData.aspx.cs" Inherits="ASPNETWebForms_DOTNETFramework.GetRemoteData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlBot" runat="server" onchange="getData();" OnSelectedIndexChanged="ddlBot_SelectedIndexChanged"></asp:DropDownList>
        </div>
        <div id="divResults"></div>
    </form>
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script>
        function getData() {
            var ddlBot = document.getElementById('<%= ddlBot.ClientID %>').value;
            var url = "https://webchat.botframework.com/embed/epamfeedbackbot-bot?s=uzU6FmQoHc4.GBTVrgjd8XEu-TvbpmZHE0bWFdaxn-UONtZ2TrdDMQY";
            $.get(url, function (data, status) {
                alert('Returned data: ' + data + '<br />Returned status:' + status);
            })
            alert(ddlBot);
            switch (ddlBot) {
                case "Assessment":
                    break;
                case "Education":
                    break;
                case "Training":
                    break;
                case "Support":
                    break;
                case "HR Operations":
                    break;
                default:
                    break;
            }
        }
    </script>
</body>
</html>
