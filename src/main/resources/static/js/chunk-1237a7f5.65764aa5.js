(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-1237a7f5"],{"9e31":function(e,t,s){"use strict";s("efcb")},c283:function(e,t,s){"use strict";s.r(t);var a=function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",[a("div",{staticStyle:{"text-align":"center"},attrs:{id:"logo"}},[a("router-link",{attrs:{to:"/"}},[a("img",{staticStyle:{width:"130px",height:"130px","margin-top":"10px"},attrs:{src:s("b640"),alt:"logo"}})]),a("h1",[e._v("회원가입")]),a("hr")],1),a("form",{staticClass:"container",attrs:{name:"login_member",preva:""}},[a("div",[a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*아이디")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.signup.putid,expression:"signup.putid"}],staticClass:"inputValues",attrs:{type:"text",name:"아이디",id:"id"},domProps:{value:e.signup.putid},on:{input:function(t){t.target.composing||e.$set(e.signup,"putid",t.target.value)}}}),a("button",{staticClass:"classBtn",on:{click:function(t){return t.preventDefault(),e.idCheck.apply(null,arguments)}}},[e._v(" 중복확인 ")])]),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*닉네임")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.signup.putnick,expression:"signup.putnick"}],staticClass:"inputValues",attrs:{type:"text",name:"닉네임",id:"nick"},domProps:{value:e.signup.putnick},on:{input:function(t){t.target.composing||e.$set(e.signup,"putnick",t.target.value)}}})]),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*비밀번호")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.signup.password,expression:"signup.password"}],staticClass:"inputValues",attrs:{type:"password",name:"비밀번호",id:"pw"},domProps:{value:e.signup.password},on:{keyup:e.passwordValid,input:function(t){t.target.composing||e.$set(e.signup,"password",t.target.value)}}}),e.passwordValidFlag?e._e():a("div",{staticClass:"pwFlag"},[e._v(" 유효하지 않은 비밀번호 입니다. ")])]),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*비밀번호확인")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.passwordCheck,expression:"passwordCheck"}],staticClass:"inputValues",attrs:{type:"password",name:"비밀번호 확인"},domProps:{value:e.passwordCheck},on:{keyup:e.passwordCheckValid,input:function(t){t.target.composing||(e.passwordCheck=t.target.value)}}}),e.passwordCheckFlag?e._e():a("div",{staticClass:"re_pwFlag"},[e._v(" 비밀번호가 동일하지 않습니다. ")])]),e._m(0),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*전화번호")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.signup.mobile,expression:"signup.mobile"}],staticClass:"inputValues",attrs:{type:"text",name:"전화번호",placeholder:"-없이 숫자만",maxlength:"11",id:"mobile"},domProps:{value:e.signup.mobile},on:{keyup:e.mobileCheckValid,input:function(t){t.target.composing||e.$set(e.signup,"mobile",t.target.value)}}}),e.mobileValidFlag?e._e():a("div",{staticClass:"pwFlag"},[e._v(" 유효하지 않은 전화번호 입니다. ")])]),e._m(1),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*우편번호")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.postcode,expression:"postcode"}],staticClass:"inputValues",attrs:{type:"text",placeholder:"우편번호",id:"zipCode",name:"주소"},domProps:{value:e.postcode},on:{input:function(t){t.target.composing||(e.postcode=t.target.value)}}}),a("span",[a("button",{staticClass:"classBtn",attrs:{type:"button"},on:{click:function(t){return e.execDaumPostcode()}}},[e._v("주소검색")])])]),a("div",{staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*주소")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.address,expression:"address"}],staticClass:"inputValues",attrs:{type:"text",id:"address",placeholder:"주소"},domProps:{value:e.address},on:{input:function(t){t.target.composing||(e.address=t.target.value)}}})]),e._m(2),a("div",{directives:[{name:"show",rawName:"v-show",value:e.checkPage,expression:"checkPage"}],staticClass:"tempDiv"},[a("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*사업자등록 번호")]),a("input",{directives:[{name:"model",rawName:"v-model",value:e.signup.busNum,expression:"signup.busNum"}],staticClass:"inputValues",attrs:{type:"text",name:"사업자등록번호",placeholder:"-없이 숫자만",maxlength:"10",id:"busNum"},domProps:{value:e.signup.busNum},on:{keyup:e.busNumValid,input:function(t){t.target.composing||e.$set(e.signup,"busNum",t.target.value)}}}),e.busNumValidFlag?e._e():a("div",{staticClass:"pwFlag"},[e._v(" 숫자 10자리를 입력하세요. ")])])])]),a("hr"),a("div",{staticClass:"footer"},[e._m(3),a("div",{staticClass:"joinBtnArea"},[a("button",{staticClass:"joinBtn",attrs:{type:"button"},on:{click:e.submit}},[a("span",[e._v("가입하기")])])])])])},i=[function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"tempDiv"},[s("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*이름")]),s("input",{staticClass:"username",attrs:{type:"text",name:"username",id:"username"}})])},function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"tempDiv"},[s("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("이메일")]),s("input",{staticClass:"useremail",attrs:{type:"text",name:"useremail",id:"useremail"}})])},function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"tempDiv"},[s("label",{staticClass:"labelClass",attrs:{for:""}},[e._v("*상세주소")]),s("input",{staticClass:"inputValues",attrs:{type:"text",id:"detailAddress",placeholder:"상세주소"}})])},function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{staticClass:"CheckBox"},[s("label",{staticClass:"Agree",attrs:{id:"agreement"}},[s("h2",[e._v("약관동의")]),s("hr")]),s("br"),s("div",{staticClass:"miniBox"},[s("input",{attrs:{type:"checkbox",name:"cb1",id:"agreement1"}}),e._v("귀하의 쇼핑몰에 회원으로 가입합니다(필수)"),s("br"),s("input",{attrs:{type:"checkbox",name:"cb2",id:"agreement2"}}),e._v("개인정보 수집 이용동의(필수)"),s("br"),s("input",{staticClass:"agree",attrs:{type:"checkbox",name:"cb3"}}),e._v("마케팅 활용 및 광고성 정보 수신 동의 (선택) ")])])}],l=s("bc3a"),n=s.n(l),r={data(){return{postcode:"",address:"",extraAddress:"",signup:{password:null,pwhint:"",pwhintans:null,putid:"",putnick:"",mobile:null,busNum:null},passwordValidFlag:!0,passwordCheck:"",passwordCheckFlag:!0,mobileValidFlag:!0,busNumValidFlag:!0,msg:"",checkIdFlag:!1,checkPwdFlag:!1,checkRePwdFlag:!1,checkTelFlag:!1,checkBnFlag:!1,checkPage:!1,agreement:!1}},methods:{currentURL(){let e=document.location.href;return e=e.substring(e.length-5,e.length),"join1"==e?(this.checkPage=!1,!1):(this.checkPage=!0,!0)},idCheck(){try{let e=this.signup.putid;if(""===e)return void alert("공백 입니다.");n.a.get("/api/member/idCheck/"+e).then(e=>{if(e.data>0)return alert("중복된 아이디입니다"),void(this.checkIdFlag=!1);alert("등록 가능한 아이디 입니다."),this.checkIdFlag=!0}).catch(e=>{console.log(e.response)})}catch(e){this.msg="error"}},passwordValid(){/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{8,16}$/.test(this.signup.password)?(this.passwordValidFlag=!0,this.checkPwdFlag=!0):(this.passwordValidFlag=!1,this.checkPwdFlag=!1)},passwordCheckValid(){this.signup.password===this.passwordCheck?(this.passwordCheckFlag=!0,this.checkRePwdFlag=!0):(this.passwordCheckFlag=!1,this.checkRePwdFlag=!1)},mobileCheckValid(){/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/.test(this.signup.mobile)?(this.mobileValidFlag=!0,this.checkTelFlag=!0):(this.mobileValidFlag=!1,this.checkTelFlag=!1)},busNumValid(){/^(?=.*[0-9]).{10,10}$/.test(this.signup.busNum)?(this.busNumValidFlag=!0,this.checkBnFlag=!0):(this.busNumValidFlag=!1,this.checkBnFlag=!1)},submit(){const e=document.getElementsByClassName("inputValues");let t=e.length;this.checkPage||(t-=1);for(let i=0;i<t;i++)if(0==e[i].value.length)return alert(e[i].name+" 을/를 입력하세요"),void e[i].focus();if(!this.checkIdFlag)return void alert("아이디 중복검사를 하세요");if(!this.checkPwdFlag)return void alert("비밀 번호를 확인하세요");if(!this.checkRePwdFlag)return void alert("비밀 번호가 일치 하지 않습니다");if(!this.checkTelFlag)return void alert("전화번호를 확인하세요");if(this.checkPage&&!this.checkBnFlag)return void alert("사업자 등록 번호를 확인하세요");let s=document.getElementById("agreement1"),a=document.getElementById("agreement2");if(s.checked)if(a.checked){let e={id:document.getElementById("id").value,nickname:document.getElementById("nick").value,password:document.getElementById("pw").value,name:document.getElementById("username").value,tel:document.getElementById("mobile").value,email:document.getElementById("useremail").value,zipcode:document.getElementById("zipCode").value,address:document.getElementById("address").value,detailaddr:document.getElementById("detailAddress").value,companyno:document.getElementById("busNum").value};n.a.post("/api/member/insertMember",e).then(e=>{200==e.status&&(alert("회원이 되신 것을 환영합니다"),this.$router.push("/"))}).catch(e=>{console.log(e.response)})}else alert("약관을 확인해 주세요");else alert("약관을 확인해 주세요")},execDaumPostcode(){new window.daum.Postcode({oncomplete:e=>{""!==this.extraAddress&&(this.extraAddress=""),"R"===e.userSelectedType?this.address=e.roadAddress:this.address=e.jibunAddress,"R"===e.userSelectedType?(""!==e.bname&&/[동|로|가]$/g.test(e.bname)&&(this.extraAddress+=e.bname),""!==e.buildingName&&"Y"===e.apartment&&(this.extraAddress+=""!==this.extraAddress?", "+e.buildingName:e.buildingName),""!==this.extraAddress&&(this.extraAddress=`(${this.extraAddress})`)):this.extraAddress="",this.postcode=e.zonecode}}).open()}},mounted(){this.currentURL()}},d=r,c=(s("9e31"),s("2877")),o=Object(c["a"])(d,a,i,!1,null,"30fe111f",null);t["default"]=o.exports},efcb:function(e,t,s){}}]);
//# sourceMappingURL=chunk-1237a7f5.65764aa5.js.map