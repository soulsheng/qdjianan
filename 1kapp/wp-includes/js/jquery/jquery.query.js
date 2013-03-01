/**
 * jQuery.query - Query String Modification and Creation for jQuery
 * Written by Blair Mitchelmore (blair DOT mitchelmore AT gmail DOT com)
 * Licensed under the WTFPL (http://sam.zoy.org/wtfpl/).
 * Date: 2009/8/13
 *
 * @author Blair Mitchelmore
 * @version 2.1.7
 *
 **/
new function(e){var d=e.separator||"&";var c=e.spaces===false?false:true;var a=e.suffix===false?"":"[]";var g=e.prefix===false?false:true;var b=g?e.hash===true?"#":"?":"";var f=e.numbers===false?false:true;jQuery.query=new function(){var h=function(m,l){return m!=undefined&&m!==null&&(!!l?m.constructor==l:true)};var i=function(r){var l,q=/\[([^[]*)\]/g,n=/^([^[]+)(\[.*\])?$/.exec(r),o=n[1],p=[];while(l=q.exec(n[2])){p.push(l[1])}return[o,p]};var k=function(s,r,q){var t,p=r.shift();if(typeof s!="object"){s=null}if(p===""){if(!s){s=[]}if(h(s,Array)){s.push(r.length==0?q:k(null,r.slice(0),q))}else{if(h(s,Object)){var n=0;while(s[n++]!=null){}s[--n]=r.length==0?q:k(s[n],r.slice(0),q)}else{s=[];s.push(r.length==0?q:k(null,r.slice(0),q))}}}else{if(p&&p.match(/^\s*[0-9]+\s*$/)){var m=parseInt(p,10);if(!s){s=[]}s[m]=r.length==0?q:k(s[m],r.slice(0),q)}else{if(p){var m=p.replace(/^\s*|\s*$/g,"");if(!s){s={}}if(h(s,Array)){var l={};for(var n=0;n<s.length;++n){l[n]=s[n]}s=l}s[m]=r.length==0?q:k(s[m],r.slice(0),q)}else{return q}}}return s};var j=function(l){var m=this;m.keys={};if(l.queryObject){jQuery.each(l.get(),function(n,o){m.SET(n,o)})}else{jQuery.each(arguments,func