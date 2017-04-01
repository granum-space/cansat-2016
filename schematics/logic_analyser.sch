<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-lstb">
<description>&lt;b&gt;Pin Headers&lt;/b&gt;&lt;p&gt;
Naming:&lt;p&gt;
MA = male&lt;p&gt;
# contacts - # rows&lt;p&gt;
W = angled&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="MA05-2">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.715" y1="2.54" x2="-4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="4.445" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="2.54" x2="5.715" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-5.715" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="4.445" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="3" x="-2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="5" x="0" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="7" x="2.54" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="9" x="5.08" y="-1.27" drill="1.016" shape="octagon"/>
<pad name="2" x="-5.08" y="1.27" drill="1.016" shape="octagon"/>
<pad name="4" x="-2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="6" x="0" y="1.27" drill="1.016" shape="octagon"/>
<pad name="8" x="2.54" y="1.27" drill="1.016" shape="octagon"/>
<pad name="10" x="5.08" y="1.27" drill="1.016" shape="octagon"/>
<text x="-5.588" y="-4.191" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.35" y="2.921" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="-4.191" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.572" y="2.921" size="1.27" layer="21" ratio="10">10</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="-1.524" x2="-4.826" y2="-1.016" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="4.826" y1="-1.524" x2="5.334" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<rectangle x1="-5.334" y1="1.016" x2="-4.826" y2="1.524" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="4.826" y1="1.016" x2="5.334" y2="1.524" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MA05-2">
<wire x1="3.81" y1="-7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.27" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-1.27" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="-3.81" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-1.27" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-1.27" y2="2.54" width="0.6096" layer="94"/>
<text x="-3.81" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="-7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="6" x="-7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="-7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="10" x="-7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA05-2" prefix="SV" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="MA05-2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MA05-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="solpad">
<description>&lt;b&gt;Solder Pads/Test Points&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="LSP10">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt;
drill 1.0 mm</description>
<wire x1="-1.27" y1="0.254" x2="-1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.27" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.254" x2="1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.254" x2="-1.143" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.254" x2="0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="-0.635" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.254" x2="1.143" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-0.635" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-0.254" x2="0.635" y2="-0.254" width="0.1524" layer="51"/>
<pad name="MP" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.27" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="0.254" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="LSP">
<wire x1="-1.016" y1="2.032" x2="1.016" y2="0" width="0.254" layer="94"/>
<wire x1="-1.016" y1="0" x2="1.016" y2="2.032" width="0.254" layer="94"/>
<circle x="0" y="1.016" radius="1.016" width="0.4064" layer="94"/>
<text x="-1.27" y="2.921" size="1.778" layer="95">&gt;NAME</text>
<pin name="MP" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LSP10" prefix="LSP">
<description>&lt;b&gt;SOLDER PAD&lt;/b&gt;&lt;p&gt; drill 1.0 mm, distributor Buerklin, 12H555</description>
<gates>
<gate name="1" symbol="LSP" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LSP10">
<connects>
<connect gate="1" pin="MP" pad="MP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="SV1" library="con-lstb" deviceset="MA05-2" device=""/>
<part name="SV2" library="con-lstb" deviceset="MA05-2" device=""/>
<part name="SDA" library="solpad" deviceset="LSP10" device=""/>
<part name="SCL" library="solpad" deviceset="LSP10" device=""/>
<part name="RX_GPS" library="solpad" deviceset="LSP10" device=""/>
<part name="TX_GPS" library="solpad" deviceset="LSP10" device=""/>
<part name="TX_COMMAND" library="solpad" deviceset="LSP10" device=""/>
<part name="RX_COMMAND" library="solpad" deviceset="LSP10" device=""/>
<part name="TX_RADIO" library="solpad" deviceset="LSP10" device=""/>
<part name="RX_RADIO" library="solpad" deviceset="LSP10" device=""/>
<part name="CLK0" library="solpad" deviceset="LSP10" device=""/>
<part name="CLK1" library="solpad" deviceset="LSP10" device=""/>
<part name="MOSI_STM" library="solpad" deviceset="LSP10" device=""/>
<part name="MISO_STM" library="solpad" deviceset="LSP10" device=""/>
<part name="SCK_STM" library="solpad" deviceset="LSP10" device=""/>
<part name="MOSI" library="solpad" deviceset="LSP10" device=""/>
<part name="MISO" library="solpad" deviceset="LSP10" device=""/>
<part name="SCK" library="solpad" deviceset="LSP10" device=""/>
<part name="N$1" library="solpad" deviceset="LSP10" device=""/>
<part name="N$2" library="solpad" deviceset="LSP10" device=""/>
<part name="GND1" library="solpad" deviceset="LSP10" device=""/>
<part name="GND0" library="solpad" deviceset="LSP10" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SV1" gate="G$1" x="144.78" y="15.24"/>
<instance part="SV2" gate="G$1" x="88.9" y="15.24"/>
<instance part="SDA" gate="1" x="132.08" y="20.32" rot="R90"/>
<instance part="SCL" gate="1" x="129.54" y="17.78" rot="R90"/>
<instance part="RX_GPS" gate="1" x="127" y="15.24" rot="R90"/>
<instance part="TX_GPS" gate="1" x="124.46" y="12.7" rot="R90"/>
<instance part="TX_COMMAND" gate="1" x="157.48" y="12.7" rot="R270"/>
<instance part="RX_COMMAND" gate="1" x="160.02" y="15.24" rot="R270"/>
<instance part="TX_RADIO" gate="1" x="162.56" y="17.78" rot="R270"/>
<instance part="RX_RADIO" gate="1" x="165.1" y="20.32" rot="R270"/>
<instance part="CLK0" gate="1" x="134.62" y="5.08" rot="R180"/>
<instance part="CLK1" gate="1" x="78.74" y="5.08" rot="R180"/>
<instance part="MOSI_STM" gate="1" x="76.2" y="20.32" rot="R90"/>
<instance part="MISO_STM" gate="1" x="73.66" y="17.78" rot="R90"/>
<instance part="SCK_STM" gate="1" x="71.12" y="15.24" rot="R90"/>
<instance part="MOSI" gate="1" x="109.22" y="20.32" rot="R270"/>
<instance part="MISO" gate="1" x="106.68" y="17.78" rot="R270"/>
<instance part="SCK" gate="1" x="104.14" y="15.24" rot="R270"/>
<instance part="N$1" gate="1" x="68.58" y="12.7" rot="R90"/>
<instance part="N$2" gate="1" x="101.6" y="12.7" rot="R270"/>
<instance part="GND1" gate="1" x="99.06" y="5.08" rot="R180"/>
<instance part="GND0" gate="1" x="154.94" y="5.08" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="SCK0" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="2"/>
<wire x1="137.16" y1="10.16" x2="134.62" y2="10.16" width="0.1524" layer="91"/>
<pinref part="CLK0" gate="1" pin="MP"/>
<wire x1="134.62" y1="10.16" x2="134.62" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCK1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="2"/>
<wire x1="81.28" y1="10.16" x2="78.74" y2="10.16" width="0.1524" layer="91"/>
<wire x1="78.74" y1="10.16" x2="78.74" y2="7.62" width="0.1524" layer="91"/>
<pinref part="CLK1" gate="1" pin="MP"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="8"/>
<wire x1="137.16" y1="17.78" x2="132.08" y2="17.78" width="0.1524" layer="91"/>
<pinref part="SCL" gate="1" pin="MP"/>
</segment>
</net>
<net name="RX_GPS" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="6"/>
<pinref part="RX_GPS" gate="1" pin="MP"/>
<wire x1="137.16" y1="15.24" x2="129.54" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_GPS" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="4"/>
<pinref part="TX_GPS" gate="1" pin="MP"/>
<wire x1="137.16" y1="12.7" x2="127" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX_RADIO" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="9"/>
<pinref part="RX_RADIO" gate="1" pin="MP"/>
<wire x1="152.4" y1="20.32" x2="162.56" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_RADIO" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="7"/>
<pinref part="TX_RADIO" gate="1" pin="MP"/>
<wire x1="152.4" y1="17.78" x2="160.02" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RX_COMMAND" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="5"/>
<pinref part="RX_COMMAND" gate="1" pin="MP"/>
<wire x1="152.4" y1="15.24" x2="157.48" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TX_COMMAND" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="3"/>
<wire x1="152.4" y1="12.7" x2="154.94" y2="12.7" width="0.1524" layer="91"/>
<pinref part="TX_COMMAND" gate="1" pin="MP"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="10"/>
<pinref part="SDA" gate="1" pin="MP"/>
<wire x1="137.16" y1="20.32" x2="134.62" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND0" class="0">
<segment>
<pinref part="SV1" gate="G$1" pin="1"/>
<wire x1="152.4" y1="10.16" x2="154.94" y2="10.16" width="0.1524" layer="91"/>
<wire x1="154.94" y1="10.16" x2="154.94" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND0" gate="1" pin="MP"/>
</segment>
</net>
<net name="MISO_STM" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="8"/>
<pinref part="MISO_STM" gate="1" pin="MP"/>
<wire x1="76.2" y1="17.78" x2="81.28" y2="17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCK_STM" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="6"/>
<pinref part="SCK_STM" gate="1" pin="MP"/>
<wire x1="73.66" y1="15.24" x2="81.28" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="5"/>
<wire x1="96.52" y1="15.24" x2="101.6" y2="15.24" width="0.1524" layer="91"/>
<pinref part="SCK" gate="1" pin="MP"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="9"/>
<wire x1="96.52" y1="20.32" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<pinref part="MOSI" gate="1" pin="MP"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="7"/>
<wire x1="96.52" y1="17.78" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="MISO" gate="1" pin="MP"/>
</segment>
</net>
<net name="MOSI_STM" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="10"/>
<wire x1="81.28" y1="20.32" x2="78.74" y2="20.32" width="0.1524" layer="91"/>
<pinref part="MOSI_STM" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="4"/>
<wire x1="81.28" y1="12.7" x2="71.12" y2="12.7" width="0.1524" layer="91"/>
<pinref part="N$1" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="3"/>
<wire x1="96.52" y1="12.7" x2="99.06" y2="12.7" width="0.1524" layer="91"/>
<pinref part="N$2" gate="1" pin="MP"/>
</segment>
</net>
<net name="GND1" class="0">
<segment>
<pinref part="SV2" gate="G$1" pin="1"/>
<wire x1="96.52" y1="10.16" x2="99.06" y2="10.16" width="0.1524" layer="91"/>
<wire x1="99.06" y1="10.16" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="MP"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
