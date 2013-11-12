
function ddtabcontent(tabinterfaceid) {
	// ID of Tab Menu main container
	this.tabinterfaceid = tabinterfaceid;
	// Get all tab links within container
	this.tabs = document.getElementById(tabinterfaceid).getElementsByTagName("a");
	this.enabletabpersistence = true;
	// Array to store position of tabs that have a
	this.hottabspositions = []; 
	// "rel" attr defined, relative to all tab
	// links, within container
	// Index of currently selected hot tab (tab with
	this.currentTabIndex = 0 ;
	// sub content) within hottabspositions[] array
	// Array to store ids of the sub contents ("rel" attr values)
	this.subcontentids = [];
	// Array to store ids of arbitrary contents to
	this.revcontentids = [];
	// expand/contact as well ("rev" attr values)
	this.selectedClassTarget = "link";
	// keyword to indicate which target
	// element to assign "selected" CSS
	// class ("linkparent" or "link")
}

ddtabcontent.getCookie = function(Name) {
	// construct RE to search for target name/value pair
	var re = new RegExp(Name + "=[^;]+", "i"); 
	// if cookie found
	if (document.cookie.match(re))
		return document.cookie.match(re)[0].split("=")[1] ;// return its value
	return "";
},

ddtabcontent.setCookie = function(name, value) {
	// cookie value is domain wide (path=/)
	document.cookie = name + "=" + value + ";path=/";
},

ddtabcontent.prototype = {

	expandit : function(tabid_or_position) { 
		this.cancelautorun() ;
		var tabref = "";
		try {
			if (typeof tabid_or_position == "string" && document.getElementById(tabid_or_position).getAttribute( "rel")) 
				tabref = document.getElementById(tabid_or_position);
			else if (parseInt(tabid_or_position) != NaN && this.tabs[tabid_or_position].getAttribute("rel")) ;
				tabref = this.tabs[tabid_or_position];
		} catch (err) {
			alert("Invalid Tab ID or position entered!");
		}
		if (tabref != "")  
			this.expandtab(tabref)  ;
	},

	cycleit : function(dir, autorun) { 
		if (dir == "next") {
			var currentTabIndex = (this.currentTabIndex < this.hottabspositions.length - 1) ? this.currentTabIndex + 1 : 0;
		} else if (dir == "prev") {
			var currentTabIndex = (this.currentTabIndex > 0) ? this.currentTabIndex - 1 : this.hottabspositions.length - 1;
		}
		if (typeof autorun == "undefined") 
			this.cancelautorun() ;
		
		this.expandtab(this.tabs[this.hottabspositions[currentTabIndex]]);
	},

	setpersist : function(bool) { 
		this.enabletabpersistence = bool;
	},

	setselectedClassTarget : function(objstr) { 
		this.selectedClassTarget = objstr || "link";
	},

	getselectedClassTarget : function(tabref) { // Returns target element to
												// assign "selected" CSS class
												// to
		return (this.selectedClassTarget == ("linkparent".toLowerCase())) ? tabref.parentNode
				: tabref
	},

	urlparamselect : function(tabinterfaceid) {
		var result = window.location.search.match(new RegExp(tabinterfaceid
				+ "=(\\d+)", "i")) // check for "?tabinterfaceid=2" in URL
		return (result == null) ? null : parseInt(RegExp.$1) // returns null
																// or index,
																// where index
																// (int) is the
																// selected
																// tab's index
	},

	expandtab : function(tabref) {
		var subcontentid = tabref.getAttribute("rel") // Get id of subcontent
														// to expand
		// Get "rev" attr as a string of IDs in the format
		// ",john,george,trey,etc," to easily search through
		var associatedrevids = (tabref.getAttribute("rev")) ? ","
				+ tabref.getAttribute("rev").replace(/\s+/, "") + "," : ""
		this.expandsubcontent(subcontentid)
		this.expandrevcontent(associatedrevids)
		for ( var i = 0; i < this.tabs.length; i++) { // Loop through all
														// tabs, and assign only
														// the selected tab the
														// CSS class "selected"
			this.getselectedClassTarget(this.tabs[i]).className = (this.tabs[i]
					.getAttribute("rel") == subcontentid) ? "selected" : ""
		}
		if (this.enabletabpersistence) // if persistence enabled, save selected
										// tab position(int) relative to its
										// peers
			ddtabcontent.setCookie(this.tabinterfaceid, tabref.tabposition)
		this.setcurrenttabindex(tabref.tabposition) // remember position of
													// selected tab within
													// hottabspositions[] array
	},

	expandsubcontent : function(subcontentid) {
		for ( var i = 0; i < this.subcontentids.length; i++) {
			var subcontent = document.getElementById(this.subcontentids[i]) // cache
																			// current
																			// subcontent
																			// obj
																			// (in
																			// for
																			// loop)
			subcontent.style.display = (subcontent.id == subcontentid) ? "block"
					: "none" // "show" or hide sub content based on matching
								// id attr value
		}
	},

	expandrevcontent : function(associatedrevids) {
		var allrevids = this.revcontentids
		for ( var i = 0; i < allrevids.length; i++) { // Loop through rev
														// attributes for all
														// tabs in this tab
														// interface
			// if any values stored within associatedrevids matches one within
			// allrevids, expand that DIV, otherwise, contract it
			document.getElementById(allrevids[i]).style.display = (associatedrevids
					.indexOf("," + allrevids[i] + ",") != -1) ? "block"
					: "none"
		}
	},

	setcurrenttabindex : function(tabposition) { // store current position of
													// tab (within
													// hottabspositions[] array)
		for ( var i = 0; i < this.hottabspositions.length; i++) {
			if (tabposition == this.hottabspositions[i]) {
				this.currentTabIndex = i
				break
			}
		}
	},

	autorun : function() { // function to auto cycle through and select tabs
							// based on a set interval
		this.cycleit('next', true)
	},

	cancelautorun : function() {
		if (typeof this.autoruntimer != "undefined")
			clearInterval(this.autoruntimer)
	},

	init : function(automodeperiod) {
		var persistedtab = ddtabcontent.getCookie(this.tabinterfaceid) // get
																		// position
																		// of
																		// persisted
																		// tab
																		// (applicable
																		// if
																		// persistence
																		// is
																		// enabled)
		var selectedtab = -1 // Currently selected tab index (-1 meaning
								// none)
		var selectedtabfromurl = this.urlparamselect(this.tabinterfaceid) // returns
																			// null
																			// or
																			// index
																			// from:
																			// tabcontent.htm?tabinterfaceid=index
		this.automodeperiod = automodeperiod || 0
		for ( var i = 0; i < this.tabs.length; i++) {
			this.tabs[i].tabposition = i // remember position of tab relative
											// to its peers
			if (this.tabs[i].getAttribute("rel")) {
				var tabinstance = this
				this.hottabspositions[this.hottabspositions.length] = i // store
																		// position
																		// of
																		// "hot"
																		// tab
																		// ("rel"
																		// attr
																		// defined)
																		// relative
																		// to
																		// its
																		// peers
				this.subcontentids[this.subcontentids.length] = this.tabs[i]
						.getAttribute("rel") // store id of sub content
												// ("rel" attr value)
				this.tabs[i].onclick = function() {
					tabinstance.expandtab(this)
					tabinstance.cancelautorun() // stop auto cycling of tabs (if
												// running)
					return false
				}
				if (this.tabs[i].getAttribute("rev")) { // if "rev" attr
														// defined, store each
														// value within "rev" as
														// an array element
					this.revcontentids = this.revcontentids.concat(this.tabs[i]
							.getAttribute("rev").split(/\s*,\s*/))
				}
				if (selectedtabfromurl == i
						|| this.enabletabpersistence
						&& selectedtab == -1
						&& parseInt(persistedtab) == i
						|| !this.enabletabpersistence
						&& selectedtab == -1
						&& this.getselectedClassTarget(this.tabs[i]).className == "selected") {
					selectedtab = i // Selected tab index, if found
				}
			}
		} // END for loop
		if (selectedtab != -1) // if a valid default selected tab index is
								// found
			this.expandtab(this.tabs[selectedtab]) // expand selected tab
													// (either from URL
													// parameter, persistent
													// feature, or
													// class="selected" class)
		else
			//if no valid default selected index found
			this.expandtab(this.tabs[this.hottabspositions[0]]) //Just select first tab that contains a "rel" attr
		if (parseInt(this.automodeperiod) > 500
				&& this.hottabspositions.length > 1) {
			this.autoruntimer = setInterval(function() {
				tabinstance.autorun()
			}, this.automodeperiod)
		}
	} //END int() function

} //END Prototype assignment