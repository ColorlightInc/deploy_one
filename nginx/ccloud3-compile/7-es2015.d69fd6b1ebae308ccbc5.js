(window.webpackJsonp=window.webpackJsonp||[]).push([[7],{"9yu8":function(n,t,e){"use strict";e.d(t,"a",function(){return a}),e("v3Ti"),e("JDDX"),e("RKaY"),e("SFmP");var l=e("eIep"),i=(e("A2rR"),e("VWX5"),e("ciq7"),e("eWXF"));class a{constructor(n,t,e,l,i,a,o){this.terminalGetter=n,this.flowService=t,this.terminalService=e,this.clickEvent=l,this.fb=i,this.groupService=a,this.dialog=o,this.currentTerminal=null,this.template="fee",this.name="terminals",this.terminals=[],this.pageSize=parseInt(localStorage.getItem("FEE_PAGE_SIZE"),10)||12,this.options={length:12,pageSize:this.pageSize,pageSizeOptions:[12,24,60,100],pageIndex:0},this.isLoading=!0,this.isMobile=!1,this.report_placeholder="Change report time",this.Subscriptions=[],this.report_placeholder="set report time",this.sidebarOptions=i.group({bottom:0,fixed:!0,top:40,height:100})}ngOnInit(){/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)&&(this.isMobile=!0),this.Subscriptions.push(this.terminalGetter.searchEvent.pipe(Object(l.a)(n=>(this.terminalGetter.onSearch("begin"),this.terminalGetter.getTerminals({search:n})))).subscribe(n=>{this.generateListT(n),this.terminalGetter.onSearch({data:this.terminals,total:this.options.length})})),this.Subscriptions.push(this.groupService.selectTaxonomyEvent.pipe(Object(l.a)(n=>{if(n)return this.isLoading=!0,this.groupId=n.id,this.terminalGetter.getTerminalsWithGroup(n.id,{page:1,per_page:this.pageSize});{this.groupId=null;const n={per_page:this.pageSize,page:1};return this.options.pageIndex=1,this.getTerminals(n)}})).subscribe(n=>{this.generateListT(n),this.isLoading=!1}))}onPageChange(n){const t={page:n.pageIndex+1,per_page:n.pageSize};n.pageSize!==this.pageSize&&(this.pageSize=n.pageSize,localStorage.setItem("FEE_PAGE_SIZE",n.pageSize+"")),this.Subscriptions.push(this.groupId?this.terminalGetter.getTerminalsWithGroup(this.groupId,t).subscribe(n=>{this.generateListT(n)}):this.terminalGetter.getTerminals(t).subscribe(n=>{this.generateListT(n)}))}onChoose(n){this.updateStatus(n),this.isMobile&&this.dialog.open(i.a,{width:"100%",height:"100%",closeOnNavigation:!0,panelClass:"my-full-screen-dialog",hasBackdrop:!1,data:{currentTerminal:n,isMobile:!0}})}updateStatus(n){this.currentTerminal=n,this.selectTid=n.id}getTerminals(n){return this.terminalGetter.getTerminals(n)}generateListT(n){const t=this.terminalGetter.generateListT(n);this.terminals=t.data,this.options.length=t.total,this.currentTerminal=null}ngOnDestroy(){for(const n of this.Subscriptions)n.unsubscribe()}}},Ki7c:function(n,t,e){"use strict";var l=e("8Y7J"),i=e("MBfO"),a=e("8P0U"),o=e("omvX"),r=e("99iz"),s=e("qsd3"),c=e("iBKy"),u=e("v3Ti"),d=e("JDDX"),h=e("8GgV"),p=e("s6ns"),g=e("+EyX"),m=e("KKQO"),b=e("mssL"),f=e("RKaY"),O=e("Cl/c"),M=e("A2rR"),w=e("TSSN"),T=e("+A7u"),P=e("SVse"),v=e("b1+6"),C=e("OIZN"),x=e("9yu8"),S=e("SFmP"),y=e("s7LF");e.d(t,"a",function(){return A});var _=l.Nb({encapsulation:0,styles:[[".fee-container[_ngcontent-%COMP%]{position:absolute;top:0;bottom:0;left:0;right:0;overflow:hidden}.fee-container[_ngcontent-%COMP%]   .expand-container[_ngcontent-%COMP%]{height:100%}.fee-container[_ngcontent-%COMP%]   .taxonomy-progress[_ngcontent-%COMP%]{position:absolute;top:0;width:100%;height:20px}.fee-container[_ngcontent-%COMP%]   .as-split[_ngcontent-%COMP%]{height:100%;overflow:hidden}.fee-container[_ngcontent-%COMP%]   .as-split-area[_ngcontent-%COMP%]{height:100%;overflow:auto}.fee-container[_ngcontent-%COMP%]   .as-split[_ngcontent-%COMP%]   .echart-area[_ngcontent-%COMP%]{padding:20px}"]],data:{}});function D(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,1,"mat-progress-bar",[["aria-valuemax","100"],["aria-valuemin","0"],["class","mat-progress-bar"],["mode","indeterminate"],["role","progressbar"]],[[1,"aria-valuenow",0],[1,"mode",0],[2,"_mat-animation-noopable",null]],null,null,i.b,i.a)),l.Ob(1,4374528,null,0,a.b,[l.n,l.E,[2,o.a],[2,a.a]],{mode:[0,"mode"]},null)],function(n,t){n(t,1,0,"indeterminate")},function(n,t){n(t,0,0,"indeterminate"===l.cc(t,1).mode||"query"===l.cc(t,1).mode?null:l.cc(t,1).value,l.cc(t,1).mode,l.cc(t,1)._isNoopAnimation)})}function I(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,3,"as-split-area",[["class","as-split-area echart-area"],["size","60"]],null,null,null,null,null)),l.Ob(1,212992,null,0,r.b,[l.E,l.n,l.L,r.c],{size:[0,"size"],minSize:[1,"minSize"]},null),(n()(),l.Pb(2,0,null,null,1,"app-playtime-chart-controller",[],null,null,null,s.c,s.b)),l.Ob(3,638976,null,0,c.a,[u.a,d.a,h.wd,p.e],{currentTerminal:[0,"currentTerminal"]},null)],function(n,t){var e=t.component;n(t,1,0,"60",40),n(t,3,0,e.currentTerminal)},null)}function F(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,8,null,null,null,null,null,null,null)),(n()(),l.Pb(1,0,null,null,7,"as-split",[["class","as-split"]],null,null,null,g.b,g.a)),l.Ob(2,4374528,null,0,r.c,[l.E,l.n,l.i,l.L],{gutterSize:[0,"gutterSize"]},null),(n()(),l.Pb(3,0,null,0,3,"as-split-area",[["class","as-split-area"],["size","40"]],null,null,null,null,null)),l.Ob(4,212992,null,0,r.b,[l.E,l.n,l.L,r.c],{size:[0,"size"],minSize:[1,"minSize"]},null),(n()(),l.Pb(5,0,null,null,1,"app-choose-terminal",[],null,[[null,"chooseTerminal"]],function(n,t,e){var l=!0;return"chooseTerminal"===t&&(l=!1!==n.component.onChoose(e)&&l),l},m.b,m.a)),l.Ob(6,573440,null,0,b.a,[f.a,O.a,M.a,w.k,T.a,p.e],{terminals:[0,"terminals"],template:[1,"template"]},{chooseTerminal:"chooseTerminal"}),(n()(),l.zb(16777216,null,0,1,null,I)),l.Ob(8,16384,null,0,P.p,[l.W,l.T],{ngIf:[0,"ngIf"]},null)],function(n,t){var e=t.component;n(t,2,0,4),n(t,4,0,"40",30),n(t,6,0,e.terminals,e.template),n(t,8,0,e.currentTerminal)},null)}function z(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,2,"div",[["class","as-split-area"]],null,null,null,null,null)),(n()(),l.Pb(1,0,null,null,1,"app-choose-terminal",[],null,[[null,"chooseTerminal"]],function(n,t,e){var l=!0;return"chooseTerminal"===t&&(l=!1!==n.component.onChoose(e)&&l),l},m.b,m.a)),l.Ob(2,573440,null,0,b.a,[f.a,O.a,M.a,w.k,T.a,p.e],{terminals:[0,"terminals"],isMobile:[1,"isMobile"],template:[2,"template"]},{chooseTerminal:"chooseTerminal"})],function(n,t){var e=t.component;n(t,2,0,e.terminals,e.isMobile,e.template)},null)}function E(n){return l.rc(0,[l.lc(671088640,1,{dt:0}),l.lc(671088640,2,{dtInput:0}),(n()(),l.Pb(2,0,null,null,14,"div",[["class","fee-container"]],null,null,null,null,null)),(n()(),l.Pb(3,0,null,null,13,"div",[["class","expand-container"]],null,null,null,null,null)),(n()(),l.Pb(4,0,null,null,2,"div",[["class","taxonomy-progress"]],null,null,null,null,null)),(n()(),l.zb(16777216,null,null,1,null,D)),l.Ob(6,16384,null,0,P.p,[l.W,l.T],{ngIf:[0,"ngIf"]},null),(n()(),l.Pb(7,0,null,null,5,"div",[["class","search-header"]],null,null,null,null,null)),(n()(),l.Pb(8,0,null,null,4,"mat-paginator",[["class","mat-paginator"],["showFirstLastButtons",""]],null,[[null,"page"]],function(n,t,e){var l=!0;return"page"===t&&(l=!1!==n.component.onPageChange(e)&&l),l},v.b,v.a)),l.kc(512,null,P.F,P.G,[l.n,l.w,l.L]),l.Ob(10,278528,null,0,P.s,[P.F],{ngStyle:[0,"ngStyle"]},null),l.ic(11,{"margin-top":0}),l.Ob(12,245760,null,0,C.b,[C.c,l.i],{pageIndex:[0,"pageIndex"],length:[1,"length"],pageSize:[2,"pageSize"],pageSizeOptions:[3,"pageSizeOptions"],showFirstLastButtons:[4,"showFirstLastButtons"]},{page:"page"}),(n()(),l.zb(16777216,null,null,1,null,F)),l.Ob(14,16384,null,0,P.p,[l.W,l.T],{ngIf:[0,"ngIf"]},null),(n()(),l.zb(16777216,null,null,1,null,z)),l.Ob(16,16384,null,0,P.p,[l.W,l.T],{ngIf:[0,"ngIf"]},null)],function(n,t){var e=t.component;n(t,6,0,e.isLoading);var l=n(t,11,0,e.isMobile?"30px":0);n(t,10,0,l),n(t,12,0,e.options.pageIndex,e.options.length,e.options.pageSize,e.options.pageSizeOptions,""),n(t,14,0,!e.isMobile),n(t,16,0,e.isMobile)},null)}function k(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,1,"app-main-fee",[],null,null,null,E,_)),l.Ob(1,245760,null,0,x.a,[u.a,d.a,f.a,S.a,y.f,M.a,p.e],null,null)],function(n,t){n(t,1,0)},null)}var A=l.Gb("app-main-fee",x.a,k,{currentTerminal:"currentTerminal"},{},[])},ZlZo:function(n,t,e){"use strict";var l=e("8Y7J"),i=e("qsd3"),a=e("iBKy"),o=e("v3Ti"),r=e("JDDX"),s=e("8GgV"),c=e("s6ns"),u=e("eWXF");e.d(t,"a",function(){return g});var d=l.Nb({encapsulation:0,styles:[[".content-report[_ngcontent-%COMP%]{display:flex;flex-direction:column}.content-report[_ngcontent-%COMP%]   .features[_ngcontent-%COMP%]{width:100%;display:flex;flex-direction:row;justify-content:flex-start;align-items:center}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%], .content-report[_ngcontent-%COMP%]   .flowfee-chart[_ngcontent-%COMP%]{margin-top:20px}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%]   label[_ngcontent-%COMP%]{position:relative}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%]   .dt-range[_ngcontent-%COMP%]{width:320px;border:none;border-bottom:1px solid #000;outline:0}.content-report[_ngcontent-%COMP%]   .download-btn[_ngcontent-%COMP%]{left:20px}.btn-close-toolbar[_ngcontent-%COMP%]{display:flex;flex-direction:row;justify-content:flex-end;align-content:center}"]],data:{}});function h(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,1,"app-playtime-chart-controller",[],null,null,null,i.c,i.b)),l.Ob(1,638976,null,0,a.a,[o.a,r.a,s.wd,c.e],{currentTerminal:[0,"currentTerminal"],isMobile:[1,"isMobile"]},null)],function(n,t){var e=t.component;n(t,1,0,e.currentTerminal,e.isMobile)},null)}function p(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,1,"app-mobile-fee-controller",[],null,null,null,h,d)),l.Ob(1,114688,null,0,u.a,[c.a],null,null)],function(n,t){n(t,1,0)},null)}var g=l.Gb("app-mobile-fee-controller",u.a,p,{},{},[])},eWXF:function(n,t,e){"use strict";e.d(t,"a",function(){return l});class l{constructor(n){this.isMobile=n.isMobile,this.currentTerminal=n.currentTerminal}ngOnInit(){}}},iBKy:function(n,t,e){"use strict";e.d(t,"a",function(){return o}),e("v3Ti"),e("JDDX");var l=e("HDdC");const i="MONITOR.FEE.IMPRESSIONS",a="MONITOR.FEE.TOTAL";class o{constructor(n,t,e,l){this.terminalGetter=n,this.flowService=t,this.translation=e,this.dialog=l,this.currentTerminal=null,this.selectedDate={},this.builderJson={charts:{}},this.hour12Timer=!1,this.startAt=new Date,this.chartName=null,this.total=null,this.isMobile=!1}downloadExcel(n){this.flowService.downloadStream(this.selectTid,this.selectedDate,n).subscribe(n=>{const t=n.body.data.match(/statistic(\w+-*)+.xlsx/);this.flowService.downloadFile(t[0])})}onDatechange(n){let t=n.value[0],e=n.value[1],[l,i]=[null,null];var a;function o(n){return n.getFullYear()+"-"+(n.getMonth()+1)+"-"+n.getDate()+" "+n.getHours()+":"+n.getMinutes()+":"+n.getSeconds()}t?e?(l=o(t),i=o(e)):(l=o(t),i=function(n){const t=new Date;t.setFullYear(n.getFullYear()),t.setMonth(n.getMonth()+1),t.setDate(0);const e=t.getDate();return n.getDate()>=e?n.getFullYear()+"-"+(n.getMonth()+2)+"-1 00:00:00":n.getFullYear()+"-"+(n.getMonth()+1)+"-"+(n.getDate()+1)+" 00:00:00"}(t),this.selectedMoments=[new Date(l),new Date(i)]):e?(t=new Date(e),i=o(e),l=(a=t).getFullYear()+"-"+(a.getMonth()+1)+"-"+a.getDate()+" 00:00:00"):(e=t=new Date,l=t.getFullYear()+"-"+(t.getMonth()+1)+"-"+t.getDate()+" 00:00:01",i=e.getFullYear()+"-"+(e.getMonth()+1)+"-"+e.getDate()+" 23:59:59"),this.selectedDate.after=l,this.selectedDate.before=i,this.drawMonitor(this.selectTid)}ngOnInit(){this.flowMax=0,this.initChartOptions().subscribe(),this.initDate(),this.currentTerminal&&this.updateStatus(this.currentTerminal)}initChartOptions(){return new l.a(n=>{this.initTranslation().subscribe(()=>{},()=>{},()=>{this.chartOption={backgroundColor:{type:"linear",x:0,y:0,x2:0,y2:1,colorStops:[{offset:0,color:"#FFFFFF"},{offset:1,color:"#FFFFFF"}],globalCoord:!1},tooltip:{},title:[{text:this.chartName||"Impressions",left:"38%",top:80}],grid:[{top:150,width:"80%",left:50,containLabel:!1}],xAxis:[{type:"value",max:this.flowMax,splitLine:{show:!1}}],yAxis:[{type:"category",data:Object.keys(this.builderJson.charts),axisLabel:{interval:0,rotate:0,formatter:function(n){return n.substr(0,5)},fontSize:10},splitLine:{show:!1}}],series:[{type:"bar",stack:"chart",z:3,label:{normal:{position:"right",show:!0}},itemStyle:{normal:{color:"#37A2DA"}},data:Object.keys(this.builderJson.charts).map(n=>this.builderJson.charts[n])}]},n.next()})})}initTranslation(){return new l.a(n=>{this.chartName&&this.total?(n.next(),n.complete()):this.translation.get([i,a]).subscribe(t=>{t[i]&&t[a]&&(this.chartName=t[i],this.total=t[a],n.next(),n.complete())},()=>n.error())})}ngOnChanges(n){n&&n.currentTerminal&&this.updateStatus(this.currentTerminal)}onChartInit(n){this.echartsIntance=n,"number"==typeof this.selectTid&&this.drawMonitor(this.selectTid)}updateStatus(n){this.currentTerminal=n,this.selectTid=n.id,"number"==typeof this.selectTid&&this.drawMonitor(this.selectTid)}drawMonitor(n){n&&this.initChartOptions().subscribe(()=>{this.echartsIntance&&(this.echartsIntance.showLoading("default",{text:"loading",maskColor:"#fafafa",zlevel:0}),this.flowService.getFlow(n,this.selectedDate).subscribe(n=>{let t=0;const e=n.body.data,l=this.chartOption;if(this.flows={},this.flowMax=0,e&&e instanceof Array){for(const n of e)this.flows[n.resOriginName]?this.flows[n.resOriginName]+=n.times:this.flows[n.resOriginName]=n.times,t+=n.times,this.flows[n.resOriginName]>this.flowMax&&(this.flowMax=this.flows[n.resOriginName]);this.builderJson.charts=this.flows,this.echartsIntance&&(l.title[0].subtext=this.total?this.total+" "+t:"Total "+t,l.xAxis[0].max=this.flowMax,l.yAxis[0].data=Object.keys(this.builderJson.charts),l.series[0].data=Object.keys(this.builderJson.charts).map(n=>this.builderJson.charts[n]),this.echartsIntance.setOption(l))}else l.xAxis[0].max=0,l.yAxis[0].data={},l.series[0].data={},this.echartsIntance.setOption(l);this.echartsIntance.hideLoading()}))})}initDate(){const n=new Date,t=n.getFullYear(),e=n.getMonth(),l=n.getDate(),i=6e4*(new Date).getTimezoneOffset(),a=new Date(n.valueOf()-i).toISOString().slice(0,-1),o=a.substr(0,a.indexOf("T"));this.selectedMoments=[new Date(t,e,l,0,0,0),new Date(t,e,l+1,0,0,0)],this.selectedDate.after=o+" 00:00:00",this.selectedDate.before=o+" 23:59:59",this.minAfterDate=new Date(t,e-1,l),this.maxAfterDate=n,this.minBeforeDate=new Date(t,e-1,l),this.maxBeforeDate=n}close(){this.dialog.closeAll()}}},oTKa:function(n,t,e){"use strict";e.d(t,"a",function(){return l}),e("9yu8");class l{}},qsd3:function(n,t,e){"use strict";var l=e("8Y7J"),i=e("bujt"),a=e("Fwaw"),o=e("5GAg"),r=e("omvX"),s=e("Mr+X"),c=e("Gi4r"),u=e("SVse"),d=e("TSSN"),h=e("HsOI"),p=e("ZwOa"),g=e("s7LF"),m=e("ciq7"),b=e("bMPK"),f=e("EFU/"),O=e("/HVE"),M=e("Xd0L"),w=e("oapL"),T=e("UUjr"),P=e("UtLt"),v=e("4D9t"),C=e("QQfA"),x=e("Tq4R"),S=e("Q1xG"),y=e("iBKy"),_=e("v3Ti"),D=e("JDDX"),I=e("8GgV"),F=e("s6ns");e.d(t,"b",function(){return z}),e.d(t,"c",function(){return k}),e.d(t,"a",function(){return L});var z=l.Nb({encapsulation:0,styles:[[".content-report[_ngcontent-%COMP%]{display:flex;flex-direction:column}.content-report[_ngcontent-%COMP%]   .features[_ngcontent-%COMP%]{width:100%;display:flex;flex-direction:row;justify-content:flex-start;align-items:center}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%], .content-report[_ngcontent-%COMP%]   .flowfee-chart[_ngcontent-%COMP%]{margin-top:20px}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%]   label[_ngcontent-%COMP%]{position:relative}.content-report[_ngcontent-%COMP%]   .datetime-container[_ngcontent-%COMP%]   .dt-range[_ngcontent-%COMP%]{width:320px;border:none;border-bottom:1px solid #000;outline:0}.content-report[_ngcontent-%COMP%]   .download-btn[_ngcontent-%COMP%]{left:20px}.btn-close-toolbar[_ngcontent-%COMP%]{display:flex;flex-direction:row;justify-content:flex-end;align-content:center}"]],data:{}});function E(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,4,"button",[["mat-mini-fab",""]],[[1,"disabled",0],[2,"_mat-animation-noopable",null]],[[null,"click"]],function(n,t,e){var l=!0;return"click"===t&&(l=!1!==n.component.close()&&l),l},i.d,i.b)),l.Ob(1,180224,null,0,a.b,[l.n,o.h,[2,r.a]],null,null),(n()(),l.Pb(2,0,null,0,2,"mat-icon",[["class","mat-icon notranslate"],["role","img"]],[[2,"mat-icon-inline",null],[2,"mat-icon-no-color",null]],null,null,s.b,s.a)),l.Ob(3,9158656,null,0,c.b,[l.n,c.d,[8,null],[2,c.a]],null,null),(n()(),l.oc(-1,0,["clear"]))],function(n,t){n(t,3,0)},function(n,t){n(t,0,0,l.cc(t,1).disabled||null,"NoopAnimations"===l.cc(t,1)._animationMode),n(t,2,0,l.cc(t,3).inline,"primary"!==l.cc(t,3).color&&"accent"!==l.cc(t,3).color&&"warn"!==l.cc(t,3).color)})}function k(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,32,"div",[["class","content-report"]],null,null,null,null,null)),(n()(),l.Pb(1,0,null,null,2,"div",[["class","btn-close-toolbar"]],null,null,null,null,null)),(n()(),l.zb(16777216,null,null,1,null,E)),l.Ob(3,16384,null,0,u.p,[l.W,l.T],{ngIf:[0,"ngIf"]},null),(n()(),l.Pb(4,0,null,null,8,"div",[["class","features"]],null,null,null,null,null)),(n()(),l.Pb(5,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),l.oc(6,null,["",": \xa0\xa0",""])),l.hc(131072,d.j,[d.k,l.i]),(n()(),l.Pb(8,0,null,null,4,"button",[["class","download-btn"],["mat-raised-button",""]],[[1,"disabled",0],[2,"_mat-animation-noopable",null]],[[null,"click"]],function(n,t,e){var l=!0;return"click"===t&&(l=!1!==n.component.downloadExcel("statistics")&&l),l},i.d,i.b)),l.Ob(9,180224,null,0,a.b,[l.n,o.h,[2,r.a]],{disabled:[0,"disabled"]},null),(n()(),l.Pb(10,0,null,0,2,"mat-icon",[["aria-label","download flowfee excel"],["class","mat-icon notranslate"],["role","img"]],[[2,"mat-icon-inline",null],[2,"mat-icon-no-color",null]],null,null,s.b,s.a)),l.Ob(11,9158656,null,0,c.b,[l.n,c.d,[8,null],[2,c.a]],null,null),(n()(),l.oc(-1,0,["get_app"])),(n()(),l.Pb(13,0,null,null,17,"div",[["class","datetime-container"]],null,null,null,null,null)),(n()(),l.Pb(14,0,null,null,2,"span",[],null,null,null,null,null)),(n()(),l.oc(15,null,["",": \xa0\xa0"])),l.hc(131072,d.j,[d.k,l.i]),(n()(),l.Pb(17,0,null,null,13,"label",[],null,null,null,null,null)),(n()(),l.Pb(18,0,null,null,10,"input",[["class","dt-range mat-input-element mat-form-field-autofill-control"],["matInput",""],["placeholder","Set date range"],["readonly","readonly"]],[[1,"aria-haspopup",0],[1,"aria-owns",0],[1,"min",0],[1,"max",0],[8,"disabled",0],[2,"ng-untouched",null],[2,"ng-touched",null],[2,"ng-pristine",null],[2,"ng-dirty",null],[2,"ng-valid",null],[2,"ng-invalid",null],[2,"ng-pending",null],[2,"mat-input-server",null],[1,"id",0],[1,"placeholder",0],[8,"disabled",0],[8,"required",0],[1,"readonly",0],[1,"aria-describedby",0],[1,"aria-invalid",0],[1,"aria-required",0],[2,"owl-dt-trigger-disabled",null]],[[null,"ngModelChange"],[null,"dateTimeChange"],[null,"input"],[null,"blur"],[null,"compositionstart"],[null,"compositionend"],[null,"keydown"],[null,"change"],[null,"focus"],[null,"click"]],function(n,t,e){var i=!0,a=n.component;return"input"===t&&(i=!1!==l.cc(n,20)._handleInput(e.target.value)&&i),"blur"===t&&(i=!1!==l.cc(n,20).onTouched()&&i),"compositionstart"===t&&(i=!1!==l.cc(n,20)._compositionStart()&&i),"compositionend"===t&&(i=!1!==l.cc(n,20)._compositionEnd(e.target.value)&&i),"keydown"===t&&(i=!1!==l.cc(n,21).handleKeydownOnHost(e)&&i),"blur"===t&&(i=!1!==l.cc(n,21).handleBlurOnHost(e)&&i),"input"===t&&(i=!1!==l.cc(n,21).handleInputOnHost(e)&&i),"change"===t&&(i=!1!==l.cc(n,21).handleChangeOnHost(e)&&i),"blur"===t&&(i=!1!==l.cc(n,27)._focusChanged(!1)&&i),"focus"===t&&(i=!1!==l.cc(n,27)._focusChanged(!0)&&i),"input"===t&&(i=!1!==l.cc(n,27)._onInput()&&i),"click"===t&&(i=!1!==l.cc(n,28).handleClickOnHost(e)&&i),"ngModelChange"===t&&(i=!1!==(a.selectedMoments=e)&&i),"dateTimeChange"===t&&(i=!1!==a.onDatechange(e)&&i),i},null,null)),l.kc(6144,null,h.d,null,[p.b]),l.Ob(20,16384,null,0,g.e,[l.L,l.n,[2,g.a]],null,null),l.Ob(21,1261568,null,0,m.a,[l.n,l.L,[2,b.a],[2,f.a]],{owlDateTime:[0,"owlDateTime"],min:[1,"min"],selectMode:[2,"selectMode"]},{dateTimeChange:"dateTimeChange"}),l.kc(1024,null,g.p,function(n){return[n]},[m.a]),l.kc(1024,null,g.q,function(n,t){return[n,t]},[g.e,m.a]),l.Ob(24,671744,null,0,g.v,[[8,null],[6,g.p],[8,null],[6,g.q]],{isDisabled:[0,"isDisabled"],model:[1,"model"]},{update:"ngModelChange"}),l.kc(2048,null,g.r,null,[g.v]),l.Ob(26,16384,null,0,g.s,[[4,g.r]],null,null),l.Ob(27,999424,null,0,p.b,[l.n,O.a,[6,g.r],[2,g.u],[2,g.k],M.d,[8,null],w.a,l.E],{disabled:[0,"disabled"],placeholder:[1,"placeholder"],readonly:[2,"readonly"]},null),l.Ob(28,1785856,null,0,T.a,[l.i],{dtPicker:[0,"dtPicker"],disabled:[1,"disabled"]},null),(n()(),l.Pb(29,16777216,null,null,1,"owl-date-time",[],null,null,null,P.b,P.a)),l.Ob(30,245760,[["dt",4]],0,v.c,[C.d,l.W,x.d,l.E,l.i,[2,b.a],v.a,[2,f.a],[2,u.d]],{hour12Timer:[0,"hour12Timer"],startAt:[1,"startAt"],disabled:[2,"disabled"]},null),(n()(),l.Pb(31,0,null,null,1,"div",[["class","flowfee-chart"],["echarts",""],["theme","macarons"]],null,[[null,"chartInit"]],function(n,t,e){var l=!0;return"chartInit"===t&&(l=!1!==n.component.onChartInit(e)&&l),l},null,null)),l.Ob(32,5193728,null,0,S.b,[l.n,l.E],{options:[0,"options"],theme:[1,"theme"]},{chartInit:"chartInit"})],function(n,t){var e=t.component;n(t,3,0,e.isMobile),n(t,9,0,!e.selectTid),n(t,11,0),n(t,21,0,l.cc(t,30),e.minBeforeDate,"range"),n(t,24,0,!e.selectTid,e.selectedMoments),n(t,27,0,!e.selectTid,"Set date range","readonly"),n(t,28,0,l.cc(t,30),!e.selectTid),n(t,30,0,e.hour12Timer,e.startAt,!e.selectTid),n(t,32,0,e.chartOption,"macarons")},function(n,t){var e=t.component;n(t,6,0,l.qc(t,6,0,l.cc(t,7).transform("MONITOR.FEE.NAME")),null==e.currentTerminal?null:e.currentTerminal.title),n(t,8,0,l.cc(t,9).disabled||null,"NoopAnimations"===l.cc(t,9)._animationMode),n(t,10,0,l.cc(t,11).inline,"primary"!==l.cc(t,11).color&&"accent"!==l.cc(t,11).color&&"warn"!==l.cc(t,11).color),n(t,15,0,l.qc(t,15,0,l.cc(t,16).transform("MONITOR.FEE.RANGE"))),n(t,18,1,[l.cc(t,21).owlDateTimeInputAriaHaspopup,l.cc(t,21).owlDateTimeInputAriaOwns,l.cc(t,21).minIso8601,l.cc(t,21).maxIso8601,l.cc(t,21).owlDateTimeInputDisabled,l.cc(t,26).ngClassUntouched,l.cc(t,26).ngClassTouched,l.cc(t,26).ngClassPristine,l.cc(t,26).ngClassDirty,l.cc(t,26).ngClassValid,l.cc(t,26).ngClassInvalid,l.cc(t,26).ngClassPending,l.cc(t,27)._isServer,l.cc(t,27).id,l.cc(t,27).placeholder,l.cc(t,27).disabled,l.cc(t,27).required,l.cc(t,27).readonly&&!l.cc(t,27)._isNativeSelect||null,l.cc(t,27)._ariaDescribedby||null,l.cc(t,27).errorState,l.cc(t,27).required.toString(),l.cc(t,28).owlDTTriggerDisabledClass])})}function A(n){return l.rc(0,[(n()(),l.Pb(0,0,null,null,1,"app-playtime-chart-controller",[],null,null,null,k,z)),l.Ob(1,638976,null,0,y.a,[_.a,D.a,I.wd,F.e],null,null)],function(n,t){n(t,1,0)},null)}var L=l.Gb("app-playtime-chart-controller",y.a,A,{currentTerminal:"currentTerminal",isMobile:"isMobile"},{},[])},svQU:function(n,t,e){"use strict";e.d(t,"a",function(){return l});class l{}}}]);