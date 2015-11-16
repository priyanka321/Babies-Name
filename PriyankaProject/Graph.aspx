<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="PriyankaProject.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css" />
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div id="linechart" style="height: 250px;"></div>
    <div id="barchart" style="height: 250px;"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script>
        new Morris.Line({
            // ID of the element in which to draw the chart.
            element: 'linechart',
            // Chart data records -- each entry in this array corresponds to a point on
            // the chart.
            data: [
                <% 
        Random r = new Random();
        
        
        for(int i=1942;i<2013;i++)
        {
                       if(i<2012)
                       {
        %>

                { year: '<%=i%>', value: <%=r.Next(i,100000000)%> },
                <%}
                  else
                  {%>
                           { year: '<%=i%>', value: <%=r.Next(1000)%> }
            
            <%}
              }%>
            
            ],
            // The name of the data record attribute that contains x-values.
            xkey: 'year',
            // A list of names of data record attributes that contain y-values.
            ykeys: ['value'],
            // Labels for the ykeys -- will be displayed when you hover over the
            // chart.
            labels: ['Babies']
        });



        Morris.Bar({
            element: 'barchart',
            data: [
              <% 
        Random rs = new Random();
        
        
        for(int i=1942;i<2013;i++)
        {
                       if(i<2012)
                       {
        %>

                { year: '<%=i%>', value: <%=rs.Next(i,100000000)%> },
                <%}
                  else
                  {%>
                           { year: '<%=i%>', value: <%=rs.Next(1000)%> }
            
            <%}
              }%>
            ],
            xkey: 'year',
            ykeys: ['value'],
            labels: ['Babies']
        });
    </script>
</asp:Content>
