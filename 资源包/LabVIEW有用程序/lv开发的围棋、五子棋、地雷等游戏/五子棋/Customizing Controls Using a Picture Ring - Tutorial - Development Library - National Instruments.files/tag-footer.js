/* $Change: 1473367 $ $DateTime: 2006/05/07 12:52:45 $ $Revision: #13 $ */
var gImages=new Array;
var gIndex=0;
var DCS=new Object();
var WT=new Object();
var DCSext=new Object();

var gDomain="statse.webtrendslive.com";
var gDcsId="dcsns9ta26twkf8ncdslokjwe_3y4l";
var gVersion="1.2";
var RE={"%09":/\t/g,"%20":/ /g,"%23":/\#/g,"%26":/\&/g,"%2B":/\+/g,"%3F":/\?/g,"%5C":/\\/g};

// *** CUSTOM NI DEVELOPMENT ***
var TAG_COOKIES = new Array("locale","lang","country","profile_id","session_id","aup","WT.seg_1");
var TAG_METATAGS = new Array("ContentClass","ContentType","Language","LanguageType","nigen10", "ProductCategories","Campaign","DC.language","hardware","allsoftware","primsoftware", "nigen2", "ProductFamily");

function getCookieWT(name) {
	var allcookies = document.cookie;
	var pos = allcookies.indexOf(name + "=");
	if (pos == -1) return null;
	var start = pos + (name.length + 1);
	var end = allcookies.indexOf(";", start);
	if (end == -1) end = allcookies.length;
	var value = allcookies.substring(start, end);
	return value;
}

function dcsVar(){
	var dCurrent=new Date();
	WT.tz=dCurrent.getTimezoneOffset()/60*-1;
	if (WT.tz==0){
		WT.tz="0";
	}
	WT.bh=dCurrent.getHours();
	WT.ul=navigator.appName=="Netscape"?navigator.language:navigator.userLanguage;
	if (typeof(screen)=="object"){
		WT.cd=navigator.appName=="Netscape"?screen.pixelDepth:screen.colorDepth;
		WT.sr=screen.width+"x"+screen.height;
	}
	if (typeof(navigator.javaEnabled())=="boolean"){
		WT.jo=navigator.javaEnabled()?"Yes":"No";
	}
	if (document.title){
		WT.ti=document.title;
	}
	WT.js="Yes";
	if (typeof(gVersion)!="undefined"){
		WT.jv=gVersion;
	}
	DCS.dcsdat=dCurrent.getTime();
	DCS.dcssip=window.location.hostname;
	DCS.dcsuri=window.location.pathname;
	if (window.location.search){
		DCS.dcsqry=window.location.search;
	}
	if ((window.document.referrer!="")&&(window.document.referrer!="-")){
		if (!(navigator.appName=="Microsoft Internet Explorer"&&parseInt(navigator.appVersion)<4)){
			DCS.dcsref=window.document.referrer;
		}
	}
}

// *** CUSTOM NI DEVELOPMENT ***
function niMetaTags(docElements)
{
	//LEVERAGES ENVIRONMENT DETECTION ALREADY DONE VIA dcsMetaTags()
	for (idx in TAG_METATAGS)
	{
		myTag = docElements[TAG_METATAGS[idx]];
		if (myTag != null)
		{
			if (myTag.content)
			{
				// THERE IS ONLY A SINGLE VALUE FOR THE META-TAG
				if (myTag.content.length > 0)
				{
          if(myTag.name == "ProductCategories")
          {
		   if(myTag.content.indexOf(',') != -1) 
			{
            	DCSext["ProductCategories_Single"] = myTag.content.substring(0, myTag.content.indexOf(','));
			}
			else 
			{
		      DCSext["ProductCategories_Single"] = myTag.content;
		      }
			DCSext[myTag.name] = myTag.content;
          } 
          else {
            DCSext[myTag.name] = myTag.content;
          }//end if  
				} 
				else
				{
					// THERE ARE MULTIPLE VALUES FOR THIS META-TAG
					if (myTag.length)
					{
						for (x=0; x<myTag.length; x++)
						{
							/*************************************************** 
							* MAKES SURE WE TRY ALL VALUES IN CASE ONE IS EMPTY
							* THIS BEHAVIOR WILL RESULT IN THE LAST VALUE BEING
							* SET, OVERRIDING ANY PRECEEDING VALUES 
							****************************************************/
							if (myTag[x].content.length > 0)
							{
								DCSext[myTag[x].name] = myTag[x].content;
							}
							if(myTag.name == "ProductCategories")
							{
								if(myTag[x].content.indexOf(',') != -1) 
									{
									DCSext["ProductCategories_Single"] = myTag[x].content.substring(0,myTag[x].content.indexOf(','));
									}
									else 
									{
								      DCSext["ProductCategories_Single"] = myTag[x].content;
								      }
								DCSext[myTag.name] = myTag.content;
							}
						} // end for
					} // end if
				}
			}
			else
			{
				//WHEN PRODUCTCATEGORIES NULL GO WITH NIGEN10 VALUE pos 12 in ARRAY
				if(myTag.name == "ProductCategories" && myTag.content == "")
				{
          gen10tag = DCSext["nigen10"];
	  if(gen10tag != null)
	  {
          if(gen10tag.indexOf(',') != -1)
            {
            DCSext["ProductCategories_Single"] = gen10tag.substring(0, gen10tag.indexOf(',')); 											 
            }
            else
            {
            DCSext["ProductCategories_Single"] = gen10tag;
            }
          }
					DCSext[myTag.name] = myTag.content;         
				}
			}//end if
		} // end if
	} // end for 
	//DCSext["ProductCAT"] = "0000";
} // end function

function niCookies(){
	for (idx in TAG_COOKIES) {
		cookieValue = getCookieWT(TAG_COOKIES[idx]);
		if (cookieValue != null)
			DCSext[TAG_COOKIES[idx]] = cookieValue;
	} // cookie loop
} // end function

function niURICleanup(){
	//MUST BE EXECUTED AFTER dcsVar()
	if (DCS.dcssip.indexOf("ni.com") == 0)
		DCS.dcssip = "www." + DCS.dcssip;
	DCSext["url"] = DCS.dcssip + DCS.dcsuri;
	if (DCS.dcsqry)
		DCSext["url"] += DCS.dcsqry;
} // end function

function niCustom() {
	niCookies();
	niURICleanup();	
} // end function 

function A(N,V){
	return "&"+N+"="+dcsEscape(V);
}

function dcsEscape(S){
	if (typeof(RE)!="undefined"){
		var retStr = new String(S);
		for (R in RE){
			retStr = retStr.replace(RE[R],R);
		}
		return retStr;
	}
	else{
		return escape(S);
	}
}

var goahead = "no";
function dcsCreateImage(dcsSrc){
	if (document.images){
		gImages[gIndex]=new Image;
		gImages[gIndex].src=dcsSrc;
		gIndex++;
		goahead = "yes";
	}
	else{
		document.write('<IMG BORDER="0" id="DCSIMG" NAME="DCSIMG" WIDTH="1" HEIGHT="1" SRC="'+dcsSrc+'">');
		goahead = "yes";
	}
}

function dcsMeta(){
	var myDocumentElements;
	if (document.all){
		myDocumentElements=document.all.tags("meta");
	} else if (document.documentElement){
		myDocumentElements=document.getElementsByTagName("meta");
	} // end if
	
	if (typeof(myDocumentElements)!="undefined"){
		for (var i=1;i<=myDocumentElements.length;i++){
			myMeta=myDocumentElements.item(i-1);
			if (myMeta.name){
				if (myMeta.name.indexOf('WT.')==0){
					WT[myMeta.name.substring(3)]=myMeta.content;
				}
				else if (myMeta.name.indexOf('DCSext.')==0){
					DCSext[myMeta.name.substring(7)]=myMeta.content;
				}
				else if (myMeta.name.indexOf('DCS.')==0){
					DCS[myMeta.name.substring(4)]=myMeta.content;
				}
			} // end if	
		} // end for 	
		niMetaTags(myDocumentElements); //CUSTOM ADDITION
	} // end if
}

function dcsTag(){
	var P="http"+(window.location.protocol.indexOf('https:')==0?'s':'')+"://"+gDomain+(gDcsId==""?'':'/'+gDcsId)+"/dcs.gif?";
	for (N in DCS){
		if (DCS[N]) {
			P+=A(N,DCS[N]);
		}
	}
	for (N in WT){
		if (WT[N]) {
			P+=A("WT."+N,WT[N]);
		}
	}
	for (N in DCSext){
		if (DCSext[N]) {
			P+=A(N,DCSext[N]);
		}
	}
	if (P.length>2048&&navigator.userAgent.indexOf('MSIE')>=0){
		P=P.substring(0,2040)+"&WT.tu=1";
	}
	dcsCreateImage(P);
}

function dcsMultiTrack(){    
    for (var i=0;i<arguments.length;i++){
	    if (arguments[i].indexOf('WT.')==0){
   		 WT[arguments[i].substring(3)]=
    		arguments[i+1];i++;
    	}
    	if (arguments[i].indexOf('DCS.')==0){
    		DCS[arguments[i].substring(4)]=
    		arguments[i+1];i++;
    	}
    	if (arguments[i].indexOf('DCSext.')==0){
    		DCSext[arguments[i].substring(7)]=
    		arguments[i+1];i++;
    	}
    }
    var dCurrent=new Date();
    DCS.dcsdat=dCurrent.getTime();
    dcsTag();
}

//EXECUTION OF PAGE TAG
	dcsVar();
	dcsMeta();
	niCustom();  // CUSTOM ADDITION
	dcsTag();
