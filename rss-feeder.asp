<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Test Page - RSS FEEDER</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js" language="javascript"></script>
<script src="rss-feeder.js" language="javascript"></script>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<%
'------------------------------------------------------------------------------------------------
' Notes for News Feeds:
' Login at http://feed.informer.com
'------------------------------------------------------------------------------------------------
' Digest Title: "IBC.com Blog Feed (IBC Home Page)"
' Digest Source: http://internetbuildersconsulting.blogspot.com/feeds/posts/default?alt=rss
' Digest Source: http://plusfeed.frosas.net/+Internetbuilderconsulting
' Digest Source: http://buildersocialmedia.blogspot.com/feeds/posts/default?alt=rss
' Digest ID: YQB6UIEOA9
' News Template: "IBC.com Blog Feed", ASP.NET (USED ON THIS PAGE)
' Sharing link:: http://feed.informer.com/share/1PE6GMRN1P
' Sharing ID: 1PE6GMRN1P
'------------------------------------------------------------------------------------------------
' Digest Title: "Builder Consulting Twitter Feed"
' Twitter Feed: https://twitrss.me/twitter_user_to_rss/?user=builderwebsites
' Digest ID: HXCN9NN2TS
' News Template: "Twitter Tweets (Simple) ASP", ASP.NET (USED ON THIS PAGE)
' Sharing link:: http://feed.informer.com/share/0TS5GV2XON
' Sharing ID: 0TS5GV2XON
'------------------------------------------------------------------------------------------------
%>
<body>
<div class="rss-feeder">
  <div class="feeder">
    <h5>From Our Blog</h5>
    <%
			On Error Resume Next
			dim blogObject
			set blogObject = CreateObject("MSXML2.XMLHTTP")
			Call blogObject.Open("GET", "http://feed.informer.com/widgets/1PE6GMRN1P.html", false)
			Call blogObject.Send()
			Response.Write(blogObject.responseText)
			Response.Flush()
			set blogObject = nothing
		%>
  </div>
  <div class="feeder">
    <h5>Latest Tweets</h5>
    <!--tweet list-->
    <%
			On Error Resume Next
			dim tweetObject
			set tweetObject = CreateObject("MSXML2.XMLHTTP")
			Call tweetObject.Open("GET", "http://feed.informer.com/widgets/0TS5GV2XON.html", false)
			Call tweetObject.Send()
			Response.Write(tweetObject.responseText)
			Response.Flush()
			set tweetObject = nothing
		%>
  </div>
</div>
</body>
</html>
