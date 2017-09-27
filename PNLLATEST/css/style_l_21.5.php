
}
/*--- reset code ---*/
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video {
	margin:0;
	padding:0;
	border:0;
	font-size:100%;
	font:inherit;
	vertical-align:baseline;
}
article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {
	display: block;
}
ol,ul {
	list-style:none;
	margin:0px;
	padding:0px;
}
blockquote,q {
	quotes:none;
}
blockquote:before,blockquote:after,q:before,q:after {
	content:'';
	content:none;
}
table {
	border-collapse:collapse;
	border-spacing:0;
}

/* start editing from here */
a {
	text-decoration:none;
}
.txt-rt {
	text-align:right;
}/* text align right */
.txt-lt {
	text-align:left;
}/* text align left */
.txt-center {
	text-align:center;
/*-- W3Layouts --*/	
}/* text align center */
.float-rt {
	float:right;
}/* float right */
.float-lt {
	float:left;
}/* float left */
.clear {
	clear:both;
}/* clear float */
.pos-relative {
	position:relative;
}/* Position Relative */
.pos-absolute {
	position:absolute;
}/* Position Absolute */
.vertical-base {	
	vertical-align:baseline;
}/* vertical align baseline */
.vertical-top {	
	vertical-align:top;
}/* vertical align top */
nav.vertical ul li {	
	display:block;
}/* vertical menu */
nav.horizontal ul li {	
	display: inline-block;
}/* horizontal menu */
img {
	max-width:100%;
}

/*--- end reset code ---*/
body {
	background: black;
	font-family: 'Raleway', sans-serif;
}
*, *:before, *:after {
  box-sizing: border-box;
}
html {
  overflow-y: scroll;
}
a {
  text-decoration: none;
  color: #1ab188;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
a:hover {
  color: #179b77;
}
h1 {
	font-size:40px;
	font-weight:normal;
	text-align:center;
	padding:10px 0;
	color:#fff;
	text-transform:uppercase;
}
.form-w3ls {
	background:#ff9900;
	padding: 30px 50px;
	width:35%;
	margin:0 auto;
}
.tab-group {
    list-style: none;
    padding: 0;
    margin: 0 0 60px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  color: #fff;
  font-size: 20px;
  margin-right:25px;
  float: left;
  text-align: center;
  cursor: pointer;
  -webkit-transition: .5s ease;
  transition: .5s ease;
}
.tab-group li a:hover {
  color: #ffffff;
}
.tab-group .active a {
  color: #ffffff;
}
.tab-content > div:last-child {
  display: none;
}
.cl-effect-4 li a {
	position:relative;
}
.cl-effect-4 li a::after {
	position: absolute;
	top: 100%;
	left: 0;
	width: 100%;
	height: 1px;
	background:#000;
	content: '';
	opacity: 0;
	-webkit-transition: height 0.3s, opacity 0.3s, -webkit-transform 0.3s;
	-moz-transition: height 0.3s, opacity 0.3s, -moz-transform 0.3s;
	transition: height 0.3s, opacity 0.3s, transform 0.3s;
	-webkit-transform: translateY(-10px);
	-moz-transform: translateY(-10px);
	transform: translateY(-10px);
}
.cl-effect-4 li.active a::after, .cl-effect-4 li a:hover::after, .cl-effect-4 li a:focus::after {
    height: 2px;
    opacity: 1;
    -webkit-transform: translateY(0px);
    -moz-transform: translateY(0px);
    transform: translateY(0px);
}
/*-- Sign In Form --*/
p.header {
    font-size: 16px;
    font-weight: 500;
    color: #fff;
    letter-spacing: 1px;
    text-transform: uppercase;
}
div#signin-agile input[type="text"],div#signin-agile input[type="password"],input[type="number"],div#signup-agile,  input[type="text"],div#signup-agile input[type="tel"],div#signup-agile input[type="email"],div#signup-agile input[type="password"],select {
	padding: 10px;
    width: 100%;
    border: 1px solid rgba(30, 0, 41, 0);
   /* color: #fff;*/
    text-align: left;
    outline: none;
    letter-spacing: 1px;
    font-size: 16px;
    
    margin-top: 1em;
    margin-bottom: 2em;
    font-weight: 600;}
div#signin-agile input[type="text"]:focus,div#signin-agile input[type="password"]:focus,div#signup-agile input[type="text"]:focus,div#signup-agile input[type="tel"]:focus,div#signup-agile
input[type="email"]:focus,div#signup-agile
input[type="password, textarea"]:focus   {
	background-color:rgba(0, 0, 0, 0.32);
	border-color:rgba(0, 0, 0, 0.32);
}
/*--checkbox--*/
div#signin-agile input[type="checkbox"] {
    display: none;
}
div#signin-agile input[type="checkbox"]+label {
    position: relative;
    padding-left: 2em;
    border: none;
    outline: none;
    font-size: 1em;
    color: #fff;
    font-weight: 400;
    cursor: pointer;
}
div#signin-agile input[type="checkbox"]+label span:first-child {
    width: 14px;
    height: 14px;
    border: 2px solid #000;
    position: absolute;
    left: 0;

	top:3px;
}





div#signin-agile input[type="checkbox"]:checked+label span:first-child:before {
    content: "";
    background: url(../images/tick.png)no-repeat;
    position: absolute;
    left:0px;
    top:0px;
    font-size: 10px;
    width: 10px;
    height: 10px;
}
/*--//checkbox--*/
div#signin-agile .sign-in {
	padding:10px;
	background-color:rgba(7, 4, 7, 0.8);
	width:100%;
	border:none;
	cursor:pointer;
	color:#fff;
	outline:none;
	letter-spacing:1px;
	font-family: 'Raleway', sans-serif;
	font-weight: 600;
	font-size:20px;
	margin-top:30px;
	text-transform:uppercase;
	transition: all 0.5s ease-in-out;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
}
div#signin-agile .sign-in:hover {
	background-color:#000;
	color:#ff9900;
}
ul.links {
    padding: 30px 0;
	text-align:center;
}
ul.links li {
	display:inline;
} 
ul.links li a {
	color:#fff;
	position:relative;
	font-size:16px;
}
ul.links li.pass-w3ls a:after {
	content: '';
    background-color: #fff;
    height: 1px;
    width: 129px;
    position: absolute;
    left: 0;
    top: 24px;
	transition:all 0.5s ease-in-out;
	-webkit-transition:all 0.5s ease-in-out;
	-moz-transition:all 0.5s ease-in-out;
	-o-transition:all 0.5s ease-in-out;
	-ms-transition:all 0.5s ease-in-out;
}
ul.links li a:hover {
	color:#000;
}
ul.links li a:hover:after {
	background-color:#000;
}
/*-- /Sign In Form --*/
/*-- Sign Up Form --*/
div#signup-agile .register {
	padding:10px;
	background-color:rgba(7, 4, 7, 0.71);
	width:100%;
	border:none;
	cursor:pointer;
	color:#fff;
	letter-spacing:1px;
	font-weight: 500;
	font-family: 'Raleway', sans-serif;
	font-size:20px;
	margin-top:5%;
	text-transform:uppercase;
	-webkit-transition: all 0.5s ease-in-out;
	-moz-transition: all 0.5s ease-in-out;
	-o-transition: all 0.5s ease-in-out;
}
div#signup-agile .register:hover {
	background-color:#000;
	color:#ff9900;
}
/*-- /Sign Up Form --*/
p.copyright {
	text-align:center;
	padding:50px 0;
	color: #fff;
	font-size:16px;
	font-weight:normal;
}
p.copyright a {
	color:#fff;
}
p.copyright a:hover {
	color:#000;
}

/*-- RESPONSIVE DESIGN --*/
@media (max-width:1600px) {
	.form-w3ls {
	width:38%;	
	}
}

@media (max-width:1440px) {
ul.links li a {
	font-size:14px;
}
ul.links li.pass-w3ls a:after {
	width:111px;
}
}

@media (max-width: 1280px) {
.form-w3ls {
    width: 43%;
}
}

@media (max-width: 1080px) {
h1 {
	font-size:35px;
	padding:40px 0;	
}
.tab-group li a {
	font-size:17px;
}
.tab-group {
	margin:0 0 40px 0;
}
p.header {
    font-size: 14px;
}
div#signin-agile input[type="checkbox"]+label {
	font-size:14px;
	padding-right:25px;
}
div#signin-agile input[type="checkbox"]+label span:first-child {
	top:0;
}
div#signin-agile .sign-in {
	font-size:17px;
}
p.copyright {
	font-size:14px;
	line-height:30px;
}
}

@media (max-width: 1024px) {
.form-w3ls {
    width: 50%;
}
}

@media (max-width: 991px) {
.form-w3ls {
    width: 45%;
	padding:25px 40px;
}
div#signup-agile .register {
	margin-bottom:30px;
}
}

@media (max-width: 900px) {
.form-w3ls {
    width: 50%;
}
}

@media (max-width: 800px) {
.form-w3ls {
    width: 55%;
    padding: 25px 35px;
}
}

@media (max-width: 768px) {
h1 {
    font-size: 32px;
    padding: 35px 0;
}
.form-w3ls {
    width: 60%;
}
div#signin-agile input[type="text"], div#signin-agile input[type="password"], div#signup-agile input[type="text"], div#signup-agile input[type="tel"], div#signup-agile input[type="email"], div#signup-agile input[type="password"] {
	margin:13px 0 25px;
}
.tab-group {
    margin: 0 0 35px 0;
}
div#signin-agile input[type="checkbox"]+label {
	display:block;
	margin-top:-3px;
}
div#signin-agile .sign-in {
	margin-top:22px;
}
p.copyright {
	padding:100px 0 20px;
}
}

@media (max-width: 667px) {
.form-w3ls {
    width: 65%;
}
}

@media (max-width: 640px) {
.form-w3ls {
    width: 70%;
}
.tab-group li a {
    font-size: 15px;
}
p.header {
    font-size: 13px;
}
div#signin-agile input[type="text"], div#signin-agile input[type="password"], div#signup-agile input[type="text"], div#signup-agile input[type="tel"], div#signup-agile input[type="email"], div#signup-agile input[type="password"] {
	font-size:15px;
}
}

@media (max-width: 568px) {
h1 {
    font-size: 25px;
    padding: 30px 0;
}
}

@media (max-width: 480px) {
.form-w3ls {
    width: 80%;
}
p.copyright {
	padding:30px 10px;
}
.tab-group {
    margin: 0 0 30px 0;
}
}

@media (max-width: 414px) {
.form-w3ls {
    width: 85%;
}
p.header {
    font-size: 13px;
}
div#signin-agile input[type="text"], div#signin-agile input[type="password"], div#signup-agile input[type="text"], div#signup-agile input[type="tel"], div#signup-agile input[type="email"], div#signup-agile input[type="password"] {
    margin: 10px 0 12px;
}	
}

@media (max-width: 384px) {
.form-w3ls {
	padding: 15px 30px;
}
ul.links li {
    display: block;
}
ul.links {
	text-align:center;
}
ul.links li.pass-w3ls a:after {
	width:111px;
}
ul.links li.acc-w3ls a:after {
    width: 123px;
	left:0;
}
div#signup-agile .register {
	font-size:17px;
}
}

@media (max-width: 375px) {
h1 {
    font-size: 23px;
    padding: 20px 0;
}
ul.links {
    padding: 20px 0 30px;
}
}

@media (max-width: 320px) {
h1 {
    font-size: 23px;
}
.tab-group li a {
	margin-right:12px;
}
.form-w3ls {
    width: 90%;
	padding:10px 20px;
}
div#signin-agile input[type="text"], div#signin-agile input[type="password"], div#signup-agile input[type="text"], div#signup-agile input[type="tel"], div#signup-agile input[type="email"], div#signup-agile input[type="password"] {
	font-size:15px;
	margin: 10px 0 20px;
}
div#signin-agile .sign-in, div#signup-agile .register {
    font-size: 16px;
}
p.copyright {
    padding: 10px 10px;
} 
}
.btn.disabled, .btn[disabled], fieldset[disabled] .btn
{
cursor: not-allowed;
filter: alpha(opacity=65);
-webkit-box-shadow: none;
box-shadow: none;
opacity: .30;
}








/*-- /RESPONSIVE DESIGN --*/