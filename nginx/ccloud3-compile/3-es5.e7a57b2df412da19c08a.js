(window.webpackJsonp=window.webpackJsonp||[]).push([[3],{"/QYs":function(n,l,t){"use strict";t.d(l,"a",function(){return e});var e=function(){function n(n){console.log(this.reasons),this.reasons=n.reasons}return n.prototype.ngOnInit=function(){},n}()},"/xxR":function(n,l,t){"use strict";t.d(l,"a",function(){return e});var e=function(){return function(){}}()},Hsfn:function(n,l,t){"use strict";t.d(l,"a",function(){return o});var e=t("kJ5x"),i=t("AytR"),u=t("CcnG"),o=function(){function n(n){this.http=n,this.url=i.a.apiEndpoint+"/wp-json/led/v2/monitor/limit"}return n.prototype.getAlarm=function(n){return this.http.get(this.url,{led_id:n})},n.prototype.updateAlarm=function(n,l){return this.http.put(this.url,l,{led_id:n})},n.ngInjectableDef=u.wc({factory:function(){return new n(u.Ac(e.a))},token:n,providedIn:"root"}),n}()},KKQO:function(n,l,t){"use strict";var e=t("CcnG"),i=t("A7o+"),u=t("Ip0R"),o=t("FVSy"),a=t("oJZn"),r=t("kWGw"),c=t("lLAP"),s=t("wFw1"),d=t("Fzqc"),f=t("gIcY"),p=t("CVdl"),m=t("Cl/c"),g=t("q8To"),h=t("Hsfn"),b=function(n){var l="function"==typeof Symbol&&n[Symbol.iterator],t=0;return l?l.call(n):{next:function(){return n&&t>=n.length&&(n=void 0),{value:n&&n[t++],done:!n}}}},R={ErrorRate:["MONITOR.ERROR_REASONS.BIT_ERROR_RATE.1","MONITOR.ERROR_REASONS.BIT_ERROR_RATE.2","MONITOR.ERROR_REASONS.BIT_ERROR_RATE.3"],temperature:["MONITOR.ERROR_REASONS.RECEIVER_TEMP.1","MONITOR.ERROR_REASONS.RECEIVER_TEMP.2","MONITOR.ERROR_REASONS.RECEIVER_TEMP.3"],humidity:["MONITOR.ERROR_REASONS.RECEIVER_HUMIDITY.1","MONITOR.ERROR_REASONS.RECEIVER_HUMIDITY.2"]},v=function(){function n(n,l){this.monitorService=n,this.alarmService=l,this.outData=new e.q,this.outLimit=!1,this.query={deadline:"day"},this.sensorType=g.a.ERROR_RATE,this.receiveCardOption=this.initOption({charts:{},total:0},"line")}return n.prototype.ngOnInit=function(){this.terminal&&this.terminal.monitor&&!1!==this.terminal.monitor||(this.noMonitor=!0)},n.prototype.onChartInit=function(n){this.recInstance=n,this.draw()},n.prototype.initOption=function(n,l){return void 0===l&&(l={}),{xAxis:{type:"category",boundaryGap:!1,data:[]},yAxis:{type:"value"},series:[]}},n.prototype.draw=function(){var n=this;this.terminal&&this.recInstance&&(this.recInstance.showLoading("default",{text:"loading",zlevel:1}),this.monitorService.get(this.terminal.id,this.query,this.sensorType).subscribe(function(l){n.format(l.body.data),n.recInstance.hideLoading()}))},n.prototype.format=function(n){this.formatCardInfo(n.bitErrorRate)},n.prototype.formatCardInfo=function(n){if(n){var l={};for(var t in n)n.hasOwnProperty(t)&&(l[t]=n[t].error_rate);this.initReceiveCard(l)}},n.prototype.initReceiveCard=function(n){var l,t,e,i;n=this.monitorService.filter(n,21);var u=new Set,o=[];for(var a in n)if(n.hasOwnProperty(a)){var r={name:a,type:"line",data:[],smooth:!0};if(Array.isArray(n[a])){var c=n[a][n[a].length-1],s=g.a.ERROR_RATE;if(c&&c.length>=2){var d=c[1];parseInt(d,10)>15&&(this.outLimit=!0,this.outData.emit({id:this.terminal.id,reasons:this.getReasons(s)}))}}try{for(var f=b(n[a]),p=f.next();!p.done;p=f.next())u.add((d=p.value)[0]),r.data.push(d[1])}catch(O){l={error:O}}finally{try{p&&!p.done&&(t=f.return)&&t.call(f)}finally{if(l)throw l.error}}o.push(r)}var m={tooltip:{trigger:"axis",backgroundColor:"rgba(245, 245, 245, 0.8)",borderWidth:1,borderColor:"#ccc",padding:10,textStyle:{color:"#000"}},grid:{width:220,height:100,left:25,top:10},xAxis:{type:"category",boundaryGap:!1,data:Array.from(u),show:!1},yAxis:{type:"value",show:!0,max:25},series:o};this.noData=!1,o.length<=0&&(m={},this.noData=!0);var h=!1;try{for(var R=b(o),v=R.next();!v.done;v=R.next())v.value.data.length>0&&(h=!0)}catch(y){e={error:y}}finally{try{v&&!v.done&&(i=R.return)&&i.call(R)}finally{if(e)throw e.error}}h||(m={},this.noData=!0),this.recInstance&&this.recInstance.setOption(m,{notMerge:!0}),this.updateErrorStatus(n)},n.prototype.getReasons=function(n){var l;if(n)switch(n){case g.a.ERROR_RATE:l=R[g.a.ERROR_RATE];break;case g.a.TEMPERATURE:l=R[g.a.TEMPERATURE];break;case g.a.HUMIDITY:l=R[g.a.HUMIDITY];break;default:l=[]}return l},n.prototype.getThreshold=function(n,l,t){var e=(((n||{})[l]||{}).values||{})[t];return(((n||{})[l]||{}).enableds||{})[t]&&"number"==typeof e?e:void 0},n.prototype.updateErrorStatus=function(n){var l=this;this.alarmService.getAlarm(this.terminal.id).subscribe(function(t){var e=l.getThreshold(t.body.data,"Bit_Error_Rate","Critical");for(var i in n)if(n.hasOwnProperty(i)&&Array.isArray(n[i])){var u=n[i][n[i].length-1],o=g.a.ERROR_RATE;u&&u.length>=2&&"number"==typeof e&&parseInt(u[1],10)>e&&(l.outLimit=!0,l.outData.emit({id:l.terminal.id,reasons:l.getReasons(o)}))}})},n}(),O=e.Qb({encapsulation:0,styles:[[".mini-chart[_ngcontent-%COMP%]{position:relative;width:100%;height:100%}"]],data:{}});function y(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,2,"div",[["style","position: absolute;top:0;left:20px;"]],null,null,null,null,null)),(n()(),e.rc(1,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,1,0,e.tc(l,1,0,e.fc(l,2).transform("MONITOR.NO_DATA")))})}function x(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,4,"div",[["class","mini-chart"]],null,null,null,null,null)),(n()(),e.Sb(1,0,null,null,1,"div",[["class","demo-chart"],["echarts",""],["style","width:250px;height:120px;"],["theme","macarons"]],null,[[null,"chartInit"]],function(n,l,t){var e=!0;return"chartInit"===l&&(e=!1!==n.component.onChartInit(t)&&e),e},null,null)),e.Rb(2,5193728,null,0,p.b,[e.n,e.H],{options:[0,"options"],theme:[1,"theme"]},{chartInit:"chartInit"}),(n()(),e.Cb(16777216,null,null,1,null,y)),e.Rb(4,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null)],function(n,l){var t=l.component;n(l,2,0,t.receiveCardOption,"macarons"),n(l,4,0,t.noData)},null)}var C=t("JDDX"),I=function(){function n(n){this.flowService=n,this.feeOption=this.initOption({charts:{},total:0},"line")}return n.prototype.ngOnInit=function(){this.terminal&&this.terminal.flowfee&&!1!==this.terminal.flowfee||(this.noFlowfee=!0)},n.prototype.onChartInit=function(n){this.feeInstance=n,this.draw()},n.prototype.initOption=function(n,l){return void 0===l&&(l={}),{series:[{type:"pie"}]}},n.prototype.draw=function(){var n=this;this.terminal&&this.feeInstance&&(this.feeInstance.showLoading("default",{text:"loading",zlevel:1}),this.flowService.getFlow(this.terminal.id).subscribe(function(l){n.feeInstance.hideLoading(),n.initChart(l.body.data)}))},n.prototype.initChart=function(n){var l={grid:{left:-40},tooltip:{trigger:"item",formatter:"{b}: {c} ({d}%)",position:[160,40]},series:[{name:"\u8ba1\u8d39",type:"pie",radius:["50%","70%"],avoidLabelOverlap:!1,label:{normal:{show:!1,position:"center"},emphasis:{show:!0,textStyle:{fontSize:"10"}}},labelLine:{normal:{show:!1}},data:this.filterFee(n)}]};this.noFlowfee||(l.title=[{text:"Playlist played today",left:"35%",textStyle:{fontSize:10}}]),this.feeInstance&&this.feeInstance.setOption(l,{notMerge:!0})},n.prototype.filterFee=function(n){var l,t,e=[];if(n)try{for(var i=function(n){var l="function"==typeof Symbol&&n[Symbol.iterator],t=0;return l?l.call(n):{next:function(){return n&&t>=n.length&&(n=void 0),{value:n&&n[t++],done:!n}}}}(n),u=i.next();!u.done;u=i.next()){var o=u.value;e.push({value:o.times,name:o.resOriginName})}}catch(a){l={error:a}}finally{try{u&&!u.done&&(t=i.return)&&t.call(i)}finally{if(l)throw l.error}}else this.noFlowfee=!0;return e},n}(),_=e.Qb({encapsulation:0,styles:[[".mini-chart[_ngcontent-%COMP%]{position:relative;width:100%;height:100%}"]],data:{}});function S(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,2,"div",[["style","position: absolute;top:0;left:20px;"]],null,null,null,null,null)),(n()(),e.rc(1,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,1,0,e.tc(l,1,0,e.fc(l,2).transform("MONITOR.NO_DATA")))})}function M(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,4,"div",[["class","mini-chart"]],null,null,null,null,null)),(n()(),e.Sb(1,0,null,null,1,"div",[["class","fee-chart"],["echarts",""],["style","width:250px;height:120px;left:-10px;"],["theme","macarons"]],null,[[null,"chartInit"]],function(n,l,t){var e=!0;return"chartInit"===l&&(e=!1!==n.component.onChartInit(t)&&e),e},null,null)),e.Rb(2,5193728,null,0,p.b,[e.n,e.H],{options:[0,"options"],theme:[1,"theme"]},{chartInit:"chartInit"}),(n()(),e.Cb(16777216,null,null,1,null,S)),e.Rb(4,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null)],function(n,l){var t=l.component;n(l,2,0,t.feeOption,"macarons"),n(l,4,0,t.noFlowfee)},null)}var w=t("lzlj");t("mssL"),t("RKaY"),t("A2rR"),t("+A7u"),t("o3x0"),t.d(l,"a",function(){return E}),t.d(l,"b",function(){return Z});var E=e.Qb({encapsulation:0,styles:[[".dialog-container[_ngcontent-%COMP%]{height:100%;position:relative;width:100%}.cards-container[_ngcontent-%COMP%]{margin-bottom:30px;justify-content:flex-start;display:flex;flex-wrap:wrap;padding:5px 8px}.cards-container[_ngcontent-%COMP%]   .card-title[_ngcontent-%COMP%]{text-overflow:ellipsis;width:110px;overflow:hidden;text-align:center;font-size:14px}.cards-container[_ngcontent-%COMP%]   .card-version[_ngcontent-%COMP%], .cards-container[_ngcontent-%COMP%]   .resolution[_ngcontent-%COMP%]{text-overflow:ellipsis;width:100%;overflow-x:hidden;font-size:12px;margin-top:0}.cards-container[_ngcontent-%COMP%]   .card-version[_ngcontent-%COMP%]{flex:5}.cards-container[_ngcontent-%COMP%]   .resolution[_ngcontent-%COMP%]{flex:6}.cards-container[_ngcontent-%COMP%]   .card-switch[_ngcontent-%COMP%]{display:flex;align-items:center;flex-direction:row;width:100px;height:35px}.cards-container[_ngcontent-%COMP%]   .camera-setting[_ngcontent-%COMP%]   .wrapper[_ngcontent-%COMP%]{display:flex;align-items:center;justify-content:space-between}.choose-terminal[_ngcontent-%COMP%]{position:relative;display:inline-block;width:265px;height:335px;margin:8px;padding:10px}.choose-terminal[_ngcontent-%COMP%]:hover{background-color:#d8dde4;border-color:#d8dde4;cursor:pointer}.online[_ngcontent-%COMP%]{background-color:#e8f0fe;text-align:center}.offline[_ngcontent-%COMP%]{background-color:#f5f7fa;text-align:center}.uninitialized[_ngcontent-%COMP%]{text-align:center}.no-result[_ngcontent-%COMP%]{display:flex;flex-direction:column;align-items:center;justify-content:center;width:100%;height:240px;font-size:18px;color:#ddd}.terminal-image[_ngcontent-%COMP%]   i[_ngcontent-%COMP%]{font-size:80px}.terminal-content[_ngcontent-%COMP%]{width:100%;font-size:12px}.terminal-content[_ngcontent-%COMP%]   .card-information[_ngcontent-%COMP%]{display:flex;justify-content:space-between}.terminal-thumbnail[_ngcontent-%COMP%]{position:absolute;top:16px;left:10px;width:60px;height:41px}.term-online[_ngcontent-%COMP%]{color:#5cb85c}.term-uninit[_ngcontent-%COMP%]{color:#f5f7fa}.selected[_ngcontent-%COMP%]{background-color:#d8dde4;border-color:#d8dde4}.terminal-card-header[_ngcontent-%COMP%]{display:flex;flex-direction:row;align-items:center;justify-content:space-between;position:relative}"]],data:{}});function k(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,5,"div",[["class","no-result"]],null,null,null,null,null)),(n()(),e.Sb(1,0,null,null,1,"div",[],null,null,null,null,null)),(n()(),e.Sb(2,0,null,null,0,"img",[["alt","None Results"],["width","200px"]],[[8,"src",4]],null,null,null,null)),(n()(),e.Sb(3,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),e.rc(4,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,2,0,l.component.noResultImage),n(l,4,0,e.tc(l,4,0,e.fc(l,5).transform("TERMINAL.HAVE_NO_TERMINAL")))})}function T(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,5,"mat-card-subtitle",[["class","card-title mat-card-subtitle"]],null,null,null,null,null)),e.nc(512,null,u.D,u.E,[e.y,e.z,e.n,e.O]),e.Rb(2,278528,null,0,u.n,[u.D],{klass:[0,"klass"],ngClass:[1,"ngClass"]},null),e.Rb(3,16384,null,0,o.i,[],null,null),(n()(),e.rc(4,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],function(n,l){n(l,2,0,"card-title",l.component.isOnline(l.parent.context.$implicit.status))},function(n,l){n(l,4,0,e.tc(l,4,0,e.fc(l,5).transform("MONITOR."+l.parent.context.$implicit.status)))})}function P(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,3,"mat-card-subtitle",[["class","card-title mat-card-subtitle"],["style","background-color: orange;"]],null,[[null,"click"]],function(n,l,t){var e=!0,i=n.component;return"click"===l&&(t.stopPropagation(),e=!1!==i.displayAnalyse(i.outError.reasons)&&e),e},null,null)),e.Rb(1,16384,null,0,o.i,[],null,null),(n()(),e.rc(2,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,2,0,e.tc(l,2,0,e.fc(l,3).transform("MONITOR.ERROR")))})}function A(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,9,"div",[],null,null,null,null,null)),(n()(),e.Sb(1,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),e.rc(2,null,["",": \xa0\xa0"])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(4,0,null,null,5,"mat-slide-toggle",[["class","example-margin mat-slide-toggle"],["color","primary"]],[[8,"id",0],[1,"tabindex",0],[2,"mat-checked",null],[2,"mat-disabled",null],[2,"mat-slide-toggle-label-before",null],[2,"_mat-animation-noopable",null],[2,"ng-untouched",null],[2,"ng-touched",null],[2,"ng-pristine",null],[2,"ng-dirty",null],[2,"ng-valid",null],[2,"ng-invalid",null],[2,"ng-pending",null]],[[null,"ngModelChange"],[null,"focus"]],function(n,l,t){var i=!0,u=n.component;return"focus"===l&&(i=!1!==e.fc(n,5)._inputElement.nativeElement.focus()&&i),"ngModelChange"===l&&(i=!1!==(n.parent.context.$implicit.monitor=t)&&i),"ngModelChange"===l&&(i=!1!==u.setMonitor(t,n.parent.context.$implicit)&&i),i},a.b,a.a)),e.Rb(5,1228800,null,0,r.b,[e.n,c.h,e.i,[8,null],e.H,r.a,[2,s.a],[2,d.b]],{disabled:[0,"disabled"],color:[1,"color"]},null),e.nc(1024,null,f.q,function(n){return[n]},[r.b]),e.Rb(7,671744,null,0,f.v,[[8,null],[8,null],[8,null],[6,f.q]],{isDisabled:[0,"isDisabled"],model:[1,"model"]},{update:"ngModelChange"}),e.nc(2048,null,f.r,null,[f.v]),e.Rb(9,16384,null,0,f.s,[[4,f.r]],null,null)],function(n,l){n(l,5,0,"Online"!==l.parent.context.$implicit.status,"primary"),n(l,7,0,"Online"!==l.parent.context.$implicit.status,l.parent.context.$implicit.monitor)},function(n,l){n(l,2,0,e.tc(l,2,0,e.fc(l,3).transform("MONITOR.MONITOR"))),n(l,4,1,[e.fc(l,5).id,e.fc(l,5).disabled?null:-1,e.fc(l,5).checked,e.fc(l,5).disabled,"before"==e.fc(l,5).labelPosition,"NoopAnimations"===e.fc(l,5)._animationMode,e.fc(l,9).ngClassUntouched,e.fc(l,9).ngClassTouched,e.fc(l,9).ngClassPristine,e.fc(l,9).ngClassDirty,e.fc(l,9).ngClassValid,e.fc(l,9).ngClassInvalid,e.fc(l,9).ngClassPending])})}function N(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,9,"div",[],null,null,null,null,null)),(n()(),e.Sb(1,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),e.rc(2,null,["",": \xa0\xa0"])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(4,0,null,null,5,"mat-slide-toggle",[["class","example-margin mat-slide-toggle"],["color","primary"]],[[8,"id",0],[1,"tabindex",0],[2,"mat-checked",null],[2,"mat-disabled",null],[2,"mat-slide-toggle-label-before",null],[2,"_mat-animation-noopable",null],[2,"ng-untouched",null],[2,"ng-touched",null],[2,"ng-pristine",null],[2,"ng-dirty",null],[2,"ng-valid",null],[2,"ng-invalid",null],[2,"ng-pending",null]],[[null,"ngModelChange"],[null,"focus"]],function(n,l,t){var i=!0,u=n.component;return"focus"===l&&(i=!1!==e.fc(n,5)._inputElement.nativeElement.focus()&&i),"ngModelChange"===l&&(i=!1!==(n.parent.context.$implicit.flowfee=t)&&i),"ngModelChange"===l&&(i=!1!==u.setFee(t,n.parent.context.$implicit)&&i),i},a.b,a.a)),e.Rb(5,1228800,null,0,r.b,[e.n,c.h,e.i,[8,null],e.H,r.a,[2,s.a],[2,d.b]],{disabled:[0,"disabled"],color:[1,"color"]},null),e.nc(1024,null,f.q,function(n){return[n]},[r.b]),e.Rb(7,671744,null,0,f.v,[[8,null],[8,null],[8,null],[6,f.q]],{isDisabled:[0,"isDisabled"],model:[1,"model"]},{update:"ngModelChange"}),e.nc(2048,null,f.r,null,[f.v]),e.Rb(9,16384,null,0,f.s,[[4,f.r]],null,null)],function(n,l){n(l,5,0,"Online"!==l.parent.context.$implicit.status,"primary"),n(l,7,0,"Online"!==l.parent.context.$implicit.status,l.parent.context.$implicit.flowfee)},function(n,l){n(l,2,0,e.tc(l,2,0,e.fc(l,3).transform("MONITOR.FEE.FEE"))),n(l,4,1,[e.fc(l,5).id,e.fc(l,5).disabled?null:-1,e.fc(l,5).checked,e.fc(l,5).disabled,"before"==e.fc(l,5).labelPosition,"NoopAnimations"===e.fc(l,5)._animationMode,e.fc(l,9).ngClassUntouched,e.fc(l,9).ngClassTouched,e.fc(l,9).ngClassPristine,e.fc(l,9).ngClassDirty,e.fc(l,9).ngClassValid,e.fc(l,9).ngClassInvalid,e.fc(l,9).ngClassPending])})}function D(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,1,"app-errorrate-mini-chart",[],null,[[null,"outData"]],function(n,l,t){var e=!0;return"outData"===l&&(e=!1!==n.component.rateWarn(t)&&e),e},x,O)),e.Rb(1,114688,[["errorMini",4]],0,v,[m.a,h.a],{terminal:[0,"terminal"]},{outData:"outData"})],function(n,l){n(l,1,0,l.parent.parent.context.$implicit)},null)}function $(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,2,"div",[["style","position: relative;top:0;left:20px;"]],null,null,null,null,null)),(n()(),e.rc(1,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,1,0,e.tc(l,1,0,e.fc(l,2).transform("MONITOR.Uninitialized")))})}function j(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,4,"div",[],null,null,null,null,null)),(n()(),e.Cb(16777216,null,null,1,null,D)),e.Rb(2,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,$)),e.Rb(4,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null)],function(n,l){n(l,2,0,l.parent.context.$implicit.monitor),n(l,4,0,!l.parent.context.$implicit.monitor)},null)}function z(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,1,"app-fee-chart",[],null,null,null,M,_)),e.Rb(1,114688,null,0,I,[C.a],{terminal:[0,"terminal"]},null)],function(n,l){n(l,1,0,l.parent.parent.context.$implicit)},null)}function U(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,2,"div",[["style","position: relative;top:0;left:20px;"]],null,null,null,null,null)),(n()(),e.rc(1,null,["",""])),e.kc(131072,i.j,[i.k,e.i])],null,function(n,l){n(l,1,0,e.tc(l,1,0,e.fc(l,2).transform("MONITOR.Uninitialized")))})}function W(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,4,"div",[],null,null,null,null,null)),(n()(),e.Cb(16777216,null,null,1,null,z)),e.Rb(2,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,U)),e.Rb(4,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null)],function(n,l){n(l,2,0,l.parent.context.$implicit.flowfee),n(l,4,0,!l.parent.context.$implicit.flowfee)},null)}function F(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,63,"mat-card",[["class","choose-terminal mat-card"]],null,[[null,"click"]],function(n,l,t){var e=!0;return"click"===l&&(n.component.drawData(n.context.$implicit),e=!1!==t.stopPropagation()&&e),e},w.d,w.a)),e.nc(512,null,u.D,u.E,[e.y,e.z,e.n,e.O]),e.Rb(2,278528,null,0,u.n,[u.D],{klass:[0,"klass"],ngClass:[1,"ngClass"]},null),e.lc(3,{selected:0}),e.Rb(4,49152,null,0,o.a,[],null,null),(n()(),e.Sb(5,0,null,0,15,"div",[["class","terminal-card-header"]],null,null,null,null,null)),(n()(),e.Sb(6,0,null,null,6,"div",[["class","terminal-image"]],null,null,null,null,null)),(n()(),e.Sb(7,0,null,null,4,"i",[["class","material-icons"]],null,null,null,null,null)),e.nc(512,null,u.D,u.E,[e.y,e.z,e.n,e.O]),e.Rb(9,278528,null,0,u.n,[u.D],{klass:[0,"klass"],ngClass:[1,"ngClass"]},null),e.lc(10,{"term-online":0,"term-offline":1,"term-uninit":2}),(n()(),e.rc(-1,null,[" tv "])),(n()(),e.Sb(12,0,null,null,0,"img",[["alt","screenshot"],["class","terminal-thumbnail"]],[[8,"src",4]],[[null,"error"]],function(n,l,t){var e=!0;return"error"===l&&(e=!1!==n.component.setDefaultImg(n.context.$implicit)&&e),e},null,null)),(n()(),e.Sb(13,0,null,null,7,"div",[["class","terminal-info"]],null,null,null,null,null)),(n()(),e.Sb(14,0,null,null,2,"mat-card-title",[["class","card-title mat-card-title"]],null,null,null,null,null)),e.Rb(15,16384,null,0,o.j,[],null,null),(n()(),e.rc(16,null,["",""])),(n()(),e.Cb(16777216,null,null,1,null,T)),e.Rb(18,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,P)),e.Rb(20,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Sb(21,0,null,0,40,"mat-card-content",[["class","terminal-content mat-card-content"]],null,null,null,null,null)),e.Rb(22,16384,null,0,o.d,[],null,null),(n()(),e.Sb(23,0,null,null,8,"div",[["class","card-information"]],null,null,null,null,null)),(n()(),e.Sb(24,0,null,null,3,"mat-card-title",[["class","card-version mat-card-title"]],null,null,null,null,null)),e.Rb(25,16384,null,0,o.j,[],null,null),(n()(),e.rc(26,null,["",": \xa0",""])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(28,0,null,null,3,"mat-card-title",[["class","resolution mat-card-title"]],null,null,null,null,null)),e.Rb(29,16384,null,0,o.j,[],null,null),(n()(),e.rc(30,null,["",": \xa0",""])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(32,0,null,null,4,"div",[["class","card-switch"]],null,[[null,"click"]],function(n,l,t){var e=!0;return"click"===l&&(e=!1!==t.stopPropagation()&&e),e},null,null)),(n()(),e.Cb(16777216,null,null,1,null,A)),e.Rb(34,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,N)),e.Rb(36,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Sb(37,0,null,null,15,"div",[["class","camera-setting"]],null,null,null,null,null)),(n()(),e.Sb(38,0,null,null,14,"div",[["class","wrapper"]],null,null,null,null,null)),(n()(),e.Sb(39,0,null,null,9,"div",[["class","auto-upload-switch"]],null,null,null,null,null)),(n()(),e.Sb(40,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),e.rc(41,null,["",": \xa0\xa0"])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(43,0,null,null,5,"mat-slide-toggle",[["class","example-margin mat-slide-toggle"],["color","primary"]],[[8,"id",0],[1,"tabindex",0],[2,"mat-checked",null],[2,"mat-disabled",null],[2,"mat-slide-toggle-label-before",null],[2,"_mat-animation-noopable",null],[2,"ng-untouched",null],[2,"ng-touched",null],[2,"ng-pristine",null],[2,"ng-dirty",null],[2,"ng-valid",null],[2,"ng-invalid",null],[2,"ng-pending",null]],[[null,"ngModelChange"],[null,"focus"]],function(n,l,t){var i=!0,u=n.component;return"focus"===l&&(i=!1!==e.fc(n,44)._inputElement.nativeElement.focus()&&i),"ngModelChange"===l&&(i=!1!==u.setCameraAutoUpload(t,n.context.$implicit)&&i),i},a.b,a.a)),e.Rb(44,1228800,null,0,r.b,[e.n,c.h,e.i,[8,null],e.H,r.a,[2,s.a],[2,d.b]],{disabled:[0,"disabled"],color:[1,"color"]},null),e.nc(1024,null,f.q,function(n){return[n]},[r.b]),e.Rb(46,671744,null,0,f.v,[[8,null],[8,null],[8,null],[6,f.q]],{isDisabled:[0,"isDisabled"],model:[1,"model"]},{update:"ngModelChange"}),e.nc(2048,null,f.r,null,[f.v]),e.Rb(48,16384,null,0,f.s,[[4,f.r]],null,null),(n()(),e.Sb(49,0,null,null,3,"span",[["class","more"]],null,[[null,"click"]],function(n,l,t){var e=!0;return"click"===l&&(n.component.cameraMore(n.context.$implicit),e=!1!==t.stopPropagation()&&e),e},null,null)),(n()(),e.Sb(50,0,null,null,2,"a",[],null,null,null,null,null)),(n()(),e.rc(51,null,["",""])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(53,0,null,null,3,"div",[["class","card-version"]],null,null,null,null,null)),(n()(),e.Sb(54,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),e.rc(55,null,["",": "])),e.kc(131072,i.j,[i.k,e.i]),(n()(),e.Sb(57,0,null,null,4,"div",[],null,null,null,null,null)),(n()(),e.Cb(16777216,null,null,1,null,j)),e.Rb(59,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,W)),e.Rb(61,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Sb(62,0,null,0,1,"mat-card-actions",[["class","mat-card-actions"]],[[2,"mat-card-actions-align-end",null]],null,null,null,null)),e.Rb(63,16384,null,0,o.b,[],null,null)],function(n,l){var t=l.component,e=n(l,3,0,t.current&&l.context.$implicit.id===t.current.id);n(l,2,0,"choose-terminal",e);var i=n(l,10,0,"Online"==l.context.$implicit.status,"Offline"==l.context.$implicit.status,"Uninitialized"==l.context.$implicit.status);n(l,9,0,"material-icons",i),n(l,18,0,!t.outError[l.context.$implicit.id]&&1!==t.outError[l.context.$implicit.id]),n(l,20,0,t.outError[l.context.$implicit.id]&&1===t.outError[l.context.$implicit.id]),n(l,34,0,"monitor"===t.template),n(l,36,0,"fee"===t.template),n(l,44,0,"Online"!==l.context.$implicit.status,"primary"),n(l,46,0,"Online"!==l.context.$implicit.status,l.context.$implicit.cameraConfig.auto_upload),n(l,59,0,"monitor"===t.template),n(l,61,0,"fee"===t.template)},function(n,l){var t=l.component;n(l,12,0,e.Wb(1,"",null==l.context.$implicit?null:l.context.$implicit.imgUrl,"")),n(l,16,0,l.context.$implicit.title),n(l,26,0,e.tc(l,26,0,e.fc(l,27).transform("MONITOR.VERSION")),t.getVersion(l.context.$implicit)),n(l,30,0,e.tc(l,30,0,e.fc(l,31).transform("MONITOR.RESOLUTION")),t.getResolution(l.context.$implicit)),n(l,41,0,e.tc(l,41,0,e.fc(l,42).transform("MONITOR.CAMERA_AUTO_UPLOAD"))),n(l,43,1,[e.fc(l,44).id,e.fc(l,44).disabled?null:-1,e.fc(l,44).checked,e.fc(l,44).disabled,"before"==e.fc(l,44).labelPosition,"NoopAnimations"===e.fc(l,44)._animationMode,e.fc(l,48).ngClassUntouched,e.fc(l,48).ngClassTouched,e.fc(l,48).ngClassPristine,e.fc(l,48).ngClassDirty,e.fc(l,48).ngClassValid,e.fc(l,48).ngClassInvalid,e.fc(l,48).ngClassPending]),n(l,51,0,e.tc(l,51,0,e.fc(l,52).transform("MONITOR.MORE"))),n(l,55,0,e.tc(l,55,0,e.fc(l,56).transform("MONITOR.GRAPH"))),n(l,62,0,"end"===e.fc(l,63).align)})}function L(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,2,"div",[["class","cards-container"]],null,null,null,null,null)),(n()(),e.Cb(16777216,null,null,1,null,F)),e.Rb(2,278528,null,0,u.o,[e.Z,e.W,e.y],{ngForOf:[0,"ngForOf"],ngForTrackBy:[1,"ngForTrackBy"]},null)],function(n,l){var t=l.component;n(l,2,0,t.terminals,t.trackMonitor)},null)}function Z(n){return e.uc(0,[(n()(),e.Sb(0,0,null,null,4,"div",[["class","dialog-container"]],null,null,null,null,null)),(n()(),e.Cb(16777216,null,null,1,null,k)),e.Rb(2,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null),(n()(),e.Cb(16777216,null,null,1,null,L)),e.Rb(4,16384,null,0,u.p,[e.Z,e.W],{ngIf:[0,"ngIf"]},null)],function(n,l){var t=l.component;n(l,2,0,t.noResult),n(l,4,0,!t.loading)},null)}},mssL:function(n,l,t){"use strict";t.d(l,"a",function(){return a});var e=t("CcnG"),i=(t("RKaY"),t("Cl/c"),t("A2rR"),t("+A7u"),t("Biuy")),u=t("/QYs"),o=t("0KPo"),a=function(){function n(n,l,t,i,u,o){this.terminalService=n,this.monitorService=l,this.groupService=t,this.translateService=i,this.commandService=u,this.dialog=o,this.loading=!0,this.noResult=!1,this.noResultImage="./assets/images/empty.svg",this.url404="./assets/images/404.jpeg",this.mapView=!1,this.chooseTerminal=new e.q,this.outError={}}return n.prototype.drawData=function(n){this.current=n,this.chooseTerminal.emit(n)},n.prototype.isOnline=function(n){var l="";switch(n){case"Online":l="online";break;case"Offline":l="offline";break;case"Uninitialized":l="uninitialized"}return l},n.prototype.getVersion=function(n){return n.post_meta._led_status.info&&n.post_meta._led_status.info.info?n.post_meta._led_status.info.info.model+" "+n.post_meta._led_status.info.info.vername:"--"},n.prototype.getResolution=function(n){var l=(((n||{}).post_meta||{})._led_status||{}).dimension||{},t="--";return l.real_width&&l.real_height?t=l.real_width+"x"+l.real_height:l.width&&l.height&&(t=l.width+"x"+l.height),t},n.prototype.setDefaultImg=function(n){n.imgUrl=this.url404},n.prototype.setMonitor=function(n,l){var t=0;n&&(t=180),this.terminalService.postCommand(l,"monitoring_report_time",{"sensor.report.interval":t,"ber.report.interval":t},!1).subscribe(function(n){})},n.prototype.setFee=function(n,l){var t=0;n&&(t=1),this.terminalService.postCommand(l,"flowfee_switch",{status:t},!1).subscribe(function(n){})},n.prototype.rateWarn=function(n){this.outError[n.id]=1,this.outError.reasons=n.reasons},n.prototype.clearCurrent=function(){this.current=null},n.prototype.ngOnChanges=function(n){n.terminals&&(0===this.terminals.length?this.noResult=!0:(this.noResult=!1,this.loading=!1,this.clearCurrent()))},n.prototype.trackMonitor=function(n,l){return l.id?l.id:null},n.prototype.setCameraAutoUpload=function(n,l){var t=l.cameraConfig,e={exposure:t.exposure||Math.round(o.a.exposure/2),whitebalance:t.whitebalance||o.a.whitebalance,size:t.size||o.a.size,interval:t.intetval||o.a.interval,auto_upload:n?1:0,quality:o.a.quality};this.commandService.postCommand(l,"Camera_Shot_Setting",e).subscribe()},n.prototype.cameraMore=function(n){this.dialog.open(i.a,{width:"100%",height:"100%",closeOnNavigation:!0,panelClass:"my-full-screen-dialog2",disableClose:!0,data:{terminal:n}})},n.prototype.displayAnalyse=function(n){this.dialog.open(u.a,{closeOnNavigation:!0,width:"450px",height:"200px",position:{top:"200px"},data:{reasons:n}})},n}()}}]);