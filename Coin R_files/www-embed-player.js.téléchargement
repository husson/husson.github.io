(function(){var h;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}
function ba(a){var b="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}
var ca="function"==typeof Object.create?Object.create:function(a){function b(){}
b.prototype=a;return new b},ea;
if("function"==typeof Object.setPrototypeOf)ea=Object.setPrototypeOf;else{var fa;a:{var ha={oa:!0},ia={};try{ia.__proto__=ha;fa=ia.oa;break a}catch(a){}fa=!1}ea=fa?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}var ja=ea;
function n(a,b){a.prototype=ca(b.prototype);a.prototype.constructor=a;if(ja)ja(a,b);else for(var c in b)if("prototype"!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.w=b.prototype}
var ka="function"==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){a!=Array.prototype&&a!=Object.prototype&&(a[b]=c.value)},la="undefined"!=typeof window&&window===this?this:"undefined"!=typeof global&&null!=global?global:this;
function ma(a,b){if(b){for(var c=la,d=a.split("."),e=0;e<d.length-1;e++){var f=d[e];f in c||(c[f]={});c=c[f]}d=d[d.length-1];e=c[d];f=b(e);f!=e&&null!=f&&ka(c,d,{configurable:!0,writable:!0,value:f})}}
function na(a,b,c){if(null==a)throw new TypeError("The 'this' value for String.prototype."+c+" must not be null or undefined");if(b instanceof RegExp)throw new TypeError("First argument to String.prototype."+c+" must not be a regular expression");return a+""}
function oa(){oa=function(){};
la.Symbol||(la.Symbol=pa)}
var pa=function(){var a=0;return function(b){return"jscomp_symbol_"+(b||"")+a++}}();
function qa(){oa();var a=la.Symbol.iterator;a||(a=la.Symbol.iterator=la.Symbol("iterator"));"function"!=typeof Array.prototype[a]&&ka(Array.prototype,a,{configurable:!0,writable:!0,value:function(){return ra(aa(this))}});
qa=function(){}}
function ra(a){qa();a={next:a};a[la.Symbol.iterator]=function(){return this};
return a}
ma("String.prototype.endsWith",function(a){return a?a:function(a,c){var b=na(this,a,"endsWith");a+="";void 0===c&&(c=b.length);for(var e=Math.max(0,Math.min(c|0,b.length)),f=a.length;0<f&&0<e;)if(b[--e]!=a[--f])return!1;return 0>=f}});
ma("String.prototype.startsWith",function(a){return a?a:function(a,c){var b=na(this,a,"startsWith");a+="";for(var e=b.length,f=a.length,g=Math.max(0,Math.min(c|0,b.length)),k=0;k<f&&g<e;)if(b[g++]!=a[k++])return!1;return k>=f}});
function p(a,b){return Object.prototype.hasOwnProperty.call(a,b)}
var sa="function"==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)p(d,e)&&(a[e]=d[e])}return a};
ma("Object.assign",function(a){return a||sa});
ma("WeakMap",function(a){function b(a){this.b=(g+=Math.random()+1).toString();if(a){a=ba(a);for(var b;!(b=a.next()).done;)b=b.value,this.set(b[0],b[1])}}
function c(){}
function d(a){p(a,f)||ka(a,f,{value:new c})}
function e(a){var b=Object[a];b&&(Object[a]=function(a){if(a instanceof c)return a;d(a);return b(a)})}
if(function(){if(!a||!Object.seal)return!1;try{var b=Object.seal({}),c=Object.seal({}),d=new a([[b,2],[c,3]]);if(2!=d.get(b)||3!=d.get(c))return!1;d["delete"](b);d.set(c,4);return!d.has(b)&&4==d.get(c)}catch(u){return!1}}())return a;
var f="$jscomp_hidden_"+Math.random();e("freeze");e("preventExtensions");e("seal");var g=0;b.prototype.set=function(a,b){d(a);if(!p(a,f))throw Error("WeakMap key fail: "+a);a[f][this.b]=b;return this};
b.prototype.get=function(a){return p(a,f)?a[f][this.b]:void 0};
b.prototype.has=function(a){return p(a,f)&&p(a[f],this.b)};
b.prototype["delete"]=function(a){return p(a,f)&&p(a[f],this.b)?delete a[f][this.b]:!1};
return b});
ma("Map",function(a){function b(){var a={};return a.previous=a.next=a.head=a}
function c(a,b){var c=a.b;return ra(function(){if(c){for(;c.head!=a.b;)c=c.previous;for(;c.next!=c.head;)return c=c.next,{done:!1,value:b(c)};c=null}return{done:!0,value:void 0}})}
function d(a,b){var c=b&&typeof b;"object"==c||"function"==c?f.has(b)?c=f.get(b):(c=""+ ++g,f.set(b,c)):c="p_"+b;var d=a.c[c];if(d&&p(a.c,c))for(var e=0;e<d.length;e++){var k=d[e];if(b!==b&&k.key!==k.key||b===k.key)return{id:c,list:d,index:e,m:k}}return{id:c,list:d,index:-1,m:void 0}}
function e(a){this.c={};this.b=b();this.size=0;if(a){a=ba(a);for(var c;!(c=a.next()).done;)c=c.value,this.set(c[0],c[1])}}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var b=Object.seal({x:4}),c=new a(ba([[b,"s"]]));if("s"!=c.get(b)||1!=c.size||c.get({x:4})||c.set({x:4},"t")!=c||2!=c.size)return!1;var d=c.entries(),e=d.next();if(e.done||e.value[0]!=b||"s"!=e.value[1])return!1;e=d.next();return e.done||4!=e.value[0].x||"t"!=e.value[1]||!d.next().done?!1:!0}catch(da){return!1}}())return a;
qa();var f=new WeakMap;e.prototype.set=function(a,b){a=0===a?0:a;var c=d(this,a);c.list||(c.list=this.c[c.id]=[]);c.m?c.m.value=b:(c.m={next:this.b,previous:this.b.previous,head:this.b,key:a,value:b},c.list.push(c.m),this.b.previous.next=c.m,this.b.previous=c.m,this.size++);return this};
e.prototype["delete"]=function(a){a=d(this,a);return a.m&&a.list?(a.list.splice(a.index,1),a.list.length||delete this.c[a.id],a.m.previous.next=a.m.next,a.m.next.previous=a.m.previous,a.m.head=null,this.size--,!0):!1};
e.prototype.clear=function(){this.c={};this.b=this.b.previous=b();this.size=0};
e.prototype.has=function(a){return!!d(this,a).m};
e.prototype.get=function(a){return(a=d(this,a).m)&&a.value};
e.prototype.entries=function(){return c(this,function(a){return[a.key,a.value]})};
e.prototype.keys=function(){return c(this,function(a){return a.key})};
e.prototype.values=function(){return c(this,function(a){return a.value})};
e.prototype.forEach=function(a,b){for(var c=this.entries(),d;!(d=c.next()).done;)d=d.value,a.call(b,d[1],d[0],this)};
e.prototype[Symbol.iterator]=e.prototype.entries;var g=0;return e});
ma("Set",function(a){function b(a){this.b=new Map;if(a){a=ba(a);for(var b;!(b=a.next()).done;)this.add(b.value)}this.size=this.b.size}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var b=Object.seal({x:4}),d=new a(ba([b]));if(!d.has(b)||1!=d.size||d.add(b)!=d||1!=d.size||d.add({x:4})!=d||2!=d.size)return!1;var e=d.entries(),f=e.next();if(f.done||f.value[0]!=b||f.value[1]!=b)return!1;f=e.next();return f.done||f.value[0]==b||4!=f.value[0].x||f.value[1]!=f.value[0]?!1:e.next().done}catch(g){return!1}}())return a;
qa();b.prototype.add=function(a){a=0===a?0:a;this.b.set(a,a);this.size=this.b.size;return this};
b.prototype["delete"]=function(a){a=this.b["delete"](a);this.size=this.b.size;return a};
b.prototype.clear=function(){this.b.clear();this.size=0};
b.prototype.has=function(a){return this.b.has(a)};
b.prototype.entries=function(){return this.b.entries()};
b.prototype.values=function(){return this.b.values()};
b.prototype.keys=b.prototype.values;b.prototype[Symbol.iterator]=b.prototype.values;b.prototype.forEach=function(a,b){var c=this;this.b.forEach(function(d){return a.call(b,d,d,c)})};
return b});
ma("Object.is",function(a){return a?a:function(a,c){return a===c?0!==a||1/a===1/c:a!==a&&c!==c}});
ma("String.prototype.includes",function(a){return a?a:function(a,c){return-1!==na(this,a,"includes").indexOf(a,c||0)}});
(function(){function a(){function a(){}
Reflect.construct(a,[],function(){});
return new a instanceof a}
if("undefined"!=typeof Reflect&&Reflect.construct){if(a())return Reflect.construct;var b=Reflect.construct;return function(a,d,e){a=b(a,d);e&&Reflect.setPrototypeOf(a,e.prototype);return a}}return function(a,b,e){void 0===e&&(e=a);
e=ca(e.prototype||Object.prototype);return Function.prototype.apply.call(a,e,b)||e}})();
var q=this;function r(a){return void 0!==a}
function t(a){return"string"==typeof a}
function v(a,b,c){a=a.split(".");c=c||q;a[0]in c||"undefined"==typeof c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)!a.length&&r(b)?c[d]=b:c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}}
var ta=/^[\w+/_-]+[=]{0,2}$/,ua=null;function w(a,b){for(var c=a.split("."),d=b||q,e=0;e<c.length;e++)if(d=d[c[e]],null==d)return null;return d}
function va(){}
function wa(a){a.ba=void 0;a.getInstance=function(){return a.ba?a.ba:a.ba=new a}}
function xa(a){var b=typeof a;if("object"==b)if(a){if(a instanceof Array)return"array";if(a instanceof Object)return b;var c=Object.prototype.toString.call(a);if("[object Window]"==c)return"object";if("[object Array]"==c||"number"==typeof a.length&&"undefined"!=typeof a.splice&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("splice"))return"array";if("[object Function]"==c||"undefined"!=typeof a.call&&"undefined"!=typeof a.propertyIsEnumerable&&!a.propertyIsEnumerable("call"))return"function"}else return"null";
else if("function"==b&&"undefined"==typeof a.call)return"object";return b}
function x(a){return"array"==xa(a)}
function ya(a){var b=xa(a);return"array"==b||"object"==b&&"number"==typeof a.length}
function za(a){return"function"==xa(a)}
function y(a){var b=typeof a;return"object"==b&&null!=a||"function"==b}
var Aa="closure_uid_"+(1E9*Math.random()>>>0),Ba=0;function Ca(a,b,c){return a.call.apply(a.bind,arguments)}
function Da(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var c=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(c,d);return a.apply(b,c)}}return function(){return a.apply(b,arguments)}}
function z(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?z=Ca:z=Da;return z.apply(null,arguments)}
function Ea(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var b=c.slice();b.push.apply(b,arguments);return a.apply(this,b)}}
var A=Date.now||function(){return+new Date};
function B(a,b){v(a,b,void 0)}
function C(a,b){function c(){}
c.prototype=b.prototype;a.w=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.ib=function(a,c,f){for(var d=Array(arguments.length-2),e=2;e<arguments.length;e++)d[e-2]=arguments[e];return b.prototype[c].apply(a,d)}}
;var Fa=document,D=window;function E(a){if(Error.captureStackTrace)Error.captureStackTrace(this,E);else{var b=Error().stack;b&&(this.stack=b)}a&&(this.message=String(a))}
C(E,Error);E.prototype.name="CustomError";var Ga=Array.prototype.indexOf?function(a,b){return Array.prototype.indexOf.call(a,b,void 0)}:function(a,b){if(t(a))return t(b)&&1==b.length?a.indexOf(b,0):-1;
for(var c=0;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},F=Array.prototype.forEach?function(a,b,c){Array.prototype.forEach.call(a,b,c)}:function(a,b,c){for(var d=a.length,e=t(a)?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)},Ha=Array.prototype.filter?function(a,b){return Array.prototype.filter.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=[],e=0,f=t(a)?a.split(""):a,g=0;g<c;g++)if(g in f){var k=f[g];
b.call(void 0,k,g,a)&&(d[e++]=k)}return d},Ia=Array.prototype.map?function(a,b){return Array.prototype.map.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=Array(c),e=t(a)?a.split(""):a,f=0;f<c;f++)f in e&&(d[f]=b.call(void 0,e[f],f,a));
return d},Ja=Array.prototype.reduce?function(a,b,c){return Array.prototype.reduce.call(a,b,c)}:function(a,b,c){var d=c;
F(a,function(c,f){d=b.call(void 0,d,c,f,a)});
return d};
function Ka(a,b){a:{var c=a.length;for(var d=t(a)?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a)){c=e;break a}c=-1}return 0>c?null:t(a)?a.charAt(c):a[c]}
function La(a,b){var c=Ga(a,b);0<=c&&Array.prototype.splice.call(a,c,1)}
function Ma(a){var b=a.length;if(0<b){for(var c=Array(b),d=0;d<b;d++)c[d]=a[d];return c}return[]}
function Na(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(ya(d)){var e=a.length||0,f=d.length||0;a.length=e+f;for(var g=0;g<f;g++)a[e+g]=d[g]}else a.push(d)}}
;var Oa=String.prototype.trim?function(a){return a.trim()}:function(a){return/^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]};
function Pa(a){if(!Qa.test(a))return a;-1!=a.indexOf("&")&&(a=a.replace(Ra,"&amp;"));-1!=a.indexOf("<")&&(a=a.replace(Sa,"&lt;"));-1!=a.indexOf(">")&&(a=a.replace(Ta,"&gt;"));-1!=a.indexOf('"')&&(a=a.replace(Ua,"&quot;"));-1!=a.indexOf("'")&&(a=a.replace(Va,"&#39;"));-1!=a.indexOf("\x00")&&(a=a.replace(Wa,"&#0;"));return a}
var Ra=/&/g,Sa=/</g,Ta=/>/g,Ua=/"/g,Va=/'/g,Wa=/\x00/g,Qa=/[\x00&<>"']/;function Xa(a){for(var b=0,c=0;c<a.length;++c)b=31*b+a.charCodeAt(c)>>>0;return b}
;var Ya;a:{var Za=q.navigator;if(Za){var $a=Za.userAgent;if($a){Ya=$a;break a}}Ya=""}function G(a){return-1!=Ya.indexOf(a)}
;function ab(a,b){for(var c in a)b.call(void 0,a[c],c,a)}
function bb(a,b){var c=ya(b),d=c?b:arguments;for(c=c?0:1;c<d.length;c++){if(null==a)return;a=a[d[c]]}return a}
function cb(a){var b=db,c;for(c in b)if(a.call(void 0,b[c],c,b))return c}
function eb(a){for(var b in a)return!1;return!0}
function fb(a,b){if(null!==a&&b in a)throw Error('The object already contains the key "'+b+'"');a[b]=!0}
function gb(a,b){for(var c in a)if(!(c in b)||a[c]!==b[c])return!1;for(c in b)if(!(c in a))return!1;return!0}
function hb(a){var b={},c;for(c in a)b[c]=a[c];return b}
var ib="constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" ");function jb(a,b){for(var c,d,e=1;e<arguments.length;e++){d=arguments[e];for(c in d)a[c]=d[c];for(var f=0;f<ib.length;f++)c=ib[f],Object.prototype.hasOwnProperty.call(d,c)&&(a[c]=d[c])}}
;function kb(a){kb[" "](a);return a}
kb[" "]=va;var lb=G("Opera"),mb=G("Trident")||G("MSIE"),nb=G("Edge"),ob=G("Gecko")&&!(-1!=Ya.toLowerCase().indexOf("webkit")&&!G("Edge"))&&!(G("Trident")||G("MSIE"))&&!G("Edge"),pb=-1!=Ya.toLowerCase().indexOf("webkit")&&!G("Edge");function qb(){var a=q.document;return a?a.documentMode:void 0}
var rb;a:{var sb="",tb=function(){var a=Ya;if(ob)return/rv:([^\);]+)(\)|;)/.exec(a);if(nb)return/Edge\/([\d\.]+)/.exec(a);if(mb)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(pb)return/WebKit\/(\S+)/.exec(a);if(lb)return/(?:Version)[ \/]?(\S+)/.exec(a)}();
tb&&(sb=tb?tb[1]:"");if(mb){var ub=qb();if(null!=ub&&ub>parseFloat(sb)){rb=String(ub);break a}}rb=sb}var vb=rb,wb;var xb=q.document;wb=xb&&mb?qb()||("CSS1Compat"==xb.compatMode?parseInt(vb,10):5):void 0;var yb=null,zb=null;function Ab(a){this.b=a||{cookie:""}}
h=Ab.prototype;h.isEnabled=function(){return navigator.cookieEnabled};
h.set=function(a,b,c,d,e,f){if(/[;=\s]/.test(a))throw Error('Invalid cookie name "'+a+'"');if(/[;\r\n]/.test(b))throw Error('Invalid cookie value "'+b+'"');r(c)||(c=-1);e=e?";domain="+e:"";d=d?";path="+d:"";f=f?";secure":"";c=0>c?"":0==c?";expires="+(new Date(1970,1,1)).toUTCString():";expires="+(new Date(A()+1E3*c)).toUTCString();this.b.cookie=a+"="+b+e+d+c+f};
h.get=function(a,b){for(var c=a+"=",d=(this.b.cookie||"").split(";"),e=0,f;e<d.length;e++){f=Oa(d[e]);if(0==f.lastIndexOf(c,0))return f.substr(c.length);if(f==a)return""}return b};
h.remove=function(a,b,c){var d=r(this.get(a));this.set(a,"",0,b,c);return d};
h.isEmpty=function(){return!this.b.cookie};
h.clear=function(){for(var a=(this.b.cookie||"").split(";"),b=[],c=[],d,e,f=0;f<a.length;f++)e=Oa(a[f]),d=e.indexOf("="),-1==d?(b.push(""),c.push(e)):(b.push(e.substring(0,d)),c.push(e.substring(d+1)));for(a=b.length-1;0<=a;a--)this.remove(b[a])};
var Bb=new Ab("undefined"==typeof document?null:document);function Cb(a){var b=w("window.location.href");null==a&&(a='Unknown Error of type "null/undefined"');if(t(a))return{message:a,name:"Unknown error",lineNumber:"Not available",fileName:b,stack:"Not available"};var c=!1;try{var d=a.lineNumber||a.line||"Not available"}catch(f){d="Not available",c=!0}try{var e=a.fileName||a.filename||a.sourceURL||q.$googDebugFname||b}catch(f){e="Not available",c=!0}return!c&&a.lineNumber&&a.fileName&&a.stack&&a.message&&a.name?a:(b=a.message,null==b&&(a.constructor&&a.constructor instanceof
Function?(a.constructor.name?b=a.constructor.name:(b=a.constructor,Db[b]?b=Db[b]:(b=String(b),Db[b]||(c=/function\s+([^\(]+)/m.exec(b),Db[b]=c?c[1]:"[Anonymous]"),b=Db[b])),b='Unknown Error of type "'+b+'"'):b="Unknown Error of unknown type"),{message:b,name:a.name||"UnknownError",lineNumber:d,fileName:e,stack:a.stack||"Not available"})}
var Db={};function Eb(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}
;var Fb=!mb||9<=Number(wb);function Gb(){this.b="";this.c=Hb}
Gb.prototype.I=!0;Gb.prototype.H=function(){return this.b};
Gb.prototype.aa=!0;Gb.prototype.X=function(){return 1};
function Ib(a){return a instanceof Gb&&a.constructor===Gb&&a.c===Hb?a.b:"type_error:TrustedResourceUrl"}
var Hb={};function H(){this.b="";this.c=Jb}
H.prototype.I=!0;H.prototype.H=function(){return this.b};
H.prototype.aa=!0;H.prototype.X=function(){return 1};
function Kb(a){return a instanceof H&&a.constructor===H&&a.c===Jb?a.b:"type_error:SafeUrl"}
var Lb=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i;function Mb(a){if(a instanceof H)return a;a="object"==typeof a&&a.I?a.H():String(a);Lb.test(a)||(a="about:invalid#zClosurez");return Nb(a)}
var Jb={};function Nb(a){var b=new H;b.b=a;return b}
Nb("about:blank");function Ob(){this.b="";this.f=Pb;this.c=null}
Ob.prototype.aa=!0;Ob.prototype.X=function(){return this.c};
Ob.prototype.I=!0;Ob.prototype.H=function(){return this.b};
var Pb={};function Qb(a,b){var c=new Ob;c.b=a;c.c=b;return c}
Qb("<!DOCTYPE html>",0);Qb("",0);Qb("<br>",0);function Rb(a,b){var c=b instanceof H?b:Mb(b);a.href=Kb(c)}
function Sb(a,b){a.src=Ib(b);if(null===ua)b:{var c=q.document;if((c=c.querySelector&&c.querySelector("script[nonce]"))&&(c=c.nonce||c.getAttribute("nonce"))&&ta.test(c)){ua=c;break b}ua=""}c=ua;c&&a.setAttribute("nonce",c)}
;function Tb(a,b){this.x=r(a)?a:0;this.y=r(b)?b:0}
h=Tb.prototype;h.clone=function(){return new Tb(this.x,this.y)};
h.equals=function(a){return a instanceof Tb&&(this==a?!0:this&&a?this.x==a.x&&this.y==a.y:!1)};
h.ceil=function(){this.x=Math.ceil(this.x);this.y=Math.ceil(this.y);return this};
h.floor=function(){this.x=Math.floor(this.x);this.y=Math.floor(this.y);return this};
h.round=function(){this.x=Math.round(this.x);this.y=Math.round(this.y);return this};function Ub(a,b){this.width=a;this.height=b}
h=Ub.prototype;h.clone=function(){return new Ub(this.width,this.height)};
h.aspectRatio=function(){return this.width/this.height};
h.isEmpty=function(){return!(this.width*this.height)};
h.ceil=function(){this.width=Math.ceil(this.width);this.height=Math.ceil(this.height);return this};
h.floor=function(){this.width=Math.floor(this.width);this.height=Math.floor(this.height);return this};
h.round=function(){this.width=Math.round(this.width);this.height=Math.round(this.height);return this};function Vb(a){var b=document;return t(a)?b.getElementById(a):a}
function Wb(a,b){ab(b,function(b,d){b&&"object"==typeof b&&b.I&&(b=b.H());"style"==d?a.style.cssText=b:"class"==d?a.className=b:"for"==d?a.htmlFor=b:Xb.hasOwnProperty(d)?a.setAttribute(Xb[d],b):0==d.lastIndexOf("aria-",0)||0==d.lastIndexOf("data-",0)?a.setAttribute(d,b):a[d]=b})}
var Xb={cellpadding:"cellPadding",cellspacing:"cellSpacing",colspan:"colSpan",frameborder:"frameBorder",height:"height",maxlength:"maxLength",nonce:"nonce",role:"role",rowspan:"rowSpan",type:"type",usemap:"useMap",valign:"vAlign",width:"width"};
function Yb(a,b,c){var d=arguments,e=document,f=String(d[0]),g=d[1];if(!Fb&&g&&(g.name||g.type)){f=["<",f];g.name&&f.push(' name="',Pa(g.name),'"');if(g.type){f.push(' type="',Pa(g.type),'"');var k={};jb(k,g);delete k.type;g=k}f.push(">");f=f.join("")}f=e.createElement(f);g&&(t(g)?f.className=g:x(g)?f.className=g.join(" "):Wb(f,g));2<d.length&&Zb(e,f,d);return f}
function Zb(a,b,c){function d(c){c&&b.appendChild(t(c)?a.createTextNode(c):c)}
for(var e=2;e<c.length;e++){var f=c[e];if(!ya(f)||y(f)&&0<f.nodeType)d(f);else{a:{if(f&&"number"==typeof f.length){if(y(f)){var g="function"==typeof f.item||"string"==typeof f.item;break a}if(za(f)){g="function"==typeof f.item;break a}}g=!1}F(g?Ma(f):f,d)}}}
function $b(a,b){for(var c=0;a;){if(b(a))return a;a=a.parentNode;c++}return null}
;function ac(a){bc();var b=new Gb;b.b=a;return b}
var bc=va;function cc(){var a=dc;try{var b;if(b=!!a&&null!=a.location.href)a:{try{kb(a.foo);b=!0;break a}catch(c){}b=!1}return b}catch(c){return!1}}
function ec(a){var b=fc;if(b)for(var c in b)Object.prototype.hasOwnProperty.call(b,c)&&a.call(void 0,b[c],c,b)}
function gc(){var a=[];ec(function(b){a.push(b)});
return a}
var fc={Ua:"allow-forms",Va:"allow-modals",Wa:"allow-orientation-lock",Xa:"allow-pointer-lock",Ya:"allow-popups",Za:"allow-popups-to-escape-sandbox",ab:"allow-presentation",bb:"allow-same-origin",cb:"allow-scripts",eb:"allow-top-navigation",fb:"allow-top-navigation-by-user-activation"},hc=Eb(function(){return gc()});
function ic(){var a=document.createElement("IFRAME").sandbox,b=a&&a.supports;if(!b)return{};var c={};F(hc(),function(d){b.call(a,d)&&(c[d]=!0)});
return c}
;function jc(a){"number"==typeof a&&(a=Math.round(a)+"px");return a}
;var kc=!!window.google_async_iframe_id,dc=kc&&window.parent||window;var lc=/^(?:([^:/?#.]+):)?(?:\/\/(?:([^/?#]*)@)?([^/#?]*?)(?::([0-9]+))?(?=[/#?]|$))?([^?#]+)?(?:\?([^#]*))?(?:#([\s\S]*))?$/;function I(a){return a?decodeURI(a):a}
function J(a,b){return b.match(lc)[a]||null}
function mc(a,b,c){if(x(b))for(var d=0;d<b.length;d++)mc(a,String(b[d]),c);else null!=b&&c.push(a+(""===b?"":"="+encodeURIComponent(String(b))))}
function nc(a){var b=[],c;for(c in a)mc(c,a[c],b);return b.join("&")}
function oc(a,b){var c=nc(b);if(c){var d=a.indexOf("#");0>d&&(d=a.length);var e=a.indexOf("?");if(0>e||e>d){e=d;var f=""}else f=a.substring(e+1,d);d=[a.substr(0,e),f,a.substr(d)];e=d[1];d[1]=c?e?e+"&"+c:c:e;c=d[0]+(d[1]?"?"+d[1]:"")+d[2]}else c=a;return c}
var pc=/#|$/;function qc(a,b){var c=a.search(pc);a:{var d=0;for(var e=b.length;0<=(d=a.indexOf(b,d))&&d<c;){var f=a.charCodeAt(d-1);if(38==f||63==f)if(f=a.charCodeAt(d+e),!f||61==f||38==f||35==f)break a;d+=e+1}d=-1}if(0>d)return null;e=a.indexOf("&",d);if(0>e||e>c)e=c;d+=b.length+1;return decodeURIComponent(a.substr(d,e-d).replace(/\+/g," "))}
;var rc=null;function sc(){var a=q.performance;return a&&a.now&&a.timing?Math.floor(a.now()+a.timing.navigationStart):A()}
function tc(){var a=void 0===a?q:a;return(a=a.performance)&&a.now?a.now():null}
;function uc(a,b,c){this.label=a;this.type=b;this.value=c;this.duration=0;this.uniqueId=this.label+"_"+this.type+"_"+Math.random();this.slotId=void 0}
;var K=q.performance,vc=!!(K&&K.mark&&K.measure&&K.clearMarks),wc=Eb(function(){var a;if(a=vc){var b;if(null===rc){rc="";try{a="";try{a=q.top.location.hash}catch(c){a=q.location.hash}a&&(rc=(b=a.match(/\bdeid=([\d,]+)/))?b[1]:"")}catch(c){}}b=rc;a=!!b.indexOf&&0<=b.indexOf("1337")}return a});
function xc(){var a=yc;this.events=[];this.c=a||q;var b=null;a&&(a.google_js_reporting_queue=a.google_js_reporting_queue||[],this.events=a.google_js_reporting_queue,b=a.google_measure_js_timing);this.b=wc()||(null!=b?b:1>Math.random())}
xc.prototype.disable=function(){this.b=!1;this.events!=this.c.google_js_reporting_queue&&(wc()&&F(this.events,zc),this.events.length=0)};
function zc(a){a&&K&&wc()&&(K.clearMarks("goog_"+a.uniqueId+"_start"),K.clearMarks("goog_"+a.uniqueId+"_end"))}
xc.prototype.start=function(a,b){if(!this.b)return null;var c=tc()||sc();c=new uc(a,b,c);var d="goog_"+c.uniqueId+"_start";K&&wc()&&K.mark(d);return c};
xc.prototype.end=function(a){if(this.b&&"number"==typeof a.value){var b=tc()||sc();a.duration=b-a.value;b="goog_"+a.uniqueId+"_end";K&&wc()&&K.mark(b);this.b&&this.events.push(a)}};if(kc&&!cc()){var Ac="."+Fa.domain;try{for(;2<Ac.split(".").length&&!cc();)Fa.domain=Ac=Ac.substr(Ac.indexOf(".")+1),dc=window.parent}catch(a){}cc()||(dc=window)}var yc=dc,Bc=new xc;if("complete"==yc.document.readyState)yc.google_measure_js_timing||Bc.disable();else if(Bc.b){var Cc=function(){yc.google_measure_js_timing||Bc.disable()},Dc=yc;
Dc.addEventListener&&Dc.addEventListener("load",Cc,!1)};var Ec=(new Date).getTime();function Fc(a){if(!a)return"";a=a.split("#")[0].split("?")[0];a=a.toLowerCase();0==a.indexOf("//")&&(a=window.location.protocol+a);/^[\w\-]*:\/\//.test(a)||(a=window.location.href);var b=a.substring(a.indexOf("://")+3),c=b.indexOf("/");-1!=c&&(b=b.substring(0,c));a=a.substring(0,a.indexOf("://"));if("http"!==a&&"https"!==a&&"chrome-extension"!==a&&"file"!==a&&"android-app"!==a&&"chrome-search"!==a&&"app"!==a)throw Error("Invalid URI scheme in origin: "+a);c="";var d=b.indexOf(":");if(-1!=d){var e=
b.substring(d+1);b=b.substring(0,d);if("http"===a&&"80"!==e||"https"===a&&"443"!==e)c=":"+e}return a+"://"+b+c}
;function Gc(){function a(){e[0]=1732584193;e[1]=4023233417;e[2]=2562383102;e[3]=271733878;e[4]=3285377520;u=m=0}
function b(a){for(var b=g,c=0;64>c;c+=4)b[c/4]=a[c]<<24|a[c+1]<<16|a[c+2]<<8|a[c+3];for(c=16;80>c;c++)a=b[c-3]^b[c-8]^b[c-14]^b[c-16],b[c]=(a<<1|a>>>31)&4294967295;a=e[0];var d=e[1],f=e[2],k=e[3],l=e[4];for(c=0;80>c;c++){if(40>c)if(20>c){var m=k^d&(f^k);var u=1518500249}else m=d^f^k,u=1859775393;else 60>c?(m=d&f|k&(d|f),u=2400959708):(m=d^f^k,u=3395469782);m=((a<<5|a>>>27)&4294967295)+m+l+u+b[c]&4294967295;l=k;k=f;f=(d<<30|d>>>2)&4294967295;d=a;a=m}e[0]=e[0]+a&4294967295;e[1]=e[1]+d&4294967295;e[2]=
e[2]+f&4294967295;e[3]=e[3]+k&4294967295;e[4]=e[4]+l&4294967295}
function c(a,c){if("string"===typeof a){a=unescape(encodeURIComponent(a));for(var d=[],e=0,g=a.length;e<g;++e)d.push(a.charCodeAt(e));a=d}c||(c=a.length);d=0;if(0==m)for(;d+64<c;)b(a.slice(d,d+64)),d+=64,u+=64;for(;d<c;)if(f[m++]=a[d++],u++,64==m)for(m=0,b(f);d+64<c;)b(a.slice(d,d+64)),d+=64,u+=64}
function d(){var a=[],d=8*u;56>m?c(k,56-m):c(k,64-(m-56));for(var g=63;56<=g;g--)f[g]=d&255,d>>>=8;b(f);for(g=d=0;5>g;g++)for(var l=24;0<=l;l-=8)a[d++]=e[g]>>l&255;return a}
for(var e=[],f=[],g=[],k=[128],l=1;64>l;++l)k[l]=0;var m,u;a();return{reset:a,update:c,digest:d,ra:function(){for(var a=d(),b="",c=0;c<a.length;c++)b+="0123456789ABCDEF".charAt(Math.floor(a[c]/16))+"0123456789ABCDEF".charAt(a[c]%16);return b}}}
;function Hc(a,b,c){var d=[],e=[];if(1==(x(c)?2:1))return e=[b,a],F(d,function(a){e.push(a)}),Ic(e.join(" "));
var f=[],g=[];F(c,function(a){g.push(a.key);f.push(a.value)});
c=Math.floor((new Date).getTime()/1E3);e=0==f.length?[c,b,a]:[f.join(":"),c,b,a];F(d,function(a){e.push(a)});
a=Ic(e.join(" "));a=[c,a];0==g.length||a.push(g.join(""));return a.join("_")}
function Ic(a){var b=Gc();b.update(a);return b.ra().toLowerCase()}
;function Jc(a){var b=Fc(String(q.location.href)),c=q.__OVERRIDE_SID;null==c&&(c=(new Ab(document)).get("SID"));if(c&&(b=(c=0==b.indexOf("https:")||0==b.indexOf("chrome-extension:"))?q.__SAPISID:q.__APISID,null==b&&(b=(new Ab(document)).get(c?"SAPISID":"APISID")),b)){c=c?"SAPISIDHASH":"APISIDHASH";var d=String(q.location.href);return d&&b&&c?[c,Hc(Fc(d),b,a||null)].join(" "):null}return null}
;function Kc(a,b){this.f=a;this.g=b;this.c=0;this.b=null}
Kc.prototype.get=function(){if(0<this.c){this.c--;var a=this.b;this.b=a.next;a.next=null}else a=this.f();return a};
function Lc(a,b){a.g(b);100>a.c&&(a.c++,b.next=a.b,a.b=b)}
;function Mc(a){q.setTimeout(function(){throw a;},0)}
var Nc;
function Oc(){var a=q.MessageChannel;"undefined"===typeof a&&"undefined"!==typeof window&&window.postMessage&&window.addEventListener&&!G("Presto")&&(a=function(){var a=document.createElement("IFRAME");a.style.display="none";a.src="";document.documentElement.appendChild(a);var b=a.contentWindow;a=b.document;a.open();a.write("");a.close();var c="callImmediate"+Math.random(),d="file:"==b.location.protocol?"*":b.location.protocol+"//"+b.location.host;a=z(function(a){if(("*"==d||a.origin==d)&&a.data==
c)this.port1.onmessage()},this);
b.addEventListener("message",a,!1);this.port1={};this.port2={postMessage:function(){b.postMessage(c,d)}}});
if("undefined"!==typeof a&&!G("Trident")&&!G("MSIE")){var b=new a,c={},d=c;b.port1.onmessage=function(){if(r(c.next)){c=c.next;var a=c.fa;c.fa=null;a()}};
return function(a){d.next={fa:a};d=d.next;b.port2.postMessage(0)}}return"undefined"!==typeof document&&"onreadystatechange"in document.createElement("SCRIPT")?function(a){var b=document.createElement("SCRIPT");
b.onreadystatechange=function(){b.onreadystatechange=null;b.parentNode.removeChild(b);b=null;a();a=null};
document.documentElement.appendChild(b)}:function(a){q.setTimeout(a,0)}}
;function Pc(){this.c=this.b=null}
var Rc=new Kc(function(){return new Qc},function(a){a.reset()});
Pc.prototype.add=function(a,b){var c=Rc.get();c.set(a,b);this.c?this.c.next=c:this.b=c;this.c=c};
Pc.prototype.remove=function(){var a=null;this.b&&(a=this.b,this.b=this.b.next,this.b||(this.c=null),a.next=null);return a};
function Qc(){this.next=this.scope=this.b=null}
Qc.prototype.set=function(a,b){this.b=a;this.scope=b;this.next=null};
Qc.prototype.reset=function(){this.next=this.scope=this.b=null};function Sc(a,b){Tc||Uc();Vc||(Tc(),Vc=!0);Wc.add(a,b)}
var Tc;function Uc(){if(q.Promise&&q.Promise.resolve){var a=q.Promise.resolve(void 0);Tc=function(){a.then(Xc)}}else Tc=function(){var a=Xc;
!za(q.setImmediate)||q.Window&&q.Window.prototype&&!G("Edge")&&q.Window.prototype.setImmediate==q.setImmediate?(Nc||(Nc=Oc()),Nc(a)):q.setImmediate(a)}}
var Vc=!1,Wc=new Pc;function Xc(){for(var a;a=Wc.remove();){try{a.b.call(a.scope)}catch(b){Mc(b)}Lc(Rc,a)}Vc=!1}
;function Yc(){this.c=-1}
;function Zc(){this.c=64;this.b=[];this.i=[];this.o=[];this.g=[];this.g[0]=128;for(var a=1;a<this.c;++a)this.g[a]=0;this.h=this.f=0;this.reset()}
C(Zc,Yc);Zc.prototype.reset=function(){this.b[0]=1732584193;this.b[1]=4023233417;this.b[2]=2562383102;this.b[3]=271733878;this.b[4]=3285377520;this.h=this.f=0};
function $c(a,b,c){c||(c=0);var d=a.o;if(t(b))for(var e=0;16>e;e++)d[e]=b.charCodeAt(c)<<24|b.charCodeAt(c+1)<<16|b.charCodeAt(c+2)<<8|b.charCodeAt(c+3),c+=4;else for(e=0;16>e;e++)d[e]=b[c]<<24|b[c+1]<<16|b[c+2]<<8|b[c+3],c+=4;for(e=16;80>e;e++){var f=d[e-3]^d[e-8]^d[e-14]^d[e-16];d[e]=(f<<1|f>>>31)&4294967295}b=a.b[0];c=a.b[1];var g=a.b[2],k=a.b[3],l=a.b[4];for(e=0;80>e;e++){if(40>e)if(20>e){f=k^c&(g^k);var m=1518500249}else f=c^g^k,m=1859775393;else 60>e?(f=c&g|k&(c|g),m=2400959708):(f=c^g^k,m=
3395469782);f=(b<<5|b>>>27)+f+l+m+d[e]&4294967295;l=k;k=g;g=(c<<30|c>>>2)&4294967295;c=b;b=f}a.b[0]=a.b[0]+b&4294967295;a.b[1]=a.b[1]+c&4294967295;a.b[2]=a.b[2]+g&4294967295;a.b[3]=a.b[3]+k&4294967295;a.b[4]=a.b[4]+l&4294967295}
Zc.prototype.update=function(a,b){if(null!=a){r(b)||(b=a.length);for(var c=b-this.c,d=0,e=this.i,f=this.f;d<b;){if(0==f)for(;d<=c;)$c(this,a,d),d+=this.c;if(t(a))for(;d<b;){if(e[f]=a.charCodeAt(d),++f,++d,f==this.c){$c(this,e);f=0;break}}else for(;d<b;)if(e[f]=a[d],++f,++d,f==this.c){$c(this,e);f=0;break}}this.f=f;this.h+=b}};
Zc.prototype.digest=function(){var a=[],b=8*this.h;56>this.f?this.update(this.g,56-this.f):this.update(this.g,this.c-(this.f-56));for(var c=this.c-1;56<=c;c--)this.i[c]=b&255,b/=256;$c(this,this.i);for(c=b=0;5>c;c++)for(var d=24;0<=d;d-=8)a[b]=this.b[c]>>d&255,++b;return a};function L(){this.c=this.c;this.o=this.o}
L.prototype.c=!1;L.prototype.dispose=function(){this.c||(this.c=!0,this.j())};
function ad(a,b){a.c?r(void 0)?b.call(void 0):b():(a.o||(a.o=[]),a.o.push(r(void 0)?z(b,void 0):b))}
L.prototype.j=function(){if(this.o)for(;this.o.length;)this.o.shift()()};
function bd(a){a&&"function"==typeof a.dispose&&a.dispose()}
function cd(a){for(var b=0,c=arguments.length;b<c;++b){var d=arguments[b];ya(d)?cd.apply(null,d):bd(d)}}
;function dd(a){if(a.classList)return a.classList;a=a.className;return t(a)&&a.match(/\S+/g)||[]}
function ed(a,b){if(a.classList)var c=a.classList.contains(b);else c=dd(a),c=0<=Ga(c,b);return c}
function fd(){var a=document.body;a.classList?a.classList.remove("inverted-hdpi"):ed(a,"inverted-hdpi")&&(a.className=Ha(dd(a),function(a){return"inverted-hdpi"!=a}).join(" "))}
;var gd="StopIteration"in q?q.StopIteration:{message:"StopIteration",stack:""};function hd(){}
hd.prototype.next=function(){throw gd;};
hd.prototype.D=function(){return this};
function id(a){if(a instanceof hd)return a;if("function"==typeof a.D)return a.D(!1);if(ya(a)){var b=0,c=new hd;c.next=function(){for(;;){if(b>=a.length)throw gd;if(b in a)return a[b++];b++}};
return c}throw Error("Not implemented");}
function jd(a,b){if(ya(a))try{F(a,b,void 0)}catch(c){if(c!==gd)throw c;}else{a=id(a);try{for(;;)b.call(void 0,a.next(),void 0,a)}catch(c){if(c!==gd)throw c;}}}
function kd(a){if(ya(a))return Ma(a);a=id(a);var b=[];jd(a,function(a){b.push(a)});
return b}
;function ld(a,b){this.f={};this.b=[];this.g=this.c=0;var c=arguments.length;if(1<c){if(c%2)throw Error("Uneven number of arguments");for(var d=0;d<c;d+=2)this.set(arguments[d],arguments[d+1])}else if(a)if(a instanceof ld)for(c=md(a),d=0;d<c.length;d++)this.set(c[d],a.get(c[d]));else for(d in a)this.set(d,a[d])}
function md(a){nd(a);return a.b.concat()}
h=ld.prototype;h.equals=function(a,b){if(this===a)return!0;if(this.c!=a.c)return!1;var c=b||od;nd(this);for(var d,e=0;d=this.b[e];e++)if(!c(this.get(d),a.get(d)))return!1;return!0};
function od(a,b){return a===b}
h.isEmpty=function(){return 0==this.c};
h.clear=function(){this.f={};this.g=this.c=this.b.length=0};
h.remove=function(a){return Object.prototype.hasOwnProperty.call(this.f,a)?(delete this.f[a],this.c--,this.g++,this.b.length>2*this.c&&nd(this),!0):!1};
function nd(a){if(a.c!=a.b.length){for(var b=0,c=0;b<a.b.length;){var d=a.b[b];Object.prototype.hasOwnProperty.call(a.f,d)&&(a.b[c++]=d);b++}a.b.length=c}if(a.c!=a.b.length){var e={};for(c=b=0;b<a.b.length;)d=a.b[b],Object.prototype.hasOwnProperty.call(e,d)||(a.b[c++]=d,e[d]=1),b++;a.b.length=c}}
h.get=function(a,b){return Object.prototype.hasOwnProperty.call(this.f,a)?this.f[a]:b};
h.set=function(a,b){Object.prototype.hasOwnProperty.call(this.f,a)||(this.c++,this.b.push(a),this.g++);this.f[a]=b};
h.forEach=function(a,b){for(var c=md(this),d=0;d<c.length;d++){var e=c[d],f=this.get(e);a.call(b,f,e,this)}};
h.clone=function(){return new ld(this)};
h.D=function(a){nd(this);var b=0,c=this.g,d=this,e=new hd;e.next=function(){if(c!=d.g)throw Error("The map has changed since the iterator was created");if(b>=d.b.length)throw gd;var e=d.b[b++];return a?e:d.f[e]};
return e};function pd(a){var b=[];qd(new rd,a,b);return b.join("")}
function rd(){}
function qd(a,b,c){if(null==b)c.push("null");else{if("object"==typeof b){if(x(b)){var d=b;b=d.length;c.push("[");for(var e="",f=0;f<b;f++)c.push(e),qd(a,d[f],c),e=",";c.push("]");return}if(b instanceof String||b instanceof Number||b instanceof Boolean)b=b.valueOf();else{c.push("{");e="";for(d in b)Object.prototype.hasOwnProperty.call(b,d)&&(f=b[d],"function"!=typeof f&&(c.push(e),sd(d,c),c.push(":"),qd(a,f,c),e=","));c.push("}");return}}switch(typeof b){case "string":sd(b,c);break;case "number":c.push(isFinite(b)&&
!isNaN(b)?String(b):"null");break;case "boolean":c.push(String(b));break;case "function":c.push("null");break;default:throw Error("Unknown type: "+typeof b);}}}
var td={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\u000b"},ud=/\uffff/.test("\uffff")?/[\\"\x00-\x1f\x7f-\uffff]/g:/[\\"\x00-\x1f\x7f-\xff]/g;function sd(a,b){b.push('"',a.replace(ud,function(a){var b=td[a];b||(b="\\u"+(a.charCodeAt(0)|65536).toString(16).substr(1),td[a]=b);return b}),'"')}
;function vd(a){if(!a)return!1;try{return!!a.$goog_Thenable}catch(b){return!1}}
;function M(a){this.b=0;this.o=void 0;this.g=this.c=this.f=null;this.h=this.i=!1;if(a!=va)try{var b=this;a.call(void 0,function(a){wd(b,2,a)},function(a){wd(b,3,a)})}catch(c){wd(this,3,c)}}
function xd(){this.next=this.context=this.onRejected=this.c=this.b=null;this.f=!1}
xd.prototype.reset=function(){this.context=this.onRejected=this.c=this.b=null;this.f=!1};
var yd=new Kc(function(){return new xd},function(a){a.reset()});
function zd(a,b,c){var d=yd.get();d.c=a;d.onRejected=b;d.context=c;return d}
function Ad(a){return new M(function(b,c){c(a)})}
M.prototype.then=function(a,b,c){return Bd(this,za(a)?a:null,za(b)?b:null,c)};
M.prototype.$goog_Thenable=!0;function Cd(a,b){return Bd(a,null,b,void 0)}
M.prototype.cancel=function(a){0==this.b&&Sc(function(){var b=new Ed(a);Fd(this,b)},this)};
function Fd(a,b){if(0==a.b)if(a.f){var c=a.f;if(c.c){for(var d=0,e=null,f=null,g=c.c;g&&(g.f||(d++,g.b==a&&(e=g),!(e&&1<d)));g=g.next)e||(f=g);e&&(0==c.b&&1==d?Fd(c,b):(f?(d=f,d.next==c.g&&(c.g=d),d.next=d.next.next):Gd(c),Hd(c,e,3,b)))}a.f=null}else wd(a,3,b)}
function Id(a,b){a.c||2!=a.b&&3!=a.b||Jd(a);a.g?a.g.next=b:a.c=b;a.g=b}
function Bd(a,b,c,d){var e=zd(null,null,null);e.b=new M(function(a,g){e.c=b?function(c){try{var e=b.call(d,c);a(e)}catch(m){g(m)}}:a;
e.onRejected=c?function(b){try{var e=c.call(d,b);!r(e)&&b instanceof Ed?g(b):a(e)}catch(m){g(m)}}:g});
e.b.f=a;Id(a,e);return e.b}
M.prototype.u=function(a){this.b=0;wd(this,2,a)};
M.prototype.A=function(a){this.b=0;wd(this,3,a)};
function wd(a,b,c){if(0==a.b){a===c&&(b=3,c=new TypeError("Promise cannot resolve to itself"));a.b=1;a:{var d=c,e=a.u,f=a.A;if(d instanceof M){Id(d,zd(e||va,f||null,a));var g=!0}else if(vd(d))d.then(e,f,a),g=!0;else{if(y(d))try{var k=d.then;if(za(k)){Kd(d,k,e,f,a);g=!0;break a}}catch(l){f.call(a,l);g=!0;break a}g=!1}}g||(a.o=c,a.b=b,a.f=null,Jd(a),3!=b||c instanceof Ed||Ld(a,c))}}
function Kd(a,b,c,d,e){function f(a){k||(k=!0,d.call(e,a))}
function g(a){k||(k=!0,c.call(e,a))}
var k=!1;try{b.call(a,g,f)}catch(l){f(l)}}
function Jd(a){a.i||(a.i=!0,Sc(a.l,a))}
function Gd(a){var b=null;a.c&&(b=a.c,a.c=b.next,b.next=null);a.c||(a.g=null);return b}
M.prototype.l=function(){for(var a;a=Gd(this);)Hd(this,a,this.b,this.o);this.i=!1};
function Hd(a,b,c,d){if(3==c&&b.onRejected&&!b.f)for(;a&&a.h;a=a.f)a.h=!1;if(b.b)b.b.f=null,Md(b,c,d);else try{b.f?b.c.call(b.context):Md(b,c,d)}catch(e){Nd.call(null,e)}Lc(yd,b)}
function Md(a,b,c){2==b?a.c.call(a.context,c):a.onRejected&&a.onRejected.call(a.context,c)}
function Ld(a,b){a.h=!0;Sc(function(){a.h&&Nd.call(null,b)})}
var Nd=Mc;function Ed(a){E.call(this,a)}
C(Ed,E);Ed.prototype.name="cancel";function N(a){L.call(this);this.i=1;this.g=[];this.h=0;this.b=[];this.f={};this.l=!!a}
C(N,L);h=N.prototype;h.subscribe=function(a,b,c){var d=this.f[a];d||(d=this.f[a]=[]);var e=this.i;this.b[e]=a;this.b[e+1]=b;this.b[e+2]=c;this.i=e+3;d.push(e);return e};
function Od(a,b,c,d){if(b=a.f[b]){var e=a.b;(b=Ka(b,function(a){return e[a+1]==c&&e[a+2]==d}))&&a.K(b)}}
h.K=function(a){var b=this.b[a];if(b){var c=this.f[b];0!=this.h?(this.g.push(a),this.b[a+1]=va):(c&&La(c,a),delete this.b[a],delete this.b[a+1],delete this.b[a+2])}return!!b};
h.J=function(a,b){var c=this.f[a];if(c){for(var d=Array(arguments.length-1),e=1,f=arguments.length;e<f;e++)d[e-1]=arguments[e];if(this.l)for(e=0;e<c.length;e++){var g=c[e];Pd(this.b[g+1],this.b[g+2],d)}else{this.h++;try{for(e=0,f=c.length;e<f;e++)g=c[e],this.b[g+1].apply(this.b[g+2],d)}finally{if(this.h--,0<this.g.length&&0==this.h)for(;c=this.g.pop();)this.K(c)}}return 0!=e}return!1};
function Pd(a,b,c){Sc(function(){a.apply(b,c)})}
h.clear=function(a){if(a){var b=this.f[a];b&&(F(b,this.K,this),delete this.f[a])}else this.b.length=0,this.f={}};
h.j=function(){N.w.j.call(this);this.clear();this.g.length=0};function Qd(a){this.b=a}
Qd.prototype.set=function(a,b){r(b)?this.b.set(a,pd(b)):this.b.remove(a)};
Qd.prototype.get=function(a){try{var b=this.b.get(a)}catch(c){return}if(null!==b)try{return JSON.parse(b)}catch(c){throw"Storage: Invalid value was encountered";}};
Qd.prototype.remove=function(a){this.b.remove(a)};function Rd(a){this.b=a}
C(Rd,Qd);function Sd(a){this.data=a}
function Td(a){return!r(a)||a instanceof Sd?a:new Sd(a)}
Rd.prototype.set=function(a,b){Rd.w.set.call(this,a,Td(b))};
Rd.prototype.c=function(a){a=Rd.w.get.call(this,a);if(!r(a)||a instanceof Object)return a;throw"Storage: Invalid value was encountered";};
Rd.prototype.get=function(a){if(a=this.c(a)){if(a=a.data,!r(a))throw"Storage: Invalid value was encountered";}else a=void 0;return a};function Ud(a){this.b=a}
C(Ud,Rd);Ud.prototype.set=function(a,b,c){if(b=Td(b)){if(c){if(c<A()){Ud.prototype.remove.call(this,a);return}b.expiration=c}b.creation=A()}Ud.w.set.call(this,a,b)};
Ud.prototype.c=function(a){var b=Ud.w.c.call(this,a);if(b){var c=b.creation,d=b.expiration;if(d&&d<A()||c&&c>A())Ud.prototype.remove.call(this,a);else return b}};function Vd(){}
;function Wd(){}
C(Wd,Vd);Wd.prototype.clear=function(){var a=kd(this.D(!0)),b=this;F(a,function(a){b.remove(a)})};function Xd(a){this.b=a}
C(Xd,Wd);h=Xd.prototype;h.isAvailable=function(){if(!this.b)return!1;try{return this.b.setItem("__sak","1"),this.b.removeItem("__sak"),!0}catch(a){return!1}};
h.set=function(a,b){try{this.b.setItem(a,b)}catch(c){if(0==this.b.length)throw"Storage mechanism: Storage disabled";throw"Storage mechanism: Quota exceeded";}};
h.get=function(a){a=this.b.getItem(a);if(!t(a)&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
h.remove=function(a){this.b.removeItem(a)};
h.D=function(a){var b=0,c=this.b,d=new hd;d.next=function(){if(b>=c.length)throw gd;var d=c.key(b++);if(a)return d;d=c.getItem(d);if(!t(d))throw"Storage mechanism: Invalid value was encountered";return d};
return d};
h.clear=function(){this.b.clear()};
h.key=function(a){return this.b.key(a)};function Yd(){var a=null;try{a=window.localStorage||null}catch(b){}this.b=a}
C(Yd,Xd);function Zd(a,b){this.c=a;this.b=null;if(mb&&!(9<=Number(wb))){$d||($d=new ld);this.b=$d.get(a);this.b||(b?this.b=document.getElementById(b):(this.b=document.createElement("userdata"),this.b.addBehavior("#default#userData"),document.body.appendChild(this.b)),$d.set(a,this.b));try{this.b.load(this.c)}catch(c){this.b=null}}}
C(Zd,Wd);var ae={".":".2E","!":".21","~":".7E","*":".2A","'":".27","(":".28",")":".29","%":"."},$d=null;function be(a){return"_"+encodeURIComponent(a).replace(/[.!~*'()%]/g,function(a){return ae[a]})}
h=Zd.prototype;h.isAvailable=function(){return!!this.b};
h.set=function(a,b){this.b.setAttribute(be(a),b);ce(this)};
h.get=function(a){a=this.b.getAttribute(be(a));if(!t(a)&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
h.remove=function(a){this.b.removeAttribute(be(a));ce(this)};
h.D=function(a){var b=0,c=this.b.XMLDocument.documentElement.attributes,d=new hd;d.next=function(){if(b>=c.length)throw gd;var d=c[b++];if(a)return decodeURIComponent(d.nodeName.replace(/\./g,"%")).substr(1);d=d.nodeValue;if(!t(d))throw"Storage mechanism: Invalid value was encountered";return d};
return d};
h.clear=function(){for(var a=this.b.XMLDocument.documentElement,b=a.attributes.length;0<b;b--)a.removeAttribute(a.attributes[b-1].nodeName);ce(this)};
function ce(a){try{a.b.save(a.c)}catch(b){throw"Storage mechanism: Quota exceeded";}}
;function de(a,b){this.c=a;this.b=b+"::"}
C(de,Wd);de.prototype.set=function(a,b){this.c.set(this.b+a,b)};
de.prototype.get=function(a){return this.c.get(this.b+a)};
de.prototype.remove=function(a){this.c.remove(this.b+a)};
de.prototype.D=function(a){var b=this.c.D(!0),c=this,d=new hd;d.next=function(){for(var d=b.next();d.substr(0,c.b.length)!=c.b;)d=b.next();return a?d.substr(c.b.length):c.c.get(d)};
return d};function ee(){this.c=[];this.b=-1}
ee.prototype.set=function(a,b){b=void 0===b?!0:b;0<=a&&52>a&&0===a%1&&this.c[a]!=b&&(this.c[a]=b,this.b=-1)};
ee.prototype.get=function(a){return!!this.c[a]};
function fe(a){-1==a.b&&(a.b=Ja(a.c,function(a,c,d){return c?a+Math.pow(2,d):a},0));
return a.b}
;function ge(a,b){if(1<b.length)a[b[0]]=b[1];else{var c=b[0],d;for(d in c)a[d]=c[d]}}
var O=window.performance&&window.performance.timing&&window.performance.now?function(){return window.performance.timing.navigationStart+window.performance.now()}:function(){return(new Date).getTime()};var he=window.yt&&window.yt.config_||window.ytcfg&&window.ytcfg.data_||{};v("yt.config_",he,void 0);function P(a){ge(he,arguments)}
function Q(a,b){return a in he?he[a]:b}
function ie(a){return Q(a,void 0)}
function je(){return Q("PLAYER_CONFIG",{})}
;function ke(){var a=le;w("yt.ads.biscotti.getId_")||v("yt.ads.biscotti.getId_",a,void 0)}
function me(a){v("yt.ads.biscotti.lastId_",a,void 0)}
;function ne(a){var b=oe;a=void 0===a?w("yt.ads.biscotti.lastId_")||"":a;b=Object.assign(pe(b),qe(b));b.ca_type="image";a&&(b.bid=a);return b}
function pe(a){var b={};b.dt=Ec;b.flash="0";a:{try{var c=a.b.top.location.href}catch(f){a=2;break a}a=c?c===a.c.location.href?0:1:2}b=(b.frm=a,b);b.u_tz=-(new Date).getTimezoneOffset();var d=void 0===d?D:d;try{var e=d.history.length}catch(f){e=0}b.u_his=e;b.u_java=!!D.navigator&&"unknown"!==typeof D.navigator.javaEnabled&&!!D.navigator.javaEnabled&&D.navigator.javaEnabled();D.screen&&(b.u_h=D.screen.height,b.u_w=D.screen.width,b.u_ah=D.screen.availHeight,b.u_aw=D.screen.availWidth,b.u_cd=D.screen.colorDepth);
D.navigator&&D.navigator.plugins&&(b.u_nplug=D.navigator.plugins.length);D.navigator&&D.navigator.mimeTypes&&(b.u_nmime=D.navigator.mimeTypes.length);return b}
function qe(a){var b=a.b;try{var c=b.screenX;var d=b.screenY}catch(da){}try{var e=b.outerWidth;var f=b.outerHeight}catch(da){}try{var g=b.innerWidth;var k=b.innerHeight}catch(da){}b=[b.screenLeft,b.screenTop,c,d,b.screen?b.screen.availWidth:void 0,b.screen?b.screen.availTop:void 0,e,f,g,k];c=a.b.top;try{var l=(c||window).document,m="CSS1Compat"==l.compatMode?l.documentElement:l.body;var u=(new Ub(m.clientWidth,m.clientHeight)).round()}catch(da){u=new Ub(-12245933,-12245933)}l=u;u={};m=new ee;q.SVGElement&&
q.document.createElementNS&&m.set(0);c=ic();c["allow-top-navigation-by-user-activation"]&&m.set(1);c["allow-popups-to-escape-sandbox"]&&m.set(2);q.crypto&&q.crypto.subtle&&m.set(3);m=fe(m);u.bc=m;u.bih=l.height;u.biw=l.width;u.brdim=b.join();a=a.c;return u.vis={visible:1,hidden:2,prerender:3,preview:4,unloaded:5}[a.visibilityState||a.webkitVisibilityState||a.mozVisibilityState||""]||0,u.wgl=!!D.WebGLRenderingContext,u}
var oe=new function(){var a=window.document;this.b=window;this.c=a};A();function re(a){return a&&window.yterr?function(){try{return a.apply(this,arguments)}catch(b){R(b)}}:a}
function R(a,b,c,d,e){var f=w("yt.logging.errors.log");f?f(a,b,c,d,e):(f=Q("ERRORS",[]),f.push([a,b,c,d,e]),P("ERRORS",f))}
function se(a){R(a,"WARNING",void 0,void 0,void 0)}
;function S(a){return Q("EXPERIMENT_FLAGS",{})[a]}
;var te=r(XMLHttpRequest)?function(){return new XMLHttpRequest}:r(ActiveXObject)?function(){return new ActiveXObject("Microsoft.XMLHTTP")}:null;
function ue(){if(!te)return null;var a=te();return"open"in a?a:null}
function ve(a){switch(a&&"status"in a?a.status:-1){case 200:case 201:case 202:case 203:case 204:case 205:case 206:case 304:return!0;default:return!1}}
;function T(a,b){za(a)&&(a=re(a));return window.setTimeout(a,b)}
function U(a){window.clearTimeout(a)}
;function we(a){var b=[];ab(a,function(a,d){var c=encodeURIComponent(String(d)),f;x(a)?f=a:f=[a];F(f,function(a){""==a?b.push(c):b.push(c+"="+encodeURIComponent(String(a)))})});
return b.join("&")}
function xe(a){"?"==a.charAt(0)&&(a=a.substr(1));a=a.split("&");for(var b={},c=0,d=a.length;c<d;c++){var e=a[c].split("=");if(1==e.length&&e[0]||2==e.length){var f=decodeURIComponent((e[0]||"").replace(/\+/g," "));e=decodeURIComponent((e[1]||"").replace(/\+/g," "));f in b?x(b[f])?Na(b[f],e):b[f]=[b[f],e]:b[f]=e}}return b}
function ye(a,b,c){var d=a.split("#",2);a=d[0];d=1<d.length?"#"+d[1]:"";var e=a.split("?",2);a=e[0];e=xe(e[1]||"");for(var f in b)!c&&null!==e&&f in e||(e[f]=b[f]);return oc(a,e)+d}
;var ze={Authorization:"AUTHORIZATION","X-Goog-Visitor-Id":"SANDBOXED_VISITOR_ID","X-YouTube-Client-Name":"INNERTUBE_CONTEXT_CLIENT_NAME","X-YouTube-Client-Version":"INNERTUBE_CONTEXT_CLIENT_VERSION","X-Youtube-Identity-Token":"ID_TOKEN","X-YouTube-Page-CL":"PAGE_CL","X-YouTube-Page-Label":"PAGE_BUILD_LABEL","X-YouTube-Variants-Checksum":"VARIANTS_CHECKSUM"},Ae="app debugcss debugjs expflag force_ad_params force_viral_ad_response_params forced_experiments internalcountrycode internalipoverride absolute_experiments conditional_experiments sbb sr_bns_address".split(" "),
Be=!1;
function Ce(a,b){b=void 0===b?{}:b;if(!c)var c=window.location.href;var d=J(1,a),e=I(J(3,a));d&&e?(d=c,c=a.match(lc),d=d.match(lc),c=c[3]==d[3]&&c[1]==d[1]&&c[4]==d[4]):c=e?I(J(3,c))==e&&(Number(J(4,c))||null)==(Number(J(4,a))||null):!0;d=!!S("web_ajax_ignore_global_headers_if_set");for(var f in ze)e=Q(ze[f]),!e||!c&&!De(a,f)||d&&void 0!==b[f]||(b[f]=e);if(c||De(a,"X-YouTube-Utc-Offset"))b["X-YouTube-Utc-Offset"]=-(new Date).getTimezoneOffset();S("pass_biscotti_id_in_header_ajax")&&(c||De(a,"X-YouTube-Ad-Signals"))&&
(f=ne(void 0),b["X-YouTube-Ad-Signals"]=we(f));return b}
function Ee(a){var b=window.location.search,c=I(J(3,a)),d=I(J(5,a));d=(c=c&&c.endsWith("youtube.com"))&&d&&d.startsWith("/api/");if(!c||d)return a;var e=xe(b),f={};F(Ae,function(a){e[a]&&(f[a]=e[a])});
return ye(a,f||{},!1)}
function De(a,b){var c=Q("CORS_HEADER_WHITELIST")||{},d=I(J(3,a));return d?(c=c[d])?0<=Ga(c,b):!1:!0}
function Fe(a,b){if(window.fetch&&"XML"!=b.format){var c={method:b.method||"GET",credentials:"same-origin"};b.headers&&(c.headers=b.headers);a=Ge(a,b);var d=He(a,b);d&&(c.body=d);b.withCredentials&&(c.credentials="include");var e=!1,f;fetch(a,c).then(function(a){if(!e){e=!0;f&&U(f);var c=a.ok,d=function(d){d=d||{};var e=b.context||q;c?b.onSuccess&&b.onSuccess.call(e,d,a):b.onError&&b.onError.call(e,d,a);b.da&&b.da.call(e,d,a)};
"JSON"==(b.format||"JSON")&&(c||400<=a.status&&500>a.status)?a.json().then(d,function(){d(null)}):d(null)}});
b.ha&&0<b.timeout&&(f=T(function(){e||(e=!0,U(f),b.ha.call(b.context||q))},b.timeout))}else Ie(a,b)}
function Ie(a,b){var c=b.format||"JSON";a=Ge(a,b);var d=He(a,b),e=!1,f,g=Je(a,function(a){if(!e){e=!0;f&&U(f);var d=ve(a),g=null,k=400<=a.status&&500>a.status,da=500<=a.status&&600>a.status;if(d||k||da)g=Ke(c,a,b.kb);if(d)a:if(a&&204==a.status)d=!0;else{switch(c){case "XML":d=0==parseInt(g&&g.return_code,10);break a;case "RAW":d=!0;break a}d=!!g}g=g||{};k=b.context||q;d?b.onSuccess&&b.onSuccess.call(k,a,g):b.onError&&b.onError.call(k,a,g);b.da&&b.da.call(k,a,g)}},b.method,d,b.headers,b.responseType,
b.withCredentials);
b.L&&0<b.timeout&&(f=T(function(){e||(e=!0,g.abort(),U(f),b.L.call(b.context||q,g))},b.timeout));
return g}
function Ge(a,b){b.wa&&(a=document.location.protocol+"//"+document.location.hostname+(document.location.port?":"+document.location.port:"")+a);var c=Q("XSRF_FIELD_NAME",void 0),d=b.Ta;d&&(d[c]&&delete d[c],a=ye(a,d||{},!0));return a}
function He(a,b){var c=Q("XSRF_FIELD_NAME",void 0),d=Q("XSRF_TOKEN",void 0),e=b.postBody||"",f=b.B,g=ie("XSRF_FIELD_NAME"),k;b.headers&&(k=b.headers["Content-Type"]);b.lb||I(J(3,a))&&!b.withCredentials&&I(J(3,a))!=document.location.hostname||"POST"!=b.method||k&&"application/x-www-form-urlencoded"!=k||b.B&&b.B[g]||(f||(f={}),f[c]=d);f&&t(e)&&(e=xe(e),jb(e,f),e=b.ia&&"JSON"==b.ia?JSON.stringify(e):nc(e));f=e||f&&!eb(f);!Be&&f&&"POST"!=b.method&&(Be=!0,R(Error("AJAX request with postData should use POST")));
return e}
function Ke(a,b,c){var d=null;switch(a){case "JSON":a=b.responseText;b=b.getResponseHeader("Content-Type")||"";a&&0<=b.indexOf("json")&&(d=JSON.parse(a));break;case "XML":if(b=(b=b.responseXML)?Le(b):null)d={},F(b.getElementsByTagName("*"),function(a){d[a.tagName]=Me(a)})}c&&Ne(d);
return d}
function Ne(a){if(y(a))for(var b in a){var c;(c="html_content"==b)||(c=b.length-5,c=0<=c&&b.indexOf("_html",c)==c);if(c){c=b;var d=Qb(a[b],null);a[c]=d}else Ne(a[b])}}
function Le(a){return a?(a=("responseXML"in a?a.responseXML:a).getElementsByTagName("root"))&&0<a.length?a[0]:null:null}
function Me(a){var b="";F(a.childNodes,function(a){b+=a.nodeValue});
return b}
function Oe(a,b){b.method="POST";b.B||(b.B={});Ie(a,b)}
function Je(a,b,c,d,e,f,g){function k(){4==(l&&"readyState"in l?l.readyState:0)&&b&&re(b)(l)}
c=void 0===c?"GET":c;d=void 0===d?"":d;var l=ue();if(!l)return null;"onloadend"in l?l.addEventListener("loadend",k,!1):l.onreadystatechange=k;S("debug_forward_web_query_parameters")&&(a=Ee(a));l.open(c,a,!0);f&&(l.responseType=f);g&&(l.withCredentials=!0);c="POST"==c&&(void 0===window.FormData||!(d instanceof FormData));if(e=Ce(a,e))for(var m in e)l.setRequestHeader(m,e[m]),"content-type"==m.toLowerCase()&&(c=!1);c&&l.setRequestHeader("Content-Type","application/x-www-form-urlencoded");l.send(d);
return l}
;var Pe={},Qe=0;
function Re(a,b,c,d,e){e=void 0===e?"":e;a&&(c&&(c=Ya,c=!(c&&0<=c.toLowerCase().indexOf("cobalt"))),c?a&&(a instanceof H||(a="object"==typeof a&&a.I?a.H():String(a),Lb.test(a)||(a="about:invalid#zClosurez"),a=Nb(a)),b=Kb(a),"about:invalid#zClosurez"===b?a="":(b instanceof Ob?a=b:(d="object"==typeof b,a=null,d&&b.aa&&(a=b.X()),b=Pa(d&&b.I?b.H():String(b)),a=Qb(b,a)),a=encodeURIComponent(String(pd(a instanceof Ob&&a.constructor===Ob&&a.f===Pb?a.b:"type_error:SafeHtml")))),/^[\s\xa0]*$/.test(a)||(a=
Yb("IFRAME",{src:'javascript:"<body><img src=\\""+'+a+'+"\\"></body>"',style:"display:none"}),(9==a.nodeType?a:a.ownerDocument||a.document).body.appendChild(a))):e?Je(a,b,"POST",e,d):Q("USE_NET_AJAX_FOR_PING_TRANSPORT",!1)||d?Je(a,b,"GET","",d):((d=he.EXPERIMENT_FLAGS)&&d.web_use_beacon_api_for_ad_click_server_pings&&-1!=I(J(5,a)).indexOf("/aclk")&&"1"===qc(a,"ae")&&"1"===qc(a,"act")?Se(a)?(b&&b(),d=!0):d=!1:d=!1,d||Te(a,b)))}
function Se(a,b){try{if(window.navigator&&window.navigator.sendBeacon&&window.navigator.sendBeacon(a,void 0===b?"":b))return!0}catch(c){}return!1}
function Te(a,b){var c=new Image,d=""+Qe++;Pe[d]=c;c.onload=c.onerror=function(){b&&Pe[d]&&b();delete Pe[d]};
c.src=a}
;var Ue={},Ve=0;
function We(a,b,c,d,e,f){f=f||{};f.name=c||Q("INNERTUBE_CONTEXT_CLIENT_NAME",1);f.version=d||Q("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0);b=void 0===b?"ERROR":b;e=void 0===e?!1:e;b=void 0===b?"ERROR":b;e=window&&window.yterr||(void 0===e?!1:e)||!1;if(!(!a||!e||5<=Ve||(c=a.stacktrace,d=a.columnNumber,a.hasOwnProperty("params")&&(f.params=JSON.stringify(a.params).substr(0,500)),a=Cb(a),c=c||a.stack,e=a.lineNumber.toString(),isNaN(e)||isNaN(d)||(e=e+":"+d),window.yterr&&za(window.yterr)&&window.yterr(a),
Ue[a.message]||0<=c.indexOf("/YouTubeCenter.js")||0<=c.indexOf("/mytube.js")))){b={Ta:{a:"logerror",t:"jserror",type:a.name,msg:a.message.substr(0,1E3),line:e,level:b,"client.name":f.name},B:{url:Q("PAGE_NAME",window.location.href),file:a.fileName},method:"POST"};f.version&&(b["client.version"]=f.version);c&&(b.B.stack=c);for(var g in f)b.B["client."+g]=f[g];if(g=Q("LATEST_ECATCHER_SERVICE_TRACKING_PARAMS",void 0))for(var k in g)b.B[k]=g[k];Ie(Q("ECATCHER_REPORT_HOST","")+"/error_204",b);Ue[a.message]=
!0;Ve++}}
;var Xe=window.yt&&window.yt.msgs_||window.ytcfg&&window.ytcfg.msgs||{};v("yt.msgs_",Xe,void 0);function Ye(a){ge(Xe,arguments)}
;function Ze(a){a&&(a.dataset?a.dataset[$e("loaded")]="true":a.setAttribute("data-loaded","true"))}
function af(a,b){return a?a.dataset?a.dataset[$e(b)]:a.getAttribute("data-"+b):null}
var bf={};function $e(a){return bf[a]||(bf[a]=String(a).replace(/\-([a-z])/g,function(a,c){return c.toUpperCase()}))}
;var cf=w("ytPubsubPubsubInstance")||new N;N.prototype.subscribe=N.prototype.subscribe;N.prototype.unsubscribeByKey=N.prototype.K;N.prototype.publish=N.prototype.J;N.prototype.clear=N.prototype.clear;v("ytPubsubPubsubInstance",cf,void 0);var df=w("ytPubsubPubsubSubscribedKeys")||{};v("ytPubsubPubsubSubscribedKeys",df,void 0);var ef=w("ytPubsubPubsubTopicToKeys")||{};v("ytPubsubPubsubTopicToKeys",ef,void 0);var ff=w("ytPubsubPubsubIsSynchronous")||{};v("ytPubsubPubsubIsSynchronous",ff,void 0);
function gf(a,b){var c=hf();if(c){var d=c.subscribe(a,function(){var c=arguments;var f=function(){df[d]&&b.apply(window,c)};
try{ff[a]?f():T(f,0)}catch(g){R(g)}},void 0);
df[d]=!0;ef[a]||(ef[a]=[]);ef[a].push(d);return d}return 0}
function jf(a){var b=hf();b&&("number"==typeof a?a=[a]:t(a)&&(a=[parseInt(a,10)]),F(a,function(a){b.unsubscribeByKey(a);delete df[a]}))}
function kf(a,b){var c=hf();c&&c.publish.apply(c,arguments)}
function lf(a){var b=hf();if(b)if(b.clear(a),a)mf(a);else for(var c in ef)mf(c)}
function hf(){return w("ytPubsubPubsubInstance")}
function mf(a){ef[a]&&(a=ef[a],F(a,function(a){df[a]&&delete df[a]}),a.length=0)}
;var nf=/\.vflset|-vfl[a-zA-Z0-9_+=-]+/,of=/-[a-zA-Z]{2,3}_[a-zA-Z]{2,3}(?=(\/|$))/;function pf(a,b,c){c=void 0===c?null:c;if(window.spf){c="";if(a){var d=a.indexOf("jsbin/"),e=a.lastIndexOf(".js"),f=d+6;-1<d&&-1<e&&e>f&&(c=a.substring(f,e),c=c.replace(nf,""),c=c.replace(of,""),c=c.replace("debug-",""),c=c.replace("tracing-",""))}spf.script.load(a,c,b)}else qf(a,b,c)}
function qf(a,b,c){c=void 0===c?null:c;var d=rf(a),e=document.getElementById(d),f=e&&af(e,"loaded"),g=e&&!f;f?b&&b():(b&&(f=gf(d,b),b=""+(b[Aa]||(b[Aa]=++Ba)),sf[b]=f),g||(e=tf(a,d,function(){af(e,"loaded")||(Ze(e),kf(d),T(Ea(lf,d),0))},c)))}
function tf(a,b,c,d){d=void 0===d?null:d;var e=document.createElement("SCRIPT");e.id=b;e.onload=function(){c&&setTimeout(c,0)};
e.onreadystatechange=function(){switch(e.readyState){case "loaded":case "complete":e.onload()}};
d&&e.setAttribute("nonce",d);Sb(e,ac(a));a=document.getElementsByTagName("head")[0]||document.body;a.insertBefore(e,a.firstChild);return e}
function uf(a){a=rf(a);var b=document.getElementById(a);b&&(lf(a),b.parentNode.removeChild(b))}
function vf(a,b){if(a&&b){var c=""+(b[Aa]||(b[Aa]=++Ba));(c=sf[c])&&jf(c)}}
function rf(a){var b=document.createElement("a");Rb(b,a);a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"js-"+Xa(a)}
var sf={};function wf(){}
function xf(a,b){return yf(a,1,b)}
;function zf(){}
n(zf,wf);function yf(a,b,c){isNaN(c)&&(c=void 0);var d=w("yt.scheduler.instance.addJob");return d?d(a,b,c):void 0===c?(a(),NaN):T(a,c||0)}
function Af(a){if(!isNaN(a)){var b=w("yt.scheduler.instance.cancelJob");b?b(a):U(a)}}
zf.prototype.start=function(){var a=w("yt.scheduler.instance.start");a&&a()};
zf.prototype.pause=function(){var a=w("yt.scheduler.instance.pause");a&&a()};
wa(zf);zf.getInstance();var Bf=[],Cf=!1;function Df(){if("1"!=bb(je(),"args","privembed")){var a=function(){Cf=!0;"google_ad_status"in window?P("DCLKSTAT",1):P("DCLKSTAT",2)};
pf("//static.doubleclick.net/instream/ad_status.js",a);Bf.push(xf(function(){Cf||"google_ad_status"in window||(vf("//static.doubleclick.net/instream/ad_status.js",a),Cf=!0,P("DCLKSTAT",3))},5E3))}}
function Ef(){return parseInt(Q("DCLKSTAT",0),10)}
;function Ff(){this.c=!1;this.b=null}
Ff.prototype.initialize=function(a,b,c,d,e){var f=this;b?(this.c=!0,pf(b,function(){f.c=!1;window.botguard?Gf(f,c,d):(uf(b),se(Error("Unable to load Botguard from "+b)))},e)):a&&(eval(a),window.botguard?Gf(this,c,d):se(Error("Unable to load Botguard from JS")))};
function Gf(a,b,c){try{a.b=new botguard.bg(b)}catch(d){se(d)}c&&c(b)}
Ff.prototype.dispose=function(){this.b=null};var Hf=new Ff,If=!1,Jf=0,Kf="";function Lf(a){S("botguard_periodic_refresh")?Jf=O():S("botguard_always_refresh")&&(Kf=a)}
function Mf(a){if(a){if(Hf.c)return!1;if(S("botguard_periodic_refresh"))return 72E5<O()-Jf;if(S("botguard_always_refresh"))return Kf!=a}else return!1;return!If}
function Nf(){return!!Hf.b}
function Of(a){a=void 0===a?{}:a;a=void 0===a?{}:a;return Hf.b?Hf.b.invoke(void 0,void 0,a):null}
;var Pf=0;v("ytDomDomGetNextId",w("ytDomDomGetNextId")||function(){return++Pf},void 0);var Qf={stopImmediatePropagation:1,stopPropagation:1,preventMouseEvent:1,preventManipulation:1,preventDefault:1,layerX:1,layerY:1,screenX:1,screenY:1,scale:1,rotation:1,webkitMovementX:1,webkitMovementY:1};
function Rf(a){this.type="";this.state=this.source=this.data=this.currentTarget=this.relatedTarget=this.target=null;this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.ctrlKey=this.altKey=!1;this.clientY=this.clientX=0;this.changedTouches=this.touches=null;if(a=a||window.event){this.event=a;for(var b in a)b in Qf||(this[b]=a[b]);(b=a.target||a.srcElement)&&3==b.nodeType&&(b=b.parentNode);this.target=b;if(b=a.relatedTarget)try{b=b.nodeName?b:null}catch(c){b=null}else"mouseover"==this.type?
b=a.fromElement:"mouseout"==this.type&&(b=a.toElement);this.relatedTarget=b;this.clientX=void 0!=a.clientX?a.clientX:a.pageX;this.clientY=void 0!=a.clientY?a.clientY:a.pageY;this.keyCode=a.keyCode?a.keyCode:a.which;this.charCode=a.charCode||("keypress"==this.type?this.keyCode:0);this.altKey=a.altKey;this.ctrlKey=a.ctrlKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.b=a.pageX;this.c=a.pageY}}
function Sf(a){if(document.body&&document.documentElement){var b=document.body.scrollTop+document.documentElement.scrollTop;a.b=a.clientX+(document.body.scrollLeft+document.documentElement.scrollLeft);a.c=a.clientY+b}}
Rf.prototype.preventDefault=function(){this.event&&(this.event.returnValue=!1,this.event.preventDefault&&this.event.preventDefault())};
Rf.prototype.stopPropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopPropagation&&this.event.stopPropagation())};
Rf.prototype.stopImmediatePropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopImmediatePropagation&&this.event.stopImmediatePropagation())};var db=w("ytEventsEventsListeners")||{};v("ytEventsEventsListeners",db,void 0);var Tf=w("ytEventsEventsCounter")||{count:0};v("ytEventsEventsCounter",Tf,void 0);
function Uf(a,b,c,d){d=void 0===d?{}:d;a.addEventListener&&("mouseenter"!=b||"onmouseenter"in document?"mouseleave"!=b||"onmouseenter"in document?"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"):b="mouseout":b="mouseover");return cb(function(e){var f="boolean"==typeof e[4]&&e[4]==!!d,g=y(e[4])&&y(d)&&gb(e[4],d);return!!e.length&&e[0]==a&&e[1]==b&&e[2]==c&&(f||g)})}
var Vf=Eb(function(){var a=!1;try{var b=Object.defineProperty({},"capture",{get:function(){a=!0}});
window.addEventListener("test",null,b)}catch(c){}return a});
function V(a,b,c,d){d=void 0===d?{}:d;if(!a||!a.addEventListener&&!a.attachEvent)return"";var e=Uf(a,b,c,d);if(e)return e;e=++Tf.count+"";var f=!("mouseenter"!=b&&"mouseleave"!=b||!a.addEventListener||"onmouseenter"in document);var g=f?function(d){d=new Rf(d);if(!$b(d.relatedTarget,function(b){return b==a}))return d.currentTarget=a,d.type=b,c.call(a,d)}:function(b){b=new Rf(b);
b.currentTarget=a;return c.call(a,b)};
g=re(g);a.addEventListener?("mouseenter"==b&&f?b="mouseover":"mouseleave"==b&&f?b="mouseout":"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"),Vf()||"boolean"==typeof d?a.addEventListener(b,g,d):a.addEventListener(b,g,!!d.capture)):a.attachEvent("on"+b,g);db[e]=[a,b,c,g,d];return e}
function Wf(a){a&&("string"==typeof a&&(a=[a]),F(a,function(a){if(a in db){var b=db[a],d=b[0],e=b[1],f=b[3];b=b[4];d.removeEventListener?Vf()||"boolean"==typeof b?d.removeEventListener(e,f,b):d.removeEventListener(e,f,!!b.capture):d.detachEvent&&d.detachEvent("on"+e,f);delete db[a]}}))}
;function Xf(a){this.u=a;this.b=null;this.h=0;this.l=null;this.i=0;this.f=[];for(a=0;4>a;a++)this.f.push(0);this.g=0;this.C=V(window,"mousemove",z(this.F,this));a=z(this.A,this);za(a)&&(a=re(a));this.G=window.setInterval(a,25)}
C(Xf,L);Xf.prototype.F=function(a){r(a.b)||Sf(a);var b=a.b;r(a.c)||Sf(a);this.b=new Tb(b,a.c)};
Xf.prototype.A=function(){if(this.b){var a=O();if(0!=this.h){var b=this.l,c=this.b,d=b.x-c.x;b=b.y-c.y;d=Math.sqrt(d*d+b*b)/(a-this.h);this.f[this.g]=.5<Math.abs((d-this.i)/this.i)?1:0;for(c=b=0;4>c;c++)b+=this.f[c]||0;3<=b&&this.u();this.i=d}this.h=a;this.l=this.b;this.g=(this.g+1)%4}};
Xf.prototype.j=function(){window.clearInterval(this.G);Wf(this.C)};var Yf={};function Zf(a){var b=void 0===a?{}:a;a=void 0===b.b?!0:b.b;b=void 0===b.c?!1:b.c;if(null==w("_lact",window)){var c=parseInt(Q("LACT"),10);c=isFinite(c)?A()-Math.max(c,0):-1;v("_lact",c,window);v("_fact",c,window);-1==c&&$f();V(document,"keydown",$f);V(document,"keyup",$f);V(document,"mousedown",$f);V(document,"mouseup",$f);a&&(b?V(window,"touchmove",function(){ag("touchmove",200)},{passive:!0}):(V(window,"resize",function(){ag("resize",200)}),V(window,"scroll",function(){ag("scroll",200)})));
new Xf(function(){ag("mouse",100)});
V(document,"touchstart",$f,{passive:!0});V(document,"touchend",$f,{passive:!0})}}
function ag(a,b){Yf[a]||(Yf[a]=!0,xf(function(){$f();Yf[a]=!1},b))}
function $f(){null==w("_lact",window)&&Zf();var a=A();v("_lact",a,window);-1==w("_fact",window)&&v("_fact",a,window);(a=w("ytglobal.ytUtilActivityCallback_"))&&a()}
function bg(){var a=w("_lact",window);return null==a?-1:Math.max(A()-a,0)}
;var cg=Math.pow(2,16)-1,dg=null,eg=0,fg={log_event:"events",log_interaction:"interactions"},gg=Object.create(null);gg.log_event="GENERIC_EVENT_LOGGING";gg.log_interaction="INTERACTION_LOGGING";var hg=new Set(["log_event"]),ig={},jg=0,kg=0,W=w("ytLoggingTransportLogPayloadsQueue_")||{};v("ytLoggingTransportLogPayloadsQueue_",W,void 0);var lg=w("ytLoggingTransportTokensToCttTargetIds_")||{};v("ytLoggingTransportTokensToCttTargetIds_",lg,void 0);var mg=w("ytLoggingTransportDispatchedStats_")||{};
v("ytLoggingTransportDispatchedStats_",mg,void 0);v("ytytLoggingTransportCapturedTime_",w("ytLoggingTransportCapturedTime_")||{},void 0);function ng(){U(jg);U(kg);kg=0;if(!eb(W)){for(var a in W){var b=ig[a];b&&(og(a,b),delete W[a])}eb(W)||pg()}}
function pg(){S("web_gel_timeout_cap")&&!kg&&(kg=T(ng,3E4));U(jg);jg=T(ng,Q("LOGGING_BATCH_TIMEOUT",1E4))}
function qg(a,b){b=void 0===b?"":b;W[a]=W[a]||{};W[a][b]=W[a][b]||[];return W[a][b]}
function og(a,b){var c=fg[a],d=mg[a]||{};mg[a]=d;var e=Math.round(O());for(m in W[a]){var f=b.b;f={client:{hl:f.Ca,gl:f.Ba,clientName:f.za,clientVersion:f.Aa}};var g=window.devicePixelRatio;g&&1!=g&&(f.client.screenDensityFloat=String(g));Q("DELEGATED_SESSION_ID")&&!S("pageid_as_header_web")&&(f.user={onBehalfOfUser:Q("DELEGATED_SESSION_ID")});f={context:f};f[c]=qg(a,m);d.dispatchedEventCount=d.dispatchedEventCount||0;d.dispatchedEventCount+=f[c].length;if(g=lg[m])a:{var k=m;if(g.videoId)var l="VIDEO";
else if(g.playlistId)l="PLAYLIST";else break a;f.credentialTransferTokenTargetId=g;f.context=f.context||{};f.context.user=f.context.user||{};f.context.user.credentialTransferTokens=[{token:k,scope:l}]}delete lg[m];f.requestTimeMs=e;if(g=ie("EVENT_ID"))l=(Q("BATCH_CLIENT_COUNTER",void 0)||0)+1,l>cg&&(l=1),P("BATCH_CLIENT_COUNTER",l),g={serializedEventId:g,clientCounter:l},f.serializedClientEventId=g,dg&&eg&&S("log_gel_rtt_web")&&(f.previousBatchInfo={serializedClientEventId:dg,roundtripMs:eg}),dg=
g,eg=0;rg(b,a,f,{retry:hg.has(a),onSuccess:z(sg,this,O())})}if(d.previousDispatchMs){c=e-d.previousDispatchMs;var m=d.diffCount||0;d.averageTimeBetweenDispatchesMs=m?(d.averageTimeBetweenDispatchesMs*m+c)/(m+1):c;d.diffCount=m+1}d.previousDispatchMs=e}
function sg(a){eg=Math.round(O()-a)}
;function tg(a,b,c,d,e){var f={};f.eventTimeMs=Math.round(d||O());f[a]=b;f.context={lastActivityMs:String(d?-1:bg())};e?(a={},e.videoId?a.videoId=e.videoId:e.playlistId&&(a.playlistId=e.playlistId),lg[e.token]=a,e=qg("log_event",e.token)):e=qg("log_event");e.push(f);c&&(ig.log_event=new c);e.length>=(Number(S("web_logging_max_batch")||0)||20)?ng():pg()}
;function ug(a,b,c){c=void 0===c?{}:c;var d={"X-Goog-Visitor-Id":c.visitorData||Q("VISITOR_DATA","")};if(b&&b.includes("www.youtube-nocookie.com"))return d;(b=c.hb||Q("AUTHORIZATION"))||(a?b="Bearer "+w("gapi.auth.getToken")().gb:b=Jc([]));b&&(d.Authorization=b,d["X-Goog-AuthUser"]=Q("SESSION_INDEX",0),S("pageid_as_header_web")&&(d["X-Goog-PageId"]=Q("DELEGATED_SESSION_ID")));return d}
function vg(a){a=Object.assign({},a);delete a.Authorization;var b=Jc();if(b){var c=new Zc;c.update(Q("INNERTUBE_API_KEY",void 0));c.update(b);b=c.digest();if(!yb)for(yb={},zb={},c=0;65>c;c++)yb[c]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(c),zb[c]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.".charAt(c);c=zb;for(var d=[],e=0;e<b.length;e+=3){var f=b[e],g=e+1<b.length,k=g?b[e+1]:0,l=e+2<b.length,m=l?b[e+2]:0,u=f>>2;f=(f&3)<<4|k>>4;k=(k&15)<<2|m>>
6;m&=63;l||(m=64,g||(k=64));d.push(c[u],c[f],c[k],c[m])}a.hash=d.join("")}return a}
;function wg(a,b,c,d){Bb.set(""+a,b,c,"/",void 0===d?"youtube.com":d,!1)}
;function xg(){var a=new Yd;(a=a.isAvailable()?new de(a,"yt.innertube"):null)||(a=new Zd("yt.innertube"),a=a.isAvailable()?a:null);this.b=a?new Ud(a):null;this.c=document.domain||window.location.hostname}
xg.prototype.set=function(a,b,c,d){c=c||31104E3;this.remove(a);if(this.b)try{this.b.set(a,b,A()+1E3*c);return}catch(f){}var e="";if(d)try{e=escape(pd(b))}catch(f){return}else e=escape(b);wg(a,e,c,this.c)};
xg.prototype.get=function(a,b){var c=void 0,d=!this.b;if(!d)try{c=this.b.get(a)}catch(e){d=!0}if(d&&(c=Bb.get(""+a,void 0))&&(c=unescape(c),b))try{c=JSON.parse(c)}catch(e){this.remove(a),c=void 0}return c};
xg.prototype.remove=function(a){this.b&&this.b.remove(a);var b=this.c;Bb.remove(""+a,"/",void 0===b?"youtube.com":b)};var yg=new xg;function zg(a,b,c,d){if(d)return null;d=yg.get("nextId",!0)||1;var e=yg.get("requests",!0)||{};e[d]={method:a,request:b,authState:vg(c),requestTime:Math.round(O())};yg.set("nextId",d+1,86400,!0);yg.set("requests",e,86400,!0);return d}
function Ag(a){var b=yg.get("requests",!0)||{};delete b[a];yg.set("requests",b,86400,!0)}
function Bg(a){var b=yg.get("requests",!0);if(b){for(var c in b){var d=b[c];if(!(6E4>Math.round(O())-d.requestTime)){var e=d.authState,f=vg(ug(!1));gb(e,f)&&(e=d.request,"requestTimeMs"in e&&(e.requestTimeMs=Math.round(O())),rg(a,d.method,e,{}));delete b[c]}}yg.set("requests",b,86400,!0)}}
;function Cg(a){var b=this;this.b=a||{xa:ie("INNERTUBE_API_KEY"),ya:ie("INNERTUBE_API_VERSION"),za:Q("INNERTUBE_CONTEXT_CLIENT_NAME","WEB"),Aa:ie("INNERTUBE_CONTEXT_CLIENT_VERSION"),Ca:ie("INNERTUBE_CONTEXT_HL"),Ba:ie("INNERTUBE_CONTEXT_GL"),Da:ie("INNERTUBE_HOST_OVERRIDE")||"",Ea:!!Q("INNERTUBE_USE_THIRD_PARTY_AUTH",!1)};yf(function(){Bg(b)},0,5E3)}
function rg(a,b,c,d){!Q("VISITOR_DATA")&&.01>Math.random()&&R(Error("Missing VISITOR_DATA when sending innertube request."),"WARNING");var e={headers:{"Content-Type":"application/json"},method:"POST",B:c,ia:"JSON",L:function(){d.L()},
ha:d.L,onSuccess:function(a,b){if(d.onSuccess)d.onSuccess(b)},
ga:function(a){if(d.onSuccess)d.onSuccess(a)},
onError:function(a,b){if(d.onError)d.onError(b)},
mb:function(a){if(d.onError)d.onError(a)},
timeout:d.timeout,withCredentials:!0},f="",g=a.b.Da;g&&(f=g);g=a.b.Ea||!1;var k=ug(g,f,d);Object.assign(e.headers,k);e.headers.Authorization&&!f&&(e.headers["x-origin"]=window.location.origin);var l=""+f+("/youtubei/"+a.b.ya+"/"+b)+"?alt=json&key="+a.b.xa,m;if(d.retry&&S("retry_web_logging_batches")&&"www.youtube-nocookie.com"!=f&&(m=zg(b,c,k,g))){var u=e.onSuccess,da=e.ga;e.onSuccess=function(a,b){Ag(m);u(a,b)};
c.ga=function(a,b){Ag(m);da(a,b)}}try{S("use_fetch_for_op_xhr")?Fe(l,e):Oe(l,e)}catch(Dd){if("InvalidAccessError"==Dd)m&&(Ag(m),m=0),R(Error("An extension is blocking network request."),"WARNING");
else throw Dd;}m&&yf(function(){Bg(a)},0,5E3)}
;var Dg=A().toString();
function Eg(){a:{if(window.crypto&&window.crypto.getRandomValues)try{var a=Array(16),b=new Uint8Array(16);window.crypto.getRandomValues(b);for(var c=0;c<a.length;c++)a[c]=b[c];var d=a;break a}catch(e){}d=Array(16);for(a=0;16>a;a++){b=A();for(c=0;c<b%23;c++)d[a]=Math.random();d[a]=Math.floor(256*Math.random())}if(Dg)for(a=1,b=0;b<Dg.length;b++)d[a%16]=d[a%16]^d[(a-1)%16]/4^Dg.charCodeAt(b),a++}a=[];for(b=0;b<d.length;b++)a.push("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(d[b]&63));
return a.join("")}
;var Fg=w("ytLoggingTimeDocumentNonce_")||Eg();v("ytLoggingTimeDocumentNonce_",Fg,void 0);function Gg(a){this.b=a}
function Hg(a){var b={};void 0!==a.b.trackingParams?b.trackingParams=a.b.trackingParams:(b.veType=a.b.veType,null!=a.b.veCounter&&(b.veCounter=a.b.veCounter),null!=a.b.elementIndex&&(b.elementIndex=a.b.elementIndex));void 0!==a.b.dataElement&&(b.dataElement=Hg(a.b.dataElement));void 0!==a.b.youtubeData&&(b.youtubeData=a.b.youtubeData);return b}
var Ig=1;function Jg(a){a=void 0===a?0:a;return 0==a?"client-screen-nonce":"client-screen-nonce."+a}
function Kg(a){a=void 0===a?0:a;return 0==a?"ROOT_VE_TYPE":"ROOT_VE_TYPE."+a}
function Lg(a){return Q(Kg(void 0===a?0:a),void 0)}
v("yt_logging_screen.getRootVeType",Lg,void 0);function Mg(){var a=Lg(0),b;a?b=new Gg({veType:a,youtubeData:void 0}):b=null;return b}
function Ng(a){a=void 0===a?0:a;var b=Q(Jg(a));b||0!=a||(b=Q("EVENT_ID"));return b?b:null}
v("yt_logging_screen.getCurrentCsn",Ng,void 0);function Og(a,b,c){c=void 0===c?0:c;if(a!==Q(Jg(c))||b!==Q(Kg(c)))P(Jg(c),a),P(Kg(c),b),0==c&&(b=function(){setTimeout(function(){a&&tg("foregroundHeartbeatScreenAssociated",{clientDocumentNonce:Fg,clientScreenNonce:a},Cg)},0)},"requestAnimationFrame"in window?window.requestAnimationFrame(b):b())}
v("yt_logging_screen.setCurrentScreen",Og,void 0);function Pg(a,b,c){b=void 0===b?{}:b;c=void 0===c?!1:c;var d=Q("EVENT_ID");d&&(b.ei||(b.ei=d));if(b){d=a;var e=Q("VALID_SESSION_TEMPDATA_DOMAINS",[]),f=I(J(3,window.location.href));f&&e.push(f);f=I(J(3,d));if(0<=Ga(e,f)||!f&&0==d.lastIndexOf("/",0))if(S("autoescape_tempdata_url")&&(e=document.createElement("a"),Rb(e,d),d=e.href),d){f=d.match(lc);d=f[5];e=f[6];f=f[7];var g="";d&&(g+=d);e&&(g+="?"+e);f&&(g+="#"+f);d=g;e=d.indexOf("#");if(d=0>e?d:d.substr(0,e)){if(b.itct||b.ved)b.csn=b.csn||Ng();if(k){var k=
parseInt(k,10);isFinite(k)&&0<k&&(d="ST-"+Xa(d).toString(36),b=b?nc(b):"",wg(d,b,k||5))}else k="ST-"+Xa(d).toString(36),b=b?nc(b):"",wg(k,b,5)}}}if(c)return!1;if((window.ytspf||{}).enabled)spf.navigate(a);else{var l=void 0===l?{}:l;var m=void 0===m?"":m;var u=void 0===u?window:u;c=u.location;a=oc(a,l)+m;a=a instanceof H?a:Mb(a);c.href=Kb(a)}return!0}
;function Qg(a,b,c){a={csn:a,parentVe:Hg(b),childVes:Ia(c,function(a){return Hg(a)})};
tg("visualElementAttached",a,Cg)}
;function Rg(a){a=a||{};this.url=a.url||"";this.args=a.args||hb(Sg);this.assets=a.assets||{};this.attrs=a.attrs||hb(Tg);this.fallback=a.fallback||null;this.fallbackMessage=a.fallbackMessage||null;this.html5=!!a.html5;this.disable=a.disable||{};this.loaded=!!a.loaded;this.messages=a.messages||{}}
var Sg={enablejsapi:1},Tg={};Rg.prototype.clone=function(){var a=new Rg,b;for(b in this)if(this.hasOwnProperty(b)){var c=this[b];a[b]="object"==xa(c)?hb(c):c}return a};function Ug(){L.call(this);this.b=[]}
n(Ug,L);Ug.prototype.j=function(){for(;this.b.length;){var a=this.b.pop();a.target.removeEventListener(a.name,a.jb)}L.prototype.j.call(this)};var Vg=/cssbin\/(?:debug-)?([a-zA-Z0-9_-]+?)(?:-2x|-web|-rtl|-vfl|.css)/;function Wg(a){a=a||"";if(window.spf){var b=a.match(Vg);spf.style.load(a,b?b[1]:"",void 0)}else Xg(a)}
function Xg(a){var b=Yg(a),c=document.getElementById(b),d=c&&af(c,"loaded");d||c&&!d||(c=Zg(a,b,function(){af(c,"loaded")||(Ze(c),kf(b),T(Ea(lf,b),0))}))}
function Zg(a,b,c){var d=document.createElement("link");d.id=b;d.onload=function(){c&&setTimeout(c,0)};
a=ac(a);d.rel="stylesheet";d.href=Ib(a);(document.getElementsByTagName("head")[0]||document.body).appendChild(d);return d}
function Yg(a){var b=document.createElement("A");a=Nb(a);Rb(b,a);b=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"css-"+Xa(b)}
;function $g(a,b){L.call(this);this.i=this.R=a;this.C=b;this.l=!1;this.api={};this.O=this.A=null;this.F=new N;ad(this,Ea(bd,this.F));this.g={};this.M=this.P=this.f=this.W=this.b=null;this.G=!1;this.h=this.u=null;this.T={};this.ma=["onReady"];this.V=null;this.ea=NaN;this.N={};ah(this);this.U("WATCH_LATER_VIDEO_ADDED",this.Ga.bind(this));this.U("WATCH_LATER_VIDEO_REMOVED",this.Ha.bind(this));this.U("onAdAnnounce",this.qa.bind(this));this.na=new Ug(this);ad(this,Ea(bd,this.na))}
n($g,L);h=$g.prototype;
h.ca=function(a){if(!this.c){a instanceof Rg||(a=new Rg(a));this.W=a;this.b=a.clone();this.f=this.b.attrs.id||this.f;"video-player"==this.f&&(this.f=this.C,this.b.attrs.id=this.C);this.i.id==this.f&&(this.f+="-player",this.b.attrs.id=this.f);this.b.args.enablejsapi="1";this.b.args.playerapiid=this.C;this.P||(this.P=bh(this,this.b.args.jsapicallback||"onYouTubePlayerReady"));this.b.args.jsapicallback=null;if(a=this.b.attrs.width)this.i.style.width=jc(Number(a)||a);if(a=this.b.attrs.height)this.i.style.height=jc(Number(a)||
a);ch(this);this.l&&dh(this)}};
h.ta=function(){return this.W};
function dh(a){a.b.loaded||(a.b.loaded=!0,"0"!=a.b.args.autoplay?a.api.loadVideoByPlayerVars(a.b.args):a.api.cueVideoByPlayerVars(a.b.args))}
function eh(a){var b=!0,c=fh(a);c&&a.b&&(a=a.b,b=af(c,"version")==a.assets.js);return b&&!!w("yt.player.Application.create")}
function ch(a){if(!a.c&&!a.G){var b=eh(a);if(b&&"html5"==(fh(a)?"html5":null))a.M="html5",a.l||gh(a);else if(hh(a),a.M="html5",b&&a.h)a.R.appendChild(a.h),gh(a);else{a.b.loaded=!0;var c=!1;a.u=function(){c=!0;var b=a.b.clone();w("yt.player.Application.create")(a.R,b);gh(a)};
a.G=!0;b?a.u():(pf(a.b.assets.js,a.u),Wg(a.b.assets.css),ih(a)&&!c&&v("yt.player.Application.create",null,void 0))}}}
function fh(a){var b=Vb(a.f);!b&&a.i&&a.i.querySelector&&(b=a.i.querySelector("#"+a.f));return b}
function gh(a){if(!a.c){var b=fh(a),c=!1;b&&b.getApiInterface&&b.getApiInterface()&&(c=!0);c?(a.G=!1,b.isNotServable&&b.isNotServable(a.b.args.video_id)||jh(a)):a.ea=T(function(){gh(a)},50)}}
function jh(a){ah(a);a.l=!0;var b=fh(a);b.addEventListener&&(a.A=kh(a,b,"addEventListener"));b.removeEventListener&&(a.O=kh(a,b,"removeEventListener"));var c=b.getApiInterface();c=c.concat(b.getInternalApiInterface());for(var d=0;d<c.length;d++){var e=c[d];a.api[e]||(a.api[e]=kh(a,b,e))}for(var f in a.g)a.A(f,a.g[f]);dh(a);a.P&&a.P(a.api);a.F.J("onReady",a.api)}
function kh(a,b,c){var d=b[c];return function(){try{return a.V=null,d.apply(b,arguments)}catch(e){"sendAbandonmentPing"!=c&&(e.message+=" ("+c+")",a.V=e,se(e))}}}
function ah(a){a.l=!1;if(a.O)for(var b in a.g)a.O(b,a.g[b]);for(var c in a.N)U(parseInt(c,10));a.N={};a.A=null;a.O=null;for(var d in a.api)a.api[d]=null;a.api.addEventListener=a.U.bind(a);a.api.removeEventListener=a.Ka.bind(a);a.api.destroy=a.dispose.bind(a);a.api.getLastError=a.ua.bind(a);a.api.getPlayerType=a.va.bind(a);a.api.getCurrentVideoConfig=a.ta.bind(a);a.api.loadNewVideoConfig=a.ca.bind(a);a.api.isReady=a.Fa.bind(a)}
h.Fa=function(){return this.l};
h.U=function(a,b){var c=this,d=bh(this,b);if(d){if(!(0<=Ga(this.ma,a)||this.g[a])){var e=lh(this,a);this.A&&this.A(a,e)}this.F.subscribe(a,d);"onReady"==a&&this.l&&T(function(){d(c.api)},0)}};
h.Ka=function(a,b){if(!this.c){var c=bh(this,b);c&&Od(this.F,a,c)}};
function bh(a,b){var c=b;if("string"==typeof b){if(a.T[b])return a.T[b];c=function(){var a=w(b);a&&a.apply(q,arguments)};
a.T[b]=c}return c?c:null}
function lh(a,b){var c="ytPlayer"+b+a.C;a.g[b]=c;q[c]=function(c){var d=T(function(){if(!a.c){a.F.J(b,c);var e=a.N,g=String(d);g in e&&delete e[g]}},0);
fb(a.N,String(d))};
return c}
h.qa=function(a){kf("a11y-announce",a)};
h.Ga=function(a){kf("WATCH_LATER_VIDEO_ADDED",a)};
h.Ha=function(a){kf("WATCH_LATER_VIDEO_REMOVED",a)};
h.va=function(){return this.M||(fh(this)?"html5":null)};
h.ua=function(){return this.V};
function hh(a){a.cancel();ah(a);a.M=null;a.b&&(a.b.loaded=!1);var b=fh(a);b&&(eh(a)||!ih(a)?a.h=b:(b&&b.destroy&&b.destroy(),a.h=null));for(a=a.R;b=a.firstChild;)a.removeChild(b)}
h.cancel=function(){this.u&&vf(this.b.assets.js,this.u);U(this.ea);this.G=!1};
h.j=function(){hh(this);if(this.h&&this.b&&this.h.destroy)try{this.h.destroy()}catch(b){R(b)}this.T=null;for(var a in this.g)q[this.g[a]]=null;this.W=this.b=this.api=null;delete this.R;delete this.i;L.prototype.j.call(this)};
function ih(a){return a.b&&a.b.args&&a.b.args.fflags?-1!=a.b.args.fflags.indexOf("player_destroy_old_version=true"):!1}
;var mh={},nh="player_uid_"+(1E9*Math.random()>>>0);function oh(a){var b="player";b=t(b)?Vb(b):b;var c=nh+"_"+(b[Aa]||(b[Aa]=++Ba)),d=mh[c];if(d)return d.ca(a),d.api;d=new $g(b,c);mh[c]=d;kf("player-added",d.api);ad(d,Ea(ph,d));T(function(){d.ca(a)},0);
return d.api}
function ph(a){delete mh[a.C]}
;function qh(a,b,c){var d=Cg;Q("ytLoggingEventsDefaultDisabled",!1)&&Cg==Cg&&(d=null);tg(a,b,d,c,void 0)}
;var rh=w("ytLoggingLatencyUsageStats_")||{};v("ytLoggingLatencyUsageStats_",rh,void 0);var sh=0;function th(a){rh[a]=rh[a]||{count:0};var b=rh[a];b.count++;b.time=O();sh||(sh=yf(uh,0,5E3));return 10<b.count?(11==b.count&&We(Error("CSI data exceeded logging limit with key: "+a),0==a.indexOf("info")?"WARNING":"ERROR"),!0):!1}
function uh(){var a=O(),b;for(b in rh)6E4<a-rh[b].time&&delete rh[b];sh=0}
;function vh(a,b){this.version=a;this.args=b}
;function wh(a){this.topic=a}
wh.prototype.toString=function(){return this.topic};var xh=w("ytPubsub2Pubsub2Instance")||new N;N.prototype.subscribe=N.prototype.subscribe;N.prototype.unsubscribeByKey=N.prototype.K;N.prototype.publish=N.prototype.J;N.prototype.clear=N.prototype.clear;v("ytPubsub2Pubsub2Instance",xh,void 0);v("ytPubsub2Pubsub2SubscribedKeys",w("ytPubsub2Pubsub2SubscribedKeys")||{},void 0);v("ytPubsub2Pubsub2TopicToKeys",w("ytPubsub2Pubsub2TopicToKeys")||{},void 0);v("ytPubsub2Pubsub2IsAsync",w("ytPubsub2Pubsub2IsAsync")||{},void 0);
v("ytPubsub2Pubsub2SkipSubKey",null,void 0);function yh(a,b){var c=w("ytPubsub2Pubsub2Instance");c&&c.publish.call(c,a.toString(),a,b)}
;var X=window.performance||window.mozPerformance||window.msPerformance||window.webkitPerformance||{};function zh(){var a=Q("TIMING_TICK_EXPIRATION");a||(a={},P("TIMING_TICK_EXPIRATION",a));return a}
function Ah(){var a=zh(),b;for(b in a)Af(a[b]);P("TIMING_TICK_EXPIRATION",{})}
;function Bh(a,b){vh.call(this,1,arguments)}
n(Bh,vh);function Ch(a,b){vh.call(this,1,arguments)}
n(Ch,vh);var Dh=new wh("aft-recorded"),Eh=new wh("timing-sent");var Fh={vc:!0},Y={},Gh=(Y.ad_allowed="adTypesAllowed",Y.yt_abt="adBreakType",Y.ad_cpn="adClientPlaybackNonce",Y.ad_docid="adVideoId",Y.yt_ad_an="adNetworks",Y.ad_at="adType",Y.browse_id="browseId",Y.p="httpProtocol",Y.t="transportProtocol",Y.cpn="clientPlaybackNonce",Y.csn="clientScreenNonce",Y.docid="videoId",Y.is_continuation="isContinuation",Y.is_nav="isNavigation",Y.b_p="kabukiInfo.browseParams",Y.is_prefetch="kabukiInfo.isPrefetch",Y.is_secondary_nav="kabukiInfo.isSecondaryNav",Y.prev_browse_id=
"kabukiInfo.prevBrowseId",Y.query_source="kabukiInfo.querySource",Y.voz_type="kabukiInfo.vozType",Y.yt_lt="loadType",Y.yt_ad="isMonetized",Y.nr="webInfo.navigationReason",Y.ncnp="webInfo.nonPreloadedNodeCount",Y.paused="playerInfo.isPausedOnLoad",Y.yt_pt="playerType",Y.fmt="playerInfo.itag",Y.yt_pl="watchInfo.isPlaylist",Y.yt_ad_pr="prerollAllowed",Y.pa="previousAction",Y.yt_red="isRedSubscriber",Y.st="serverTimeMs",Y.aq="tvInfo.appQuality",Y.br_trs="tvInfo.bedrockTriggerState",Y.label="tvInfo.label",
Y.is_mdx="tvInfo.isMdx",Y.preloaded="tvInfo.isPreloaded",Y.query="unpluggedInfo.query",Y.upg_chip_ids_string="unpluggedInfo.upgChipIdsString",Y.yt_vst="videoStreamType",Y.vph="viewportHeight",Y.vpw="viewportWidth",Y.yt_vis="isVisible",Y),Hh="ap c cver cbrand cmodel ei srt yt_fss yt_li plid vpil vpni vpst yt_eil vpni2 vpil2 icrc icrt pa GetBrowse_rid GetPlayer_rid GetSearch_rid GetWatchNext_rid cmt d_vpct d_vpnfi d_vpni pc pfa pfeh pftr prerender psc rc start tcrt tcrc ssr vpr vps yt_abt yt_fn yt_fs yt_pft yt_pre yt_pt yt_pvis yt_ref yt_sts".split(" "),
Ih="isContinuation isNavigation kabukiInfo.isPrefetch kabukiInfo.isSecondaryNav isMonetized playerInfo.isPausedOnLoad prerollAllowed isRedSubscriber tvInfo.isMdx tvInfo.isPreloaded isVisible watchInfo.isPlaylist".split(" "),Jh={},Kh=(Jh.pa="LATENCY_ACTION_",Jh.yt_pt="LATENCY_PLAYER_",Jh.yt_vst="VIDEO_STREAM_TYPE_",Jh),Lh=!1;
function Mh(){var a=Nh().info.yt_lt="hot_bg";Oh().info_yt_lt=a;if(Ph())if("yt_lt"in Gh){var b=Gh.yt_lt;0<=Ga(Ih,b)&&(a=!!a);"yt_lt"in Kh&&(a=Kh.yt_lt+a.toUpperCase());var c=a;if(Ph()){a={};b=b.split(".");for(var d=a,e=0;e<b.length-1;e++)d[b[e]]=d[b[e]]||{},d=d[b[e]];d[b[b.length-1]]=c;c=Qh();b=Object.keys(a).join("");th("info_"+b+"_"+c)||(a.clientActionNonce=c,qh("latencyActionInfo",a))}}else 0<=Ga(Hh,"yt_lt")||R(Error("Unknown label yt_lt logged with GEL CSI."))}
function Rh(){var a=Sh();if(a.aft)return a.aft;for(var b=Q("TIMING_AFT_KEYS",["ol"]),c=b.length,d=0;d<c;d++){var e=a[b[d]];if(e)return e}return NaN}
z(X.clearResourceTimings||X.webkitClearResourceTimings||X.mozClearResourceTimings||X.msClearResourceTimings||X.oClearResourceTimings||va,X);function Qh(){var a=Nh().nonce;a||(a=Eg(),Nh().nonce=a);return a}
function Sh(){return Nh().tick}
function Oh(){var a=Nh();"gel"in a||(a.gel={});return a.gel}
function Nh(){var a;(a=w("ytcsi.data_"))||(a={tick:{},info:{}},B("ytcsi.data_",a));return a}
function Th(){var a=Sh(),b=a.pbr,c=a.vc;a=a.pbs;return b&&c&&a&&b<c&&c<a&&1==Nh().info.yt_pvis}
function Ph(){return!!S("csi_on_gel")||!!Nh().useGel}
function Uh(){Ah();if(!Ph()){var a=Sh(),b=Nh().info,c=a._start;for(f in a)if(0==f.lastIndexOf("_",0)&&x(a[f])){var d=f.slice(1);if(d in Fh){var e=Ia(a[f],function(a){return Math.round(a-c)});
b["all_"+d]=e.join()}delete a[f]}e=Q("CSI_SERVICE_NAME","youtube");var f={v:2,s:e,action:Q("TIMING_ACTION",void 0)};d=Mh.srt;void 0!==a.srt&&delete b.srt;if(b.h5jse){var g=window.location.protocol+w("ytplayer.config.assets.js");(g=X.getEntriesByName?X.getEntriesByName(g)[0]:null)?b.h5jse=Math.round(b.h5jse-g.responseEnd):delete b.h5jse}a.aft=Rh();Th()&&"youtube"==e&&(Mh(),e=a.vc,g=a.pbs,delete a.aft,b.aft=Math.round(g-e));for(var k in b)"_"!=k.charAt(0)&&(f[k]=b[k]);a.ps=O();k={};e=[];for(var l in a)"_"!=
l.charAt(0)&&(g=Math.round(a[l]-c),k[l]=g,e.push(l+"."+g));f.rt=e.join(",");(a=w("ytdebug.logTiming"))&&a(f,k);Vh(f,!!b.ap);yh(Eh,new Ch(k.aft+(d||0),void 0))}}
function Vh(a,b){if(S("debug_csi_data")){var c=w("yt.timing.csiData");c||(c=[],v("yt.timing.csiData",c,void 0));c.push({page:location.href,time:new Date,args:a})}c="";for(var d in a)c+="&"+d+"="+a[d];d="/csi_204?"+c.substring(1);if(window.navigator&&window.navigator.sendBeacon&&b){var e=void 0===e?"":e;Se(d,e)||Re(d,void 0,void 0,void 0,e)}else Re(d);B("yt.timing.pingSent_",!0)}
;function Wh(a){return(0==a.search("cue")||0==a.search("load"))&&"loadModule"!=a}
function Xh(a,b,c){t(a)&&(a={mediaContentUrl:a,startSeconds:b,suggestedQuality:c});b=/\/([ve]|embed)\/([^#?]+)/.exec(a.mediaContentUrl);a.videoId=b&&b[2]?b[2]:null;return Yh(a)}
function Yh(a,b,c){if(y(a)){b=["endSeconds","startSeconds","mediaContentUrl","suggestedQuality","videoId"];c={};for(var d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}return{videoId:a,startSeconds:b,suggestedQuality:c}}
function Zh(a,b,c,d){if(y(a)&&!x(a)){b="playlist list listType index startSeconds suggestedQuality".split(" ");c={};for(d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}b={index:b,startSeconds:c,suggestedQuality:d};t(a)&&16==a.length?b.list="PL"+a:b.playlist=a;return b}
;function $h(a){L.call(this);this.b=a;this.b.subscribe("command",this.ja,this);this.f={};this.h=!1}
C($h,L);h=$h.prototype;h.start=function(){this.h||this.c||(this.h=!0,ai(this.b,"RECEIVING"))};
h.ja=function(a,b,c){if(this.h&&!this.c){var d=b||{};switch(a){case "addEventListener":t(d.event)&&(a=d.event,a in this.f||(b=z(this.Ma,this,a),this.f[a]=b,this.addEventListener(a,b)));break;case "removeEventListener":t(d.event)&&bi(this,d.event);break;default:this.g.isReady()&&this.g[a]&&(b=this.g.handleExternalCall(a,ci(a,b||{}),c||null),(b=di(a,b))&&this.h&&!this.c&&ai(this.b,a,b))}}};
h.Ma=function(a,b){this.h&&!this.c&&ai(this.b,a,this.Y(a,b))};
h.Y=function(a,b){if(null!=b)return{value:b}};
function bi(a,b){b in a.f&&(a.removeEventListener(b,a.f[b]),delete a.f[b])}
h.j=function(){var a=this.b;a.c||Od(a.b,"command",this.ja,this);this.b=null;for(var b in this.f)bi(this,b);$h.w.j.call(this)};function ei(a,b){$h.call(this,b);this.g=a;this.start()}
C(ei,$h);ei.prototype.addEventListener=function(a,b){this.g.addEventListener(a,b)};
ei.prototype.removeEventListener=function(a,b){this.g.removeEventListener(a,b)};
function ci(a,b){switch(a){case "loadVideoById":return b=Yh(b),[b];case "cueVideoById":return b=Yh(b),[b];case "loadVideoByPlayerVars":return[b];case "cueVideoByPlayerVars":return[b];case "loadPlaylist":return b=Zh(b),[b];case "cuePlaylist":return b=Zh(b),[b];case "seekTo":return[b.seconds,b.allowSeekAhead];case "playVideoAt":return[b.index];case "setVolume":return[b.volume];case "setPlaybackQuality":return[b.suggestedQuality];case "setPlaybackRate":return[b.suggestedRate];case "setLoop":return[b.loopPlaylists];
case "setShuffle":return[b.shufflePlaylist];case "getOptions":return[b.module];case "getOption":return[b.module,b.option];case "setOption":return[b.module,b.option,b.value];case "handleGlobalKeyDown":return[b.keyCode,b.shiftKey,b.ctrlKey,b.altKey,b.metaKey]}return[]}
function di(a,b){switch(a){case "isMuted":return{muted:b};case "getVolume":return{volume:b};case "getPlaybackRate":return{playbackRate:b};case "getAvailablePlaybackRates":return{availablePlaybackRates:b};case "getVideoLoadedFraction":return{videoLoadedFraction:b};case "getPlayerState":return{playerState:b};case "getCurrentTime":return{currentTime:b};case "getPlaybackQuality":return{playbackQuality:b};case "getAvailableQualityLevels":return{availableQualityLevels:b};case "getDuration":return{duration:b};
case "getVideoUrl":return{videoUrl:b};case "getVideoEmbedCode":return{videoEmbedCode:b};case "getPlaylist":return{playlist:b};case "getPlaylistIndex":return{playlistIndex:b};case "getOptions":return{options:b};case "getOption":return{option:b}}}
ei.prototype.Y=function(a,b){switch(a){case "onReady":return;case "onStateChange":return{playerState:b};case "onPlaybackQualityChange":return{playbackQuality:b};case "onPlaybackRateChange":return{playbackRate:b};case "onError":return{errorCode:b}}return ei.w.Y.call(this,a,b)};
ei.prototype.j=function(){ei.w.j.call(this);delete this.g};function fi(a,b,c,d){L.call(this);this.f=b||null;this.u="*";this.g=c||null;this.sessionId=null;this.channel=d||null;this.C=!!a;this.l=z(this.A,this);window.addEventListener("message",this.l)}
n(fi,L);fi.prototype.A=function(a){if(!("*"!=this.g&&a.origin!=this.g||this.f&&a.source!=this.f)&&t(a.data)){try{var b=JSON.parse(a.data)}catch(c){return}if(!(null==b||this.C&&(this.sessionId&&this.sessionId!=b.id||this.channel&&this.channel!=b.channel))&&b)switch(b.event){case "listening":"null"!=a.origin&&(this.g=this.u=a.origin);this.f=a.source;this.sessionId=b.id;this.b&&(this.b(),this.b=null);break;case "command":this.h&&(!this.i||0<=Ga(this.i,b.func))&&this.h(b.func,b.args,a.origin)}}};
fi.prototype.sendMessage=function(a,b){var c=b||this.f;if(c){this.sessionId&&(a.id=this.sessionId);this.channel&&(a.channel=this.channel);try{var d=pd(a);c.postMessage(d,this.u)}catch(e){R(e,"WARNING")}}};
fi.prototype.j=function(){window.removeEventListener("message",this.l);L.prototype.j.call(this)};function gi(a,b,c){fi.call(this,a,b,c||Q("POST_MESSAGE_ORIGIN",void 0)||window.document.location.protocol+"//"+window.document.location.hostname,"widget");this.i=this.b=this.h=null}
n(gi,fi);function hi(){var a=this.c=new gi(!!Q("WIDGET_ID_ENFORCE")),b=z(this.Ja,this);a.h=b;a.i=null;this.c.channel="widget";if(a=Q("WIDGET_ID"))this.c.sessionId=a;this.g=[];this.i=!1;this.h={}}
h=hi.prototype;h.Ja=function(a,b,c){"addEventListener"==a&&b?(a=b[0],this.h[a]||"onReady"==a||(this.addEventListener(a,ii(this,a)),this.h[a]=!0)):this.la(a,b,c)};
h.la=function(){};
function ii(a,b){return z(function(a){this.sendMessage(b,a)},a)}
h.addEventListener=function(){};
h.sa=function(){this.i=!0;this.sendMessage("initialDelivery",this.Z());this.sendMessage("onReady");F(this.g,this.ka,this);this.g=[]};
h.Z=function(){return null};
function ji(a,b){a.sendMessage("infoDelivery",b)}
h.ka=function(a){this.i?this.c.sendMessage(a):this.g.push(a)};
h.sendMessage=function(a,b){this.ka({event:a,info:void 0==b?null:b})};
h.dispose=function(){this.c=null};function ki(a){hi.call(this);this.b=a;this.f=[];this.addEventListener("onReady",z(this.Ia,this));this.addEventListener("onVideoProgress",z(this.Qa,this));this.addEventListener("onVolumeChange",z(this.Ra,this));this.addEventListener("onApiChange",z(this.La,this));this.addEventListener("onPlaybackQualityChange",z(this.Na,this));this.addEventListener("onPlaybackRateChange",z(this.Oa,this));this.addEventListener("onStateChange",z(this.Pa,this));this.addEventListener("onWebglSettingsChanged",z(this.Sa,
this))}
C(ki,hi);h=ki.prototype;h.la=function(a,b,c){if(this.b[a]){b=b||[];if(0<b.length&&Wh(a)){var d=b;if(y(d[0])&&!x(d[0]))d=d[0];else{var e={};switch(a){case "loadVideoById":case "cueVideoById":e=Yh.apply(window,d);break;case "loadVideoByUrl":case "cueVideoByUrl":e=Xh.apply(window,d);break;case "loadPlaylist":case "cuePlaylist":e=Zh.apply(window,d)}d=e}b.length=1;b[0]=d}this.b.handleExternalCall(a,b,c);Wh(a)&&ji(this,this.Z())}};
h.Ia=function(){var a=z(this.sa,this);this.c.b=a};
h.addEventListener=function(a,b){this.f.push({eventType:a,listener:b});this.b.addEventListener(a,b)};
h.Z=function(){if(!this.b)return null;var a=this.b.getApiInterface();La(a,"getVideoData");for(var b={apiInterface:a},c=0,d=a.length;c<d;c++){var e=a[c],f=e;if(0==f.search("get")||0==f.search("is")){f=e;var g=0;0==f.search("get")?g=3:0==f.search("is")&&(g=2);f=f.charAt(g).toLowerCase()+f.substr(g+1);try{var k=this.b[e]();b[f]=k}catch(l){}}}b.videoData=this.b.getVideoData();b.currentTimeLastUpdated_=A()/1E3;return b};
h.Pa=function(a){a={playerState:a,currentTime:this.b.getCurrentTime(),duration:this.b.getDuration(),videoData:this.b.getVideoData(),videoStartBytes:0,videoBytesTotal:this.b.getVideoBytesTotal(),videoLoadedFraction:this.b.getVideoLoadedFraction(),playbackQuality:this.b.getPlaybackQuality(),availableQualityLevels:this.b.getAvailableQualityLevels(),currentTimeLastUpdated_:A()/1E3,playbackRate:this.b.getPlaybackRate(),mediaReferenceTime:this.b.getMediaReferenceTime()};this.b.getVideoUrl&&(a.videoUrl=
this.b.getVideoUrl());this.b.getVideoContentRect&&(a.videoContentRect=this.b.getVideoContentRect());this.b.getProgressState&&(a.progressState=this.b.getProgressState());this.b.getPlaylist&&(a.playlist=this.b.getPlaylist());this.b.getPlaylistIndex&&(a.playlistIndex=this.b.getPlaylistIndex());this.b.getStoryboardFormat&&(a.storyboardFormat=this.b.getStoryboardFormat());ji(this,a)};
h.Na=function(a){ji(this,{playbackQuality:a})};
h.Oa=function(a){ji(this,{playbackRate:a})};
h.La=function(){for(var a=this.b.getOptions(),b={namespaces:a},c=0,d=a.length;c<d;c++){var e=a[c],f=this.b.getOptions(e);b[e]={options:f};for(var g=0,k=f.length;g<k;g++){var l=f[g],m=this.b.getOption(e,l);b[e][l]=m}}this.sendMessage("apiInfoDelivery",b)};
h.Ra=function(){ji(this,{muted:this.b.isMuted(),volume:this.b.getVolume()})};
h.Qa=function(a){a={currentTime:a,videoBytesLoaded:this.b.getVideoBytesLoaded(),videoLoadedFraction:this.b.getVideoLoadedFraction(),currentTimeLastUpdated_:A()/1E3,playbackRate:this.b.getPlaybackRate(),mediaReferenceTime:this.b.getMediaReferenceTime()};this.b.getProgressState&&(a.progressState=this.b.getProgressState());ji(this,a)};
h.Sa=function(){var a={sphericalProperties:this.b.getSphericalProperties()};ji(this,a)};
h.dispose=function(){ki.w.dispose.call(this);for(var a=0;a<this.f.length;a++){var b=this.f[a];this.b.removeEventListener(b.eventType,b.listener)}this.f=[]};function li(a){a=void 0===a?!1:a;L.call(this);this.b=new N(a);ad(this,Ea(bd,this.b))}
C(li,L);li.prototype.subscribe=function(a,b,c){return this.c?0:this.b.subscribe(a,b,c)};
li.prototype.h=function(a,b){this.c||this.b.J.apply(this.b,arguments)};function mi(a,b,c){li.call(this);this.f=a;this.g=b;this.i=c}
C(mi,li);function ai(a,b,c){if(!a.c){var d=a.f;d.c||a.g!=d.b||(a={id:a.i,command:b},c&&(a.data=c),d.b.postMessage(pd(a),d.g))}}
mi.prototype.j=function(){this.g=this.f=null;mi.w.j.call(this)};function ni(a,b,c){L.call(this);this.b=a;this.g=c;this.h=V(window,"message",z(this.i,this));this.f=new mi(this,a,b);ad(this,Ea(bd,this.f))}
C(ni,L);ni.prototype.i=function(a){var b;if(b=!this.c)if(b=a.origin==this.g)a:{b=this.b;do{b:{var c=a.source;do{if(c==b){c=!0;break b}if(c==c.parent)break;c=c.parent}while(null!=c);c=!1}if(c){b=!0;break a}b=b.opener}while(null!=b);b=!1}if(b&&(b=a.data,t(b))){try{b=JSON.parse(b)}catch(d){return}b.command&&(c=this.f,c.c||c.h("command",b.command,b.data,a.origin))}};
ni.prototype.j=function(){Wf(this.h);this.b=null;ni.w.j.call(this)};function oi(){var a=hb(pi),b;return Cd(new M(function(c,d){a.onSuccess=function(a){ve(a)?c(a):d(new qi("Request failed, status="+a.status,"net.badstatus",a))};
a.onError=function(a){d(new qi("Unknown request error","net.unknown",a))};
a.L=function(a){d(new qi("Request timed out","net.timeout",a))};
b=Ie("//googleads.g.doubleclick.net/pagead/id",a)}),function(a){a instanceof Ed&&b.abort();
return Ad(a)})}
function qi(a,b){E.call(this,a+", errorCode="+b);this.errorCode=b;this.name="PromiseAjaxError"}
n(qi,E);function ri(){this.c=0;this.b=null}
ri.prototype.then=function(a,b,c){return 1===this.c&&a?(a=a.call(c,this.b),vd(a)?a:si(a)):2===this.c&&b?(a=b.call(c,this.b),vd(a)?a:ti(a)):this};
ri.prototype.getValue=function(){return this.b};
ri.prototype.$goog_Thenable=!0;function ti(a){var b=new ri;a=void 0===a?null:a;b.c=2;b.b=void 0===a?null:a;return b}
function si(a){var b=new ri;a=void 0===a?null:a;b.c=1;b.b=void 0===a?null:a;return b}
;function ui(a){E.call(this,a.message||a.description||a.name);this.isMissing=a instanceof vi;this.isTimeout=a instanceof qi&&"net.timeout"==a.errorCode;this.isCanceled=a instanceof Ed}
n(ui,E);ui.prototype.name="BiscottiError";function vi(){E.call(this,"Biscotti ID is missing from server")}
n(vi,E);vi.prototype.name="BiscottiMissingError";var pi={format:"RAW",method:"GET",timeout:5E3,withCredentials:!0},wi=null;function le(){if("1"===bb(je(),"args","privembed"))return Ad(Error("Biscotti ID is not available in private embed mode"));wi||(wi=Cd(oi().then(xi),function(a){return yi(2,a)}));
return wi}
function xi(a){a=a.responseText;if(0!=a.lastIndexOf(")]}'",0))throw new vi;a=JSON.parse(a.substr(4));if(1<(a.type||1))throw new vi;a=a.id;me(a);wi=si(a);zi(18E5,2);return a}
function yi(a,b){var c=new ui(b);me("");wi=ti(c);0<a&&zi(12E4,a-1);throw c;}
function zi(a,b){T(function(){Cd(oi().then(xi,function(a){return yi(b,a)}),va)},a)}
function Ai(){try{var a=w("yt.ads.biscotti.getId_");return a?a():le()}catch(b){return Ad(b)}}
;function Bi(a){if("1"!==bb(je(),"args","privembed")){a&&ke();try{Ai().then(function(a){a=ne(a);a.bsq=Ci++;Oe("//www.youtube.com/ad_data_204",{wa:!1,B:a,withCredentials:!0})},function(){}),T(Bi,18E5)}catch(b){R(b)}}}
var Ci=0;var Z=w("ytglobal.prefsUserPrefsPrefs_")||{};v("ytglobal.prefsUserPrefsPrefs_",Z,void 0);function Di(){this.b=Q("ALT_PREF_COOKIE_NAME","PREF");var a=Bb.get(""+this.b,void 0);if(a){a=decodeURIComponent(a).split("&");for(var b=0;b<a.length;b++){var c=a[b].split("="),d=c[0];(c=c[1])&&(Z[d]=c.toString())}}}
h=Di.prototype;h.get=function(a,b){Ei(a);Fi(a);var c=void 0!==Z[a]?Z[a].toString():null;return null!=c?c:b?b:""};
h.set=function(a,b){Ei(a);Fi(a);if(null==b)throw Error("ExpectedNotNull");Z[a]=b.toString()};
h.remove=function(a){Ei(a);Fi(a);delete Z[a]};
h.save=function(){wg(this.b,this.dump(),63072E3)};
h.clear=function(){for(var a in Z)delete Z[a]};
h.dump=function(){var a=[],b;for(b in Z)a.push(b+"="+encodeURIComponent(String(Z[b])));return a.join("&")};
function Fi(a){if(/^f([1-9][0-9]*)$/.test(a))throw Error("ExpectedRegexMatch: "+a);}
function Ei(a){if(!/^\w+$/.test(a))throw Error("ExpectedRegexMismatch: "+a);}
function Gi(a){a=void 0!==Z[a]?Z[a].toString():null;return null!=a&&/^[A-Fa-f0-9]+$/.test(a)?parseInt(a,16):null}
wa(Di);var Hi=null,Ii=null,Ji=null,Ki={};function Li(a){var b=a.id;a=a.ve_type;var c=Ig++;a=new Gg({veType:a,veCounter:c,elementIndex:void 0,dataElement:void 0,youtubeData:void 0});Ki[b]=a;b=Ng();c=Mg();b&&c&&Qg(b,c,[a])}
function Mi(a){var b=a.csn;a=a.root_ve_type;if(b&&a&&(Og(b,a),a=Mg()))for(var c in Ki){var d=Ki[c];d&&Qg(b,a,[d])}}
function Ni(a){Ki[a.id]=new Gg({trackingParams:a.tracking_params})}
function Oi(a){var b=Ng();a=Ki[a.id];b&&a&&tg("visualElementGestured",{csn:b,ve:Hg(a),gestureType:"INTERACTION_LOGGING_GESTURE_TYPE_GENERIC_CLICK"},Cg,void 0,void 0)}
function Pi(a){a=a.ids;var b=Ng();if(b)for(var c=0;c<a.length;c++){var d=Ki[a[c]];d&&tg("visualElementShown",{csn:b,ve:Hg(d),eventType:1},Cg,void 0,void 0)}}
function Qi(){var a=Hi;a&&a.startInteractionLogging&&a.startInteractionLogging()}
;v("yt.setConfig",P,void 0);v("yt.config.set",P,void 0);v("yt.setMsg",Ye,void 0);v("yt.msgs.set",Ye,void 0);v("yt.logging.errors.log",We,void 0);
v("writeEmbed",function(){var a=Q("PLAYER_CONFIG",void 0);Bi(!0);"gvn"==a.args.ps&&(document.body.style.backgroundColor="transparent");var b=document.referrer,c=Q("POST_MESSAGE_ORIGIN");window!=window.top&&b&&b!=document.URL&&(a.args.loaderUrl=b);Q("LIGHTWEIGHT_AUTOPLAY")&&(a.args.autoplay="1");Hi=a=oh(a);a.addEventListener("onScreenChanged",Mi);a.addEventListener("onLogClientVeCreated",Li);a.addEventListener("onLogServerVeCreated",Ni);a.addEventListener("onLogVeClicked",Oi);a.addEventListener("onLogVesShown",
Pi);a.addEventListener("onReady",Qi);b=Q("POST_MESSAGE_ID","player");Q("ENABLE_JS_API")?Ji=new ki(a):Q("ENABLE_POST_API")&&t(b)&&t(c)&&(Ii=new ni(window.parent,b,c),Ji=new ei(a,Ii.f));c=ie("BG_P");Mf(c)&&(Q("BG_I")||Q("BG_IU"))&&(If=!0,Hf.initialize(Q("BG_I",null),Q("BG_IU",null),c,Lf,void 0));Df()},void 0);
v("yt.www.watch.ads.restrictioncookie.spr",function(a){Re(a+"mac_204?action_fcts=1");return!0},void 0);
var Ri=re(function(){var a="ol";X.mark&&(0==a.lastIndexOf("mark_",0)||(a="mark_"+a),X.mark(a));a=Sh();var b=O();a.ol&&(a._ol=a._ol||[a.ol],a._ol.push(b));a.ol=b;a=zh();if(b=a.ol)Af(b),a.ol=0;Oh().tick_ol=void 0;O();Ph()?(a=Qh(),th("tick_ol_"+a)||qh("latencyActionTicked",{tickName:"ol",clientActionNonce:a},void 0),a=!0):a=!1;if(a=!a)a=!w("yt.timing.pingSent_");if(a&&(b=Q("TIMING_ACTION",void 0),a=Sh(),w("ytglobal.timingready_")&&b&&a._start&&(b=Rh()))){Lh||(yh(Dh,new Bh(Math.round(b-a._start),void 0)),
Lh=!0);b=!0;var c=Q("TIMING_WAIT",[]);if(c.length)for(var d=0,e=c.length;d<e;++d)if(!(c[d]in a)){b=!1;break}b&&Uh()}a=Di.getInstance();c=!!((Gi("f"+(Math.floor(119/31)+1))||0)&67108864);b=1<window.devicePixelRatio;document.body&&ed(document.body,"exp-invert-logo")&&(b&&!ed(document.body,"inverted-hdpi")?(d=document.body,d.classList?d.classList.add("inverted-hdpi"):ed(d,"inverted-hdpi")||(d.className+=0<d.className.length?" inverted-hdpi":"inverted-hdpi")):!b&&ed(document.body,"inverted-hdpi")&&fd());
c!=b&&(c="f"+(Math.floor(119/31)+1),d=Gi(c)||0,d=b?d|67108864:d&-67108865,0==d?delete Z[c]:Z[c]=d.toString(16).toString(),a.save())}),Si=re(function(){var a=Hi;
a&&a.sendAbandonmentPing&&a.sendAbandonmentPing();Q("PL_ATT")&&Hf.dispose();a=0;for(var b=Bf.length;a<b;a++)Af(Bf[a]);Bf.length=0;uf("//static.doubleclick.net/instream/ad_status.js");Cf=!1;P("DCLKSTAT",0);cd(Ji,Ii);if(a=Hi)a.removeEventListener("onScreenChanged",Mi),a.removeEventListener("onLogClientVeCreated",Li),a.removeEventListener("onLogServerVeCreated",Ni),a.removeEventListener("onLogVeClicked",Oi),a.removeEventListener("onLogVesShown",Pi),a.removeEventListener("onReady",Qi),a.destroy();Ki=
{}});
window.addEventListener?(window.addEventListener("load",Ri),window.addEventListener("unload",Si)):window.attachEvent&&(window.attachEvent("onload",Ri),window.attachEvent("onunload",Si));B("yt.abuse.player.botguardInitialized",w("yt.abuse.player.botguardInitialized")||Nf);B("yt.abuse.player.invokeBotguard",w("yt.abuse.player.invokeBotguard")||Of);B("yt.abuse.dclkstatus.checkDclkStatus",w("yt.abuse.dclkstatus.checkDclkStatus")||Ef);B("yt.player.exports.navigate",w("yt.player.exports.navigate")||Pg);
B("yt.util.activity.init",w("yt.util.activity.init")||Zf);B("yt.util.activity.getTimeSinceActive",w("yt.util.activity.getTimeSinceActive")||bg);B("yt.util.activity.setTimestamp",w("yt.util.activity.setTimestamp")||$f);}).call(this);
