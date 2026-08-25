//: version "2.1"
//: property encoding = "utf-8"
//: property locale = "en"
//: property prefix = "_GG"
//: property timingViolationMode = 2
//: property initTime = "0 ns"

`timescale 1ns/1ns

//: /netlistBegin main
module main;    //: root_module
reg w0;    //: /sn:0 {0}(349,241)(359,241){1}
//: {2}(363,241)(372,241)(372,257)(385,257){3}
//: {4}(361,243)(361,284)(390,284){5}
reg w1;    //: /sn:0 {0}(385,262)(376,262)(376,295){1}
//: {2}(378,297)(407,297)(407,289)(436,289){3}
//: {4}(374,297)(349,297){5}
wire w6;    //: /sn:0 {0}(479,271)(479,287)(457,287){1}
wire w7;    //: /sn:0 {0}(449,260)(471,260){1}
wire w4;    //: /sn:0 {0}(433,260)(406,260){1}
wire w3;    //: /sn:0 {0}(436,284)(406,284){1}
wire w2;    //: /sn:0 {0}(471,245)(471,261){1}
//: enddecls

  //: LED g8 (w6) @(479,264) /sn:0 /w:[ 0 ] /type:0
  //: joint g4 (w0) @(361, 241) /w:[ 2 -1 1 4 ]
  _GGNBUF #(2) g3 (.I(w0), .Z(w3));   //: @(396,284) /sn:0 /w:[ 5 1 ]
  _GGNOR2 #(4) g2 (.I0(w0), .I1(w1), .Z(w4));   //: @(396,260) /sn:0 /w:[ 3 0 1 ]
  //: SWITCH g1 (w1) @(332,297) /sn:0 /w:[ 5 ] /st:0 /dn:1
  //: joint g6 (w1) @(376, 297) /w:[ 2 1 4 -1 ]
  _GGNBUF #(2) g9 (.I(w4), .Z(w7));   //: @(439,260) /sn:0 /w:[ 0 0 ]
  //: LED g7 (w2) @(471,238) /sn:0 /w:[ 0 ] /type:0
  _GGAND2 #(6) g5 (.I0(w3), .I1(w1), .Z(w6));   //: @(447,287) /sn:0 /w:[ 0 3 1 ]
  //: SWITCH g0 (w0) @(332,241) /sn:0 /w:[ 0 ] /st:1 /dn:1

endmodule
//: /netlistEnd

