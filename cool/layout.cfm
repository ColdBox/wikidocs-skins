<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
	<link rel="stylesheet" type="text/css" href="layouts/cool/cool.css" />
	

	<!--- Global JS --->
	<script type="text/javascript" src="layouts/cool/js/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="includes/scripts/codex.js"></script>
	<script type="text/javascript" src="layouts/cool/js/jquery.tools.min.js"></script>
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
</head>
<body>
<!--- Render Custom HTML --->
#rc.oCustomHTML.getafterBodyStart()#
<div class="main">
  <div class="blok_header">
  		
    <div class="header">
    	<!--- Main Menu TOP --->
		<div class="menu">
			<ul>
			  <li><a href="http://www.coldbox.org" style="color: orange">coldbox.org >></a></li>
			  <li><a href="http://www.coldbox.org/about">About</a></li>
			  <li><a href="http://www.coldbox.org/download">Downloads </a></li>
			  <li><a href="http://coldbox.assembla.com/spaces/coldbox/">Code Tracker</a></li>
			  <li><a href="http://www.coldbox.org/forgebox"> ForgeBox</a></li>
			  <li><a href="http://www.coldbox.org/support">Support</a></li>
			  <li><a href="http://www.coldbox.org/training">Training</a></li>          
			  <li><a href="http://www.coldbox.org/media">Media</a></li>          
			  <li><a href="http://www.coldbox.org/api">API</a></li>          
			  <li><a href="http://blog.coldbox.org">Blog</a></li>          
			  <li><a href="http://groups.google.com/group/coldbox">Forums</a></li>          
			</ul>
			<div class="clr"></div>
		</div>
		<div class="clr"></div>
      <!--- Main Logo portion --->
      <div class="logo"> 
      	<a href="#event.buildLink(pageShowRoot(rc.CodexOptions.wiki_defaultpage))#" style="text-decoration:none;">
      		<img src="http://www.coldbox.org/includes/images/logos/ColdBoxLogoSquare_125.png" border="0" alt="logo"/>
      		<div id="logoTitle">
      			Docs      		
      		</div>
      	</a>
      	<div id="wikiNav">
      		<cfif not event.valueExists("print")>
			<ul>
      			<!--- Home Page --->
      			<li>
      				<a href="#event.buildLink(pageShowRoot(rc.CodexOptions.wiki_defaultpage))#" title="Docs Home">Home</a>
				</li>
      			<!--- Index --->
				<li class="index">
      				<a href="javascript:toggleIndex()" title="Toggle Quick Index" style="padding-bottom:5px">Quick Index <img src="layouts/cool/images/arrow_out.png" alt="arrow" style="float:none;margin-left:2px;padding-bottom:5px" border="0"/></a>
      				<div id="indexguide">
			            <br/>
						<hr />
			            <dl class="L">
			             
						  <dt>Introduction</dt>
			              <dd><a href="wiki/Coldbox.cfm">ColdBox Overview</a></dd>
						  <dd><a href="wiki/MyFirstApplication.cfm">My First Application</a></dd>
						  <dd><a href="wiki/DirectoryStructure-Conventions.cfm">Directory Layout & Conventions</a></dd>
						  <dd><a href="wiki/RequestLifecycles.cfm">Request Life Cycles</a></dd>
						  <dd><a href="wiki/MajorClasses.cfm">ColdBox Major Classes</a></dd>
						 
						  <dt>Configuring</dt>
			              <dd><a href="wiki/ConfigurationCFC.cfm">Application Configuration</a></dd>
						  <dd><a href="wiki/ColdboxSettings.cfm">Using configuration settings</a></dd>
						  <dd><a href="wiki/LogBox.cfm">Fun Logging with LogBox</a></dd>
						  
						  <dt>Models</dt>
			              <dd><a href="wiki/Models.cfm">ColdBox Models</a></dd>
						  <dd><a href="wiki/Extras:BaseORMService.cfm">Built-in ORM Services</a></dd>
			              <dd><a href="wiki/Extras:CFORM.cfm">ORM Event Handling, AOP, More</a></dd>
			              <dd><a href="wiki/WireBox.cfm">Dependency Injection via WireBox</a></dd>
			              
						  <dt>Views</dt>
			              <dd><a href="wiki/layouts-views.cfm">Layouts and Rendering in ColdBox</a></dd>
			              
						  <dt>Controllers</dt>
			              <dd><a href="wiki/EventHandlers.cfm">Event Handlers</a></dd>
			              <dd><a href="wiki/URLMappings.cfm">ColdBox SES URL Mappings</a></dd>
						 
						  <dt>Request Context</dt>
			              <dd><a href="wiki/RequestContext.cfm">Request Context</a></dd>
			              <dd><a href="wiki/RequestContextDecorator.cfm">Extending the Request Context</a></dd>
			            </dl>
			            <dl class="R">
			              <dt>Tumble Down The Rabbit Hole...</dt>
			              <dd><a href="wiki/FlashRam.cfm">Flash RAM & Webflows</a></dd>
			              <dd><a href="wiki/URLActions.cfm">ColdBox URL Actions</a></dd>
			              <dd><a href="wiki/AjaxIntegration.cfm">Integrating with Ajax</a></dd>
			              <dd><a href="wiki/ColdboxProxy.cfm">Powering Flex/Air/Remote Apps</a></dd>
			              <dd><a href="wiki/Bootstrapper.cfm">Application.cfc Bootstrapper</a></dd>
			              <dd><a href="wiki/CacheBox.cfm">Caching with CacheBox</a></dd>
						  <dd><a href="space/Recipes.cfm">ColdBox Recipes</a></dd>
						  <dd><a href="wiki/Plugins:i18n.cfm">Localization & i18n</a></dd>
						  <dd><a href="wiki/Interceptors:Security.cfm">Securing your apps</a></dd>
						
						  <dt>Extending ColdBox</dt>
			              <dd><a href="wiki/Modules.cfm">ColdBox Modules & Architecture</a></dd>
						  <dd><a href="wiki/Plugins.cfm">ColdBox Plugins</a></dd>
						  <dd><a href="space/Plugins.cfm">Core Plugins Browser</a></dd>
						  <dd><a href="wiki/Interceptors.cfm">ColdBox Interceptors</a></dd>
			              <dd><a href="space/Interceptors.cfm">Core Interceptors Browser</a></dd>
						  
			              <dt>Testing</dt>
			              <dd><a href="wiki/Testing.cfm">Testing ColdBox Applications</a></dd>
			              <dd><a href="wiki/MockBox.cfm">Mocking-Stubbing with MockBox</a></dd>
			              
			              <dt>Tools, IDE Extras</dt>
			              <dd><a href="wiki/CFBuilderExtensions.cfm">ColdBox Platform Utilities</a></dd>
			              <dd><a href="wiki/SyntaxDictionaries.cfm">IDE Syntax Dictionaries</a></dd>
						  <dd><a href="space/Projects.cfm">Standalone Projects</a></dd>
			              <dd><a href="http://www.coldbox.org/downloads/ColdboxCheatSheet.pdf">ColdBox Cheatsheet</a></dd>
						  <dd><a href="http://www.coldbox.org/api">API Docs</a></dd>
			            </dl>
			          </div>
      			</li>
      			<!--- Page Directory --->
				<li>
      				<a href="#event.buildLink(rc.xehPageDirectory)#" title="Page Directory" <cfif refindnocase("^page\.directory",event.getCurrentEvent())>class="active"</cfif>>Directory</a>
				</li>
      			<cfif rc.oUser.getisAuthorized()>
				<!--- User Profile Tab --->
				<li>
					<a href="#event.buildLink(rc.xehUserProfile)#" title="My Profile" <cfif refindnocase("^profile",event.getCurrentEvent())>class="active"</cfif>><span>My Profile</span></a>
				</li>
				</cfif>		
				<!--- Admin Tab --->
				<cfif rc.oUser.checkPermission("WIKI_ADMIN")>
				<li>
					<a href="#event.buildLink(rc.xehAdmin)#" title="Codex Admin" <cfif refindnocase("^admin",event.getCurrentEvent())>class="active"</cfif>><span class="adminTab">Admin</span></a>
				</li>
				</cfif>
      		</ul>
			</cfif>
      	</div>      	
      </div>
      <div class="search">
      	<cfif not event.valueExists("print")>	
		<form id="form1" name="form1" method="post" action="#event.buildLink(rc.xehWikiSearch)#">
          <label><span>
            <input name="search_query" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." onclick="if(this.value=='Search...'){this.value=''}" />
			</span>
            <input name="b" type="image" src="layouts/cool/images/search.gif" class="button" />
          </label>
        </form>		
		</cfif>
		
      
      </div>
      <div class="toptools">
      	<div id="sidebar">
			<!--- Render Custom HTML --->
			#rc.oCustomHTML.getBeforeSideBar()#
			<!--- Render SideBar --->
			#renderView('tags/sidebar')#
			<!--- Render Custom HTML --->
			#rc.oCustomHTML.getAfterSideBar()#
		</div>
		<a href="javascript:toggleSidebar()" title="Show SideBar"><img src="layouts/cool/images/sidebar.png" alt="help" border="0" /><a/>&nbsp;
      	<a href="#event.buildLink(rc.xehSpaceDirectory)#" title="Namespaces"><img src="layouts/cool/images/namespace.png" alt="categories" border="0" /><a/>&nbsp;
     	<a href="#event.buildLink(rc.xehSpecialCategory)#" title="Categories"><img src="layouts/cool/images/tag_blue.png" alt="categories" border="0" /><a/>&nbsp;
     	<a href="#event.buildLink(rc.xehSpecialHelp)#" title="Help"><img src="layouts/cool/images/help.png" alt="help" border="0" /><a/>&nbsp;
      	<a href="#event.buildLink(rc.xehSpecialFeeds)#" title="RSS Feeds"><img src="layouts/cool/images/feed.png" alt="rss feeds" border="0" /><a/>      	
      </div>
      
      <div class="clr"></div>
      
    </div>
    <div class="clr"></div>
  </div>
  
  <!--- body resize page --->
  <div class="body_resize">
    <div class="body">
    	<div class="body_bg">
    		#renderView()#
			<br/>
      		<div class="clr"></div>
    	</div>
    </div>
    <div class="clr"></div>
  </div>
  
</div>
<!--- bottom resize --->
<div class="FBG">
  <div class="FBG_resize">
    <div class="left">
		<h2>ColdBox Book</h2>
		<div>
			
			<div class="textCenter margin10">
				<a title="Buy The Definitive Guide To The ColdBox Platform!" href="https://www.createspace.com/3411525">
				<img height="100" border="0" alt="book" src="http://www.coldbox.org/includes/imagelibrary/ColdBoxBookThumbnail.jpg"/>
				</a><br/><br/>
				<script type="text/javascript" src="http://books.google.com/books/previewlib.js"></script>
				<script type="text/javascript">
				GBS_insertPreviewButtonPopup('ISBN:9781449907860');
				</script>
			</div>
		</div>
	</div>
    <div class="left">
    	<h2>Purchase Books</h2>
	    <ul>
			<li><a href="https://www.createspace.com/3411525">Buy Book!</a></li>
			<li><a href="http://www.amazon.com/Definitive-Guide-ColdBox-Platform-ebook/dp/B002ZG8S0G/ref=sr_1_3?">Buy Kindle!</a></li>
			<li><a href="http://www.lulu.com/content/e-book/the-definitive-guide-to-the-coldbox-platform/8063957">Buy eBook!</a></li>
		</ul>
    </div>
    <div class="left">
      <h2>Media</h2>
      <ul>
        <li><a href="http://www.coldbox.org/media">ColdBox TV</a></li>
        <li> <a href="http://www.coldbox.org/media/connection">ColdBox Connection</a></li>
        <li> <a href="http://www.coldbox.org/media/videos">Video Feeds</a></li>
        <li> <a href="http://www.coldbox.org/media/photostream">Flickr Photostream</a></li>
      </ul>
    </div>
    <div class="left">
      <h2>Social Media</h2>
      <ul>
        <li><a href="http://www.twitter.com/coldbox">twitter.com/coldbox</a></li>
        <li><a href="http://www.twitter.com/ortussolutions">twitter.com/ortussolutions</a></li>
        <li><a href="http://www.twitter.com/lmajano">twitter.com/lmajano</a></li>
		<li><a href="http://www.twitter.com/codexwiki">twitter.com/codexwiki</a></li>
        <li> <a href="http://www.facebook.com/coldbox.platform">facebook.com/coldbox</a></li>
      </ul>
    </div>
    <div class="left">
      <h2>Ortus Services</h2>
      <ul>
        <li><a href="http://ortussolutions.com/services/support">Support & Mentoring</a></li>
        <li> <a href="http://ortussolutions.com/services/architecture">Architecture & Design</a></li>
        <li> <a href="http://ortussolutions.com/services/training">Expert Training</a></li>
        <li> <a href="http://ortussolutions.com/services/servers">Server Setup & Tuning</a></a></li>
		<li> <a href="http://ortussolutions.com/services/consulting">Consulting</a></a></li>
      </ul>
    </div>
    <div class="left">
      <h2>Contact Us</h2>
      <ul>
        <li><a href="mailto:info@coldbox.org">info@coldbox.org</a></li>
        <li><a href="mailto:info@ortussolutions.com">info@ortussolutions.com</a></li>
        <li><a href="http://www.ortussolutions.com">www.ortussolutions.com</a></li>
      </ul>
    </div>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>
<div class="footer">
  <div class="footer_resize">
    <p class="leftt">Copyright <a href="http://www.ortussolutions.com">Ortus Solutions, Corp</a> >> 
	<a href="http://www.codexwiki.org">CodexWiki</a> v#getSetting("Codex").Version# #getSetting("Codex").suffix#

	</p>
    <p class="right"><a href="http://www.dreamtemplate.com"><strong>Design By DT</strong></a></p>
    <div class="clr"></div>
  </div>
  <div class="clr"></div>
</div>

<!--- footer js --->
<script type="text/javascript">
$(document).ready(function() {
	// Tooltip settings
	var toolTipSettings	= {	//will make a tooltip of all elements having a title property
		 opacity: 0.8,
		 effect: 'slide',
		 predelay: 200,
		 delay: 10,
		 offset:[5, 0]
	};
	//Tooltip 
	$("[title]").tooltip(toolTipSettings).dynamic({bottom: { direction: 'down', bounce: true} });
});
function toggleIndex(){
	$("##indexguide").toggle();	
}
function toggleSidebar(){
	$("##sidebar").slideToggle();
}
</script>
<!--- Render Custom HTML --->
#rc.oCustomHTML.getbeforeBodyEnd()#
</body>
</html>
</cfoutput>