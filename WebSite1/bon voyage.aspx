﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="bon voyage.aspx.vb" Inherits="bon_voyage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="#ffffcc">
<script type="text/javascript">
var stopafter = 0;
var firestop = []; var fire = []; var stdDOM = document.getElementById; var nsDOM = ((navigator.appName.indexOf('Netscape') != -1) && (parseInt(navigator.appVersion) ==4)); function pageWidth() {return window.innerWidth != null? window.innerWidth: document.body != null? document.body.clientWidth:700;}function pageHeight() {return window.innerHeight != null? window.innerHeight: document.body != null? document.body.clientHeight:500;} function posLeft() {return typeof window.pageXOffset != 'undefined' ? window.pageXOffset:document.documentElement.scrollLeft? document.documentElement.scrollLeft:document.body.scrollLeft? document.body.scrollLeft:0;} function posTop() {return typeof window.pageYOffset != 'undefined' ? window.pageYOffset:document.documentElement.scrollTop? document.documentElement.scrollTop: document.body.scrollTop?document.body.scrollTop:0;} var hD="0123456789ABCDEF"; function d2h(d) {return hD.substr(d>>>4,1)+hD.substr(d&15,1);} layernum=0; piece = function(parent) {this.elem = null; if(nsDOM) {if(parent == null) this.elem=new Layer(1); else {this.elem=new Layer(1,parent.elem); this.style.visibility = "inherit";} this.parent = parent; this.style = this.elem;} else if (stdDOM) {if(parent == null) this.parent=document.body; else this.parent=parent.elem; this.elem = document.createElement('div'); var xName = "xLayer" + layernum++; this.elem.setAttribute('id', xName); elemc = document.createTextNode('.'); this.elem.appendChild(elemc); this.parent.appendChild(this.elem); this.style = this.elem.style;document.getElementById(xName).style.lineHeight = '3px'; document.getElementById(xName).style.color = '#fff'; document.getElementById(xName).style.position = 'absolute';} window[this.elem.id]=this; this.ay = .1; this.type = 0;}; piece.prototype.moveTo = function(x,y) {if(nsDOM) this.elem.moveTo(x,y); else {this.style.left = x+"px"; this.style.top = y+"px";}}; piece.prototype.setC = function(colour) {if(nsDOM) this.elem.bgColor = colour; else this.style.backgroundColor = colour==null?'transparent':colour; };  piece.prototype.fire = function(sx, sy, fw) {var a = Math.random() * Math.PI * 2; switch (fw) {case 1: var s = Math.random() * 2; break; case 2: var s = 2; break; case 3: var s = (Math.PI * 2) - a - Math.random(); break; case 4: var s =  a - Math.random(); break; default: var s = Math.random() * 2; if(Math.random() >.6) s = 1.5;} this.dx = s*Math.sin(a); this.dy = s*Math.cos(a) - 2; this.x = sx; this.y = sy; this.moveTo(sx, sy);}; piece.prototype.sCol = function(hex,hex2,cl) {switch (cl) {case 1: this.setC("#" + hex + hex2 + "00"); break; case 2: this.setC("#00" + hex + "00"); break; case 3: this.setC("#00" + hex + hex2); break; case 4: this.setC("#" + hex + "0000"); break; case 5: this.setC("#" + hex + hex + "00"); break; case 6: this.setC("#" + hex + hex + hex); break; case 7: this.setC("#" + hex2 + hex + "00"); break; default: this.setC("#" + hex + hex2 + hex);}}; piece.prototype.animate = function(step,cl) {var colour = (step > 25) ?  Math.random()*(380-(step*5)) : 255-(step*4); var hex = d2h(colour-112); if (colour < 112) hex = d2h(colour); this.sCol(d2h(colour),hex,cl); this.dy += this.ay; this.x += this.dx; this.y += this.dy; this.moveTo(this.x, this.y);}; fo = function(numst) {this.id = "fo"+fo.count++;this.sp = new Array(); for(i=0 ; i<numst; i++) {this.sp[i]=new piece(); if(nsDOM){this.sp[i].style.clip.top =0; this.sp[i].style.clip.left = 0; this.sp[i].style.clip.bottom = 3; this.sp[i].style.clip.right = 3;} else this.sp[i].style.clip="rect("+0+" "+3+" "+3+" "+0+")"; this.sp[i].style.visibility = "visible";} this.step = 0; window[this.id]=this; fire.push(this); firestop.push(setInterval("window."+this.id+".animate()", 15));}; fo.count = 0; fo.prototype.animate = function() {if(this.step > 55) this.step = 0; if(this.step == 0) {var x = posLeft() + 50 + (Math.random()*(pageWidth() - 200)); var y = posTop() + 50 + (Math.random()*(pageHeight() - 250)); var fw = Math.floor(Math.random() * 5); this.cl = Math.floor(Math.random() * 8); for(i=0 ; i<this.sp.length ; i++)this.sp[i].fire(x, y, fw);} this.step++; for(i=0 ; i<this.sp.length ; i++) this.sp[i].animate(this.step,this.cl);};
function stopfire() {for(var i = firestop.length - 1; i >= 0; i--) {clearInterval(firestop[i]); for (var j = fire[i].sp.length - 1; j >= 0; j--) {fire[i].sp[j].style.visibility = "hidden";}}}
function fireworks() {new fo(50);setTimeout('new fo(50)',750);if (stopafter > 0) {setTimeout('stopfire()',stopafter * 60000);}} window.onload=fireworks;
                  
</script>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="logout" Width="91px" />
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image 
            ID="Image1" runat="server" Height="279px" 
            ImageUrl="~/1111111111/Bon_Voyage.gif" Width="645px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <span class="style1">Your ticket is ready...you can get the copy 
        :)&nbsp; 
        &nbsp;</span></p>
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Height="56px" Text="Get ticket" 
            Width="141px" PostBackUrl="~/ticketpaswd.aspx" />
    
    </div>
    </form>
</body>
</html>
