!function(e,t){"undefined"!=typeof module?module.exports=t():"function"==typeof define&&"object"==typeof define.amd?define(t):this[e]=t()}("domready",function(){var e,t=[],n=document,o=n.documentElement.doScroll,d="DOMContentLoaded",f=(o?/^loaded|^c/:/^loaded|^i|^c/).test(n.readyState);return f||n.addEventListener(d,e=function(){for(n.removeEventListener(d,e),f=1;e=t.shift();)e()}),function(e){f?e():t.push(e)}});