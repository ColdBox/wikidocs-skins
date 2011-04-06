<!-----------------------------------------------------------------------
********************************************************************************
Copyright 2008 by 
Luis Majano (Ortus Solutions, Corp) and Mark Mandel (Compound Theory)
www.transfer-orm.org |  www.coldboxframework.com
********************************************************************************
Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. 
You may obtain a copy of the License at 
    		
	http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, software 
distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and 
limitations under the License.
********************************************************************************
$Build Date: @@build_date@@
$Build ID:	@@build_id@@
********************************************************************************
----------------------------------------------------------------------->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<cfoutput>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta name="Robots" content="index,follow" />
	<!--- Meta Tags --->
	#renderView('tags/meta')#
	<!--- Base HREF --->
	<base href="#getSetting('htmlBaseURL')#/" />
	
	<!--- Main CSS --->
	<link rel="stylesheet" type="text/css" href="includes/css/style.css" />
	<!--- loop around the cssAppendList, to add page specific css --->
	<cfloop list="#event.getValue("cssAppendList", "")#" index="css">
		<link rel="stylesheet" type="text/css" href="includes/css/#css#.css" />
	</cfloop>
	<cfloop list="#event.getValue("cssFullAppendList", "")#" index="css">
		<link rel="stylesheet" type="text/css" href="#css#.css" />
	</cfloop>
	<link rel="stylesheet" type="text/css" href="layouts/custom/site.css" />
	

	<!--- Global JS --->
	<script type="text/javascript" src="includes/scripts/jquery-latest.pack.js"></script>
	<script type="text/javascript" src="includes/scripts/codex.js"></script>
	<cfloop list="#event.getValue("jsAppendList", "")#" index="js">
		<script type="text/javascript" src="includes/scripts/#js#.js"></script>
	</cfloop>
	<cfloop list="#event.getValue("jsFullAppendList", "")#" index="js">
		<script type="text/javascript" src="#js#.js"></script>
	</cfloop>
	<!--- Render Title --->
	#renderView('tags/title')#
	<!--- Render Custom HTML --->
	#rc.oCustomHTML.getbeforeHeadEnd()#
	</cfoutput>
</head>
<cfoutput>
<body>
	<!--- Render Custom HTML --->
	#rc.oCustomHTML.getafterBodyStart()#
	<div id="wrap">
		<!--- Header Bar --->
		<!--- Main Header And Tabs --->
		<div id="header">
		
			<!--- Logo --->
			<img src="http://www.coldbox.org/includes/images/logos/ColdBoxLogoSquare_125.png" height="110" style="border:0;" border="0">
			<!-- tabs -->
			<cfif not event.valueExists("print")>
			<ul>
				<li>
					<a href="http://www.coldbox.org"><span>Home</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/about"><span>About</span></a>
				</li>	
				
				<li>
					<a href="http://www.coldbox.org/download"><span>Downloads</span></a>
				</li>

				<li>
					<a href="http://coldbox.assembla.com/spaces/coldbox/"><span>Code Tracker</span></a>
				</li>
				
				<li <cfif refindnocase("^page",event.getCurrentEvent())>id="current"</cfif>>
					<a href="#event.buildLink(pageShowRoot(rc.CodexOptions.wiki_defaultpage))#"><span>Docs</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/forgebox"><span>ForgeBox</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/support"><span>Support</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/training"><span>Training</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/media"><span>Media</span></a>
				</li>
				
				<li>
					<a href="http://www.coldbox.org/api/" target="_blank"><span>API</span></a>
				</li>
				
				<li>
					<a href="http://blog.coldbox.org"><span>Blog</span></a>
				</li>		
				
				<li>
					<a href="http://groups.google.com/group/coldbox"><span>Forums</span></a>
				</li>
				
		
				<cfif rc.oUser.getisAuthorized()>
				<!--- User Profile Tab --->
				<li <cfif refindnocase("^profile",event.getCurrentEvent())>id="current"</cfif>>
					<a href="#event.buildLink(rc.xehUserProfile)#"><span>My Profile</span></a>
				</li>
				</cfif>
		
				<!--- Admin Tab --->
				<cfif rc.oUser.checkPermission("WIKI_ADMIN")>
				<li <cfif refindnocase("^admin",event.getCurrentEvent())>id="current"</cfif> >
					<a href="#event.buildLink(rc.xehAdmin)#"><span class="adminTab">Admin</span></a>
				</li>
				</cfif>
			</ul>
			</cfif>
		</div>
		
		<!--- Sub Header --->
		<div id="header-logo">
		
			<div id="logo" onclick="window.location='#event.buildLink(pageShowRoot(rc.CodexOptions.wiki_defaultpage))#'"><h1><a href="#getSetting('htmlBaseURL')#">#rc.CodexOptions.wiki_name#</a></h1><<span class="red"><mango:Blog tagline /></span>/div>

			<cfif not event.valueExists("print")>
			<form method="post" class="search" action="#event.buildLink(rc.xehWikiSearch)#">
				<p><input name="search_query" class="textbox" type="text" />
						<input name="search" class="searchbutton" value="Search" type="submit" /></p>
			</form>
			</cfif>
		</div>

		<div id="sidebar" >
			<!--- Render Custom HTML --->
			#rc.oCustomHTML.getBeforeSideBar()#
			<!--- Render SideBar --->
			#renderView('tags/sidebar')#
			<!--- Render Custom HTML --->
			#rc.oCustomHTML.getAfterSideBar()#
		</div>
		
		<div id="main">
			#renderView()#
		</div>
	
	</div>
	
	<div class="footer">
		#renderView('tags/footer')#
	</div>
	<!--- Render Custom HTML --->
	#rc.oCustomHTML.getbeforeBodyEnd()#
</body>
</cfoutput>
</html>
