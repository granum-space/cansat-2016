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
<layer number="21" name="tPlace" color="15" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="FN-6">
<circle x="-0.65" y="1.55" radius="0.1" width="0.3048" layer="21"/>
<circle x="-0.65" y="1.55" radius="0.2" width="0.3048" layer="21"/>
<wire x1="-1" y1="1" x2="-1" y2="-1" width="0.127" layer="51"/>
<wire x1="-1" y1="-1" x2="1" y2="-1" width="0.127" layer="51"/>
<wire x1="1" y1="-1" x2="1" y2="1" width="0.127" layer="51"/>
<wire x1="1" y1="1" x2="-1" y2="1" width="0.127" layer="51"/>
<wire x1="-1" y1="1" x2="1" y2="1" width="0.127" layer="21"/>
<wire x1="-1" y1="-1" x2="1" y2="-1" width="0.127" layer="21"/>
<smd name="1" x="-0.775" y="0.65" dx="1.05" dy="0.3" layer="1" rot="R180"/>
<smd name="2" x="-0.775" y="0" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="3" x="-0.775" y="-0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="4" x="0.775" y="-0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="5" x="0.775" y="0" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<smd name="6" x="0.775" y="0.65" dx="1.05" dy="0.3" layer="1" roundness="100"/>
<text x="0" y="1.25" size="0.4064" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.25" size="0.4064" layer="27" rot="R180" align="bottom-center">&gt;VALUE</text>
</package>
<package name="TMB-6">
<circle x="-1.9" y="2.3" radius="0.3" width="0.3048" layer="21"/>
<circle x="-1.9" y="2.3" radius="0.1" width="0.3048" layer="21"/>
<circle x="-1.9" y="2.3" radius="0.2" width="0.3048" layer="21"/>
<wire x1="-1.9" y1="1.3" x2="-1.9" y2="-1.3" width="0.127" layer="51"/>
<wire x1="-1.9" y1="-1.3" x2="1.9" y2="-1.3" width="0.127" layer="51"/>
<wire x1="1.9" y1="-1.3" x2="1.9" y2="1.3" width="0.127" layer="51"/>
<wire x1="1.9" y1="1.3" x2="-1.9" y2="1.3" width="0.127" layer="51"/>
<wire x1="-1.9" y1="1.5" x2="-1.9" y2="1.6" width="0.127" layer="21"/>
<wire x1="-1.9" y1="1.6" x2="1.9" y2="1.6" width="0.127" layer="21"/>
<wire x1="1.9" y1="1.6" x2="1.9" y2="1.5" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.5" x2="-1.9" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-1.9" y1="-1.6" x2="1.9" y2="-1.6" width="0.127" layer="21"/>
<wire x1="1.9" y1="-1.6" x2="1.9" y2="-1.5" width="0.127" layer="21"/>
<smd name="1" x="-1.8" y="0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="2" x="-1.8" y="0" dx="1.6" dy="0.7" layer="1"/>
<smd name="3" x="-1.8" y="-0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="4" x="1.8" y="-0.95" dx="1.6" dy="0.7" layer="1"/>
<smd name="5" x="1.8" y="0" dx="1.6" dy="0.7" layer="1"/>
<smd name="6" x="1.8" y="0.95" dx="1.6" dy="0.7" layer="1"/>
<text x="0" y="1.85" size="0.4064" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.95" size="0.4064" layer="27" rot="R180" align="bottom-center">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="TSL2561">
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<pin name="ADDR" x="15.24" y="0" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="15.24" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="INT" x="-15.24" y="-5.08" length="middle" direction="out"/>
<pin name="SCL" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="SDA" x="-15.24" y="2.54" length="middle"/>
<pin name="VDD" x="15.24" y="5.08" length="middle" direction="pwr" rot="R180"/>
<text x="-10.16" y="-10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="10.16" size="1.778" layer="95" rot="MR180">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="TSL2561" prefix="U">
<description>&lt;b&gt;TSL2561 illumination sensor&lt;/b&gt;&lt;p&gt;
Approximates Human Eye Response&lt;br&gt;
Precisely Measures Illuminance&lt;br&gt;
Programmable Interrupt Function with
User-Defined Upper and Lower Threshold&lt;br&gt;
400 KHz I2C interface&lt;br&gt;
Programmable Analog Gain and Integration
Time Supporting 1,000,000-to-1 Dynamic
Range&lt;br&gt;
Automatically Rejects 50/60-Hz Lighting
Ripple&lt;br&gt;
Low Active Power (0.75 mW Typical) with
Power Down Mode&lt;br&gt;
RoHS Compliant&lt;p&gt;

The TSL2561 is a light-to-digital converter that transform light intensity to a digital signal output via I2C interface. The device combines one broadband
photodiode (visible plus infrared) and one infrared-responding photodiode on a single CMOS integrated circuit
capable of providing a near-photopic response over an effective 20-bit dynamic range (16-bit resolution). Two
integrating ADCs convert the photodiode currents to a digital output that represents the irradiance measured
on each channel. This digital output can be input to a microprocessor where illuminance (ambient light level)
in lux is derived using an empirical formula to approximate the human eye response. The TSL2561 device supports a traditional level style interrupt that
remains asserted until the firmware clears it.</description>
<gates>
<gate name="G$1" symbol="TSL2561" x="0" y="0"/>
</gates>
<devices>
<device name="FN" package="FN-6">
<connects>
<connect gate="G$1" pin="ADDR" pad="2"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="INT" pad="5"/>
<connect gate="G$1" pin="SCL" pad="4"/>
<connect gate="G$1" pin="SDA" pad="6"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-11791" constant="no"/>
</technology>
</technologies>
</device>
<device name="T" package="TMB-6">
<connects>
<connect gate="G$1" pin="ADDR" pad="2"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="INT" pad="5"/>
<connect gate="G$1" pin="SCL" pad="4"/>
<connect gate="G$1" pin="SDA" pad="6"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="untitled">
<packages>
<package name="ADXL375">
<wire x1="0" y1="0" x2="0" y2="20" width="0.127" layer="21"/>
<wire x1="0" y1="20" x2="20" y2="20" width="0.127" layer="21"/>
<wire x1="20" y1="20" x2="20" y2="0" width="0.127" layer="21"/>
<wire x1="20" y1="0" x2="0" y2="0" width="0.127" layer="21"/>
<hole x="2.5" y="17.5" drill="4"/>
<hole x="17.5" y="17.5" drill="4"/>
<hole x="2.5" y="2.5" drill="4"/>
<hole x="17.5" y="2.5" drill="4"/>
<pad name="VIO" x="6" y="14.5" drill="1" diameter="2"/>
<pad name="GND" x="6" y="11.5" drill="1" diameter="2"/>
<pad name="CS" x="6" y="8.5" drill="1" diameter="2"/>
<pad name="VS" x="6" y="5.5" drill="1" diameter="2"/>
<pad name="SCL" x="14" y="16" drill="1" diameter="2"/>
<pad name="SDA" x="14" y="13" drill="1" diameter="2"/>
<pad name="SDO" x="14" y="10" drill="1" diameter="2"/>
<pad name="INT1" x="14" y="7" drill="1" diameter="2"/>
<pad name="INT2" x="14" y="4" drill="1" diameter="2"/>
</package>
</packages>
<symbols>
<symbol name="ADXL375">
<pin name="VS" x="-7.62" y="0"/>
<pin name="CS" x="-7.62" y="7.62"/>
<pin name="GND" x="-7.62" y="15.24"/>
<pin name="VIO" x="-7.62" y="22.86"/>
<wire x1="0" y1="-2.54" x2="0" y2="25.4" width="0.254" layer="94"/>
<wire x1="0" y1="25.4" x2="27.94" y2="25.4" width="0.254" layer="94"/>
<wire x1="27.94" y1="25.4" x2="27.94" y2="-2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<pin name="SCL" x="35.56" y="22.86" rot="R180"/>
<pin name="SDA" x="35.56" y="17.78" rot="R180"/>
<pin name="SDO" x="35.56" y="12.7" rot="R180"/>
<pin name="INT1" x="35.56" y="7.62" rot="R180"/>
<pin name="INT2" x="35.56" y="2.54" rot="R180"/>
<text x="7.62" y="-7.62" size="1.778" layer="95">ADXL375</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADXL375">
<gates>
<gate name="G$1" symbol="ADXL375" x="-15.24" y="-10.16"/>
</gates>
<devices>
<device name="" package="ADXL375">
<connects>
<connect gate="G$1" pin="CS" pad="CS"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="INT1" pad="INT1"/>
<connect gate="G$1" pin="INT2" pad="INT2"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="SDO" pad="SDO"/>
<connect gate="G$1" pin="VIO" pad="VIO"/>
<connect gate="G$1" pin="VS" pad="VS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="transistors">
<packages>
<package name="SOT-23">
<description>SOT-23, 3-pin</description>
<wire x1="-1.362" y1="-0.585" x2="-1.362" y2="0.558" width="0.2032" layer="21"/>
<wire x1="-1.362" y1="0.558" x2="1.305" y2="0.558" width="0.2032" layer="21"/>
<wire x1="1.305" y1="0.558" x2="1.305" y2="-0.585" width="0.2032" layer="21"/>
<wire x1="1.305" y1="-0.585" x2="-1.362" y2="-0.585" width="0.2032" layer="21"/>
<smd name="3" x="0.0254" y="1.0668" dx="0.762" dy="0.762" layer="1"/>
<smd name="1" x="-0.9792" y="-1.1014" dx="0.762" dy="0.762" layer="1"/>
<smd name="2" x="0.9398" y="-1.1014" dx="0.762" dy="0.762" layer="1"/>
<text x="2.032" y="-0.508" size="1.016" layer="21" ratio="12">&gt;NAME</text>
<text x="2.032" y="-2.413" size="1.016" layer="21" ratio="12">&gt;VALUE</text>
</package>
<package name="TO-92">
<wire x1="-2.0946" y1="-1.651" x2="-0.7863" y2="2.5485" width="0.1524" layer="21" curve="-111.098957" cap="flat"/>
<wire x1="0.7863" y1="2.5484" x2="2.0945" y2="-1.651" width="0.1524" layer="21" curve="-111.09954" cap="flat"/>
<wire x1="-2.0945" y1="-1.651" x2="2.0945" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.2537" y1="-0.254" x2="-0.2863" y2="-0.254" width="0.1524" layer="27"/>
<wire x1="-2.6549" y1="-0.254" x2="-2.2537" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="-0.2863" y1="-0.254" x2="0.2863" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="2.2537" y1="-0.254" x2="2.6549" y2="-0.254" width="0.1524" layer="21"/>
<wire x1="0.2863" y1="-0.254" x2="2.2537" y2="-0.254" width="0.1524" layer="27"/>
<wire x1="-0.7863" y1="2.5485" x2="0.7863" y2="2.5485" width="0.1524" layer="27" curve="-34.293591" cap="flat"/>
<pad name="3" x="1.27" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="0" y="1.905" drill="0.8128" shape="octagon"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" shape="octagon"/>
<text x="3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.175" y="-1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-0.635" y="0.635" size="1.27" layer="27" ratio="10">2</text>
<text x="-2.159" y="0" size="1.27" layer="27" ratio="10">1</text>
<text x="1.143" y="0" size="1.27" layer="27" ratio="10">3</text>
</package>
</packages>
<symbols>
<symbol name="MOSFET-N-ENH-BDIODE">
<wire x1="-5.08" y1="-2.54" x2="-3.81" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="-2.54" x2="-3.81" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="1.016" x2="-3.048" y2="0" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="0" x2="-3.048" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="1.778" x2="-3.048" y2="2.794" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="2.794" x2="-3.048" y2="3.81" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="-1.778" x2="-3.048" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="-2.794" x2="-3.048" y2="-3.81" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="0" x2="-2.032" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="1.016" x2="-2.032" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="-2.032" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-1.016" x2="-2.54" y2="-0.508" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-3.048" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.794" y1="0" x2="-2.54" y2="0.254" width="0.508" layer="94"/>
<wire x1="-2.54" y1="-0.508" x2="-2.54" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-0.254" x2="-2.794" y2="0" width="0.508" layer="94"/>
<wire x1="-2.413" y1="0.381" x2="-2.413" y2="-0.381" width="0.381" layer="94"/>
<wire x1="-3.048" y1="-2.794" x2="0" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.794" x2="0" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="0" y1="-3.556" x2="0" y2="-5.588" width="0.1524" layer="94"/>
<wire x1="-3.048" y1="2.794" x2="0" y2="2.794" width="0.1524" layer="94"/>
<wire x1="0" y1="2.794" x2="0" y2="3.81" width="0.1524" layer="94"/>
<wire x1="0" y1="3.81" x2="0" y2="5.588" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="0" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.794" width="0.1524" layer="94"/>
<wire x1="0" y1="3.81" x2="2.54" y2="3.81" width="0.1524" layer="94"/>
<wire x1="2.54" y1="3.81" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-3.556" x2="0" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="1.778" y2="0.762" width="0.1524" layer="94"/>
<wire x1="1.778" y1="0.762" x2="1.524" y2="0.508" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="3.302" y2="0.762" width="0.1524" layer="94"/>
<wire x1="3.302" y1="0.762" x2="3.556" y2="1.016" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-0.127" x2="2.54" y2="-3.556" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="1.778" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="1.778" y1="-0.254" x2="3.302" y2="-0.254" width="0.1524" layer="94"/>
<wire x1="3.302" y1="-0.254" x2="2.54" y2="0.762" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0.508" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0.127" x2="2.54" y2="-0.127" width="0.2032" layer="94"/>
<wire x1="2.54" y1="-0.127" x2="2.032" y2="-0.127" width="0.3048" layer="94"/>
<wire x1="2.54" y1="-0.127" x2="3.048" y2="-0.127" width="0.3048" layer="94"/>
<wire x1="2.159" y1="0.127" x2="2.54" y2="0.127" width="0.3048" layer="94"/>
<wire x1="2.54" y1="0.127" x2="2.921" y2="0.127" width="0.3048" layer="94"/>
<wire x1="2.921" y1="0.127" x2="2.54" y2="0.508" width="0.3048" layer="94"/>
<wire x1="2.54" y1="0.508" x2="2.54" y2="0.127" width="0.3048" layer="94"/>
<wire x1="-2.286" y1="0.508" x2="-2.286" y2="-0.508" width="0.3048" layer="94"/>
<wire x1="-2.159" y1="-0.762" x2="-2.159" y2="0.762" width="0.3048" layer="94"/>
<wire x1="2.286" y1="0.254" x2="2.413" y2="0.381" width="0.3048" layer="94"/>
<circle x="0" y="0" radius="5.6796" width="0.254" layer="94"/>
<circle x="0" y="3.81" radius="0.127" width="0.508" layer="94"/>
<circle x="0" y="-3.556" radius="0.127" width="0.508" layer="94"/>
<text x="-0.508" y="6.35" size="1.27" layer="94" ratio="10" rot="MR0">D</text>
<text x="-6.096" y="-1.778" size="1.27" layer="94" ratio="10" rot="MR0">G</text>
<text x="-0.508" y="-7.62" size="1.27" layer="94" ratio="10" rot="MR0">S</text>
<text x="6.604" y="0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="6.604" y="-1.524" size="1.778" layer="96">&gt;VALUE</text>
<pin name="G" x="-10.16" y="-2.54" visible="off" length="middle" direction="hiz"/>
<pin name="S" x="0" y="-10.16" visible="off" length="middle" rot="R90"/>
<pin name="D" x="0" y="10.16" visible="off" length="middle" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2N700*" prefix="Q" uservalue="yes">
<description>&lt;h3&gt;2N7000, 2N7002, NDS7002A&lt;/h3&gt;

&lt;p&gt;N-channel enhancement mode MOSFET&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="MOSFET-N-ENH-BDIODE" x="0" y="0"/>
</gates>
<devices>
<device name="_SOT23" package="SOT-23">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="1"/>
<connect gate="G$1" pin="S" pad="2"/>
</connects>
<technologies>
<technology name="0"/>
<technology name="2"/>
<technology name="2A"/>
</technologies>
</device>
<device name="_TO92" package="TO-92">
<connects>
<connect gate="G$1" pin="D" pad="3"/>
<connect gate="G$1" pin="G" pad="2"/>
<connect gate="G$1" pin="S" pad="1"/>
</connects>
<technologies>
<technology name="0"/>
<technology name="2"/>
<technology name="2A"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="0204/7">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R0201">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0402">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0603">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1005">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1206">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1210">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2012">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2512">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3216">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3225">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R4527">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R5025">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R6332">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1005" package="R1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
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
<library name="con-molex">
<description>&lt;b&gt;Molex Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="KK-156-8">
<description>&lt;b&gt;KK 156 HEADER&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/026604100_sd.pdf</description>
<wire x1="15.69" y1="4.95" x2="13.89" y2="4.95" width="0.2032" layer="21"/>
<wire x1="13.89" y1="4.95" x2="-13.865" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-13.865" y1="4.95" x2="-15.665" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-15.665" y1="4.95" x2="-15.665" y2="-4.825" width="0.2032" layer="21"/>
<wire x1="-15.665" y1="-4.825" x2="15.69" y2="-4.825" width="0.2032" layer="21"/>
<wire x1="15.69" y1="-4.825" x2="15.69" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-13.865" y1="2.525" x2="13.89" y2="2.525" width="0.2032" layer="21"/>
<wire x1="13.89" y1="2.525" x2="13.89" y2="4.95" width="0.2032" layer="21"/>
<wire x1="-13.865" y1="2.525" x2="-13.865" y2="4.95" width="0.2032" layer="21"/>
<pad name="1" x="-13.86" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="2" x="-9.9" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="3" x="-5.94" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="4" x="-1.98" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="5" x="1.98" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="6" x="5.94" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="7" x="9.9" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<pad name="8" x="13.86" y="0" drill="1.7" diameter="2.1844" shape="long" rot="R90"/>
<text x="-16.36" y="-4.445" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="17.63" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="KK-156-8" prefix="X" uservalue="yes">
<description>&lt;b&gt;KK 156 HEADER&lt;/b&gt;&lt;p&gt;
Source: http://www.molex.com/pdm_docs/sd/026604100_sd.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-12.7" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-15.24" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="0" y="-17.78" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="KK-156-8">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
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
<library name="elements_cs2016">
<packages>
<package name="ADS1115">
<wire x1="-12.7" y1="6.35" x2="15.24" y2="6.35" width="0.127" layer="21"/>
<wire x1="15.24" y1="6.35" x2="15.24" y2="-6.35" width="0.127" layer="21"/>
<wire x1="15.24" y1="-6.35" x2="-12.7" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-6.35" x2="-12.7" y2="6.35" width="0.127" layer="21"/>
<pad name="1" x="-10.16" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="2" x="-7.62" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="3" x="-5.08" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="4" x="-2.54" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="5" x="0" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="6" x="2.54" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="7" x="5.08" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="8" x="7.62" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="9" x="10.16" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="10" x="12.7" y="-3.81" drill="0.8" shape="octagon"/>
</package>
<package name="X9C104">
<wire x1="-11.43" y1="7.62" x2="10.16" y2="7.62" width="0.127" layer="21"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-5.08" width="0.127" layer="21"/>
<wire x1="10.16" y1="-5.08" x2="-11.43" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-11.43" y1="-5.08" x2="-11.43" y2="7.62" width="0.127" layer="21"/>
<pad name="1" x="-8.89" y="5.08" drill="0.8" shape="octagon"/>
<pad name="2" x="-8.89" y="2.54" drill="0.8" shape="octagon"/>
<pad name="3" x="-8.89" y="0" drill="0.8" shape="octagon"/>
<pad name="4" x="-8.89" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="5" x="7.62" y="5.08" drill="0.8" shape="octagon"/>
<pad name="6" x="7.62" y="2.54" drill="0.8" shape="octagon"/>
<pad name="7" x="7.62" y="0" drill="0.8" shape="octagon"/>
<pad name="8" x="7.62" y="-2.54" drill="0.8" shape="octagon"/>
</package>
<package name="74HC4051">
<wire x1="-6.35" y1="8.89" x2="-6.35" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-11.43" x2="6.35" y2="-11.43" width="0.127" layer="21"/>
<wire x1="6.35" y1="-11.43" x2="6.35" y2="8.89" width="0.127" layer="21"/>
<wire x1="6.35" y1="8.89" x2="-6.35" y2="8.89" width="0.127" layer="21"/>
<pad name="1" x="-3.81" y="7.62" drill="0.8" shape="octagon"/>
<pad name="2" x="-3.81" y="5.08" drill="0.8" shape="octagon"/>
<pad name="3" x="-3.81" y="2.54" drill="0.8" shape="octagon"/>
<pad name="4" x="-3.81" y="0" drill="0.8" shape="octagon"/>
<pad name="5" x="-3.81" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="6" x="-3.81" y="-5.08" drill="0.8" shape="octagon"/>
<pad name="7" x="-3.81" y="-7.62" drill="0.8" shape="octagon"/>
<pad name="8" x="-3.81" y="-10.16" drill="0.8" shape="octagon"/>
<pad name="9" x="3.81" y="7.62" drill="0.8" shape="octagon"/>
<pad name="10" x="3.81" y="5.08" drill="0.8" shape="octagon"/>
<pad name="11" x="3.81" y="2.54" drill="0.8" shape="octagon"/>
<pad name="12" x="3.81" y="0" drill="0.8" shape="octagon"/>
<pad name="13" x="3.81" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="14" x="3.81" y="-5.08" drill="0.8" shape="octagon"/>
<pad name="15" x="3.81" y="-7.62" drill="0.8" shape="octagon"/>
<pad name="16" x="3.81" y="-10.16" drill="0.8" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="ADS1115">
<wire x1="-33.02" y1="10.16" x2="-33.02" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-33.02" y1="-7.62" x2="17.78" y2="-7.62" width="0.254" layer="94"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="10.16" width="0.254" layer="94"/>
<wire x1="17.78" y1="10.16" x2="-33.02" y2="10.16" width="0.254" layer="94"/>
<pin name="VDD" x="-30.48" y="-15.24" rot="R90"/>
<pin name="GND" x="-25.4" y="-15.24" rot="R90"/>
<pin name="SCL" x="-20.32" y="-15.24" rot="R90"/>
<pin name="SDA" x="-15.24" y="-15.24" rot="R90"/>
<pin name="ADDR" x="-10.16" y="-15.24" rot="R90"/>
<pin name="ALRT" x="-5.08" y="-15.24" rot="R90"/>
<pin name="A0" x="0" y="-15.24" rot="R90"/>
<pin name="A1" x="5.08" y="-15.24" rot="R90"/>
<pin name="A2" x="10.16" y="-15.24" rot="R90"/>
<pin name="A3" x="15.24" y="-15.24" rot="R90"/>
</symbol>
<symbol name="X9C104">
<wire x1="-15.24" y1="10.16" x2="17.78" y2="10.16" width="0.254" layer="94"/>
<wire x1="17.78" y1="10.16" x2="17.78" y2="-10.16" width="0.254" layer="94"/>
<wire x1="17.78" y1="-10.16" x2="-15.24" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-10.16" x2="-15.24" y2="10.16" width="0.254" layer="94"/>
<pin name="INC" x="-22.86" y="7.62"/>
<pin name="U/D" x="-22.86" y="2.54"/>
<pin name="VH/RH" x="-22.86" y="-2.54"/>
<pin name="VSS" x="-22.86" y="-7.62"/>
<pin name="VCC" x="25.4" y="7.62" rot="R180"/>
<pin name="CS" x="25.4" y="2.54" rot="R180"/>
<pin name="VL/RL" x="25.4" y="-2.54" rot="R180"/>
<pin name="VW/RW" x="25.4" y="-7.62" rot="R180"/>
</symbol>
<symbol name="74HC4051">
<wire x1="-17.78" y1="20.32" x2="-17.78" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-17.78" y2="20.32" width="0.254" layer="94"/>
<pin name="Y4" x="-25.4" y="17.78"/>
<pin name="Y6" x="-25.4" y="12.7"/>
<pin name="Z" x="-25.4" y="7.62"/>
<pin name="Y7" x="-25.4" y="2.54"/>
<pin name="Y5" x="-25.4" y="-2.54"/>
<pin name="E" x="-25.4" y="-7.62"/>
<pin name="VEE" x="-25.4" y="-12.7"/>
<pin name="GND" x="-25.4" y="-17.78"/>
<pin name="VCC" x="17.78" y="17.78" rot="R180"/>
<pin name="Y2" x="17.78" y="12.7" rot="R180"/>
<pin name="Y1" x="17.78" y="7.62" rot="R180"/>
<pin name="Y0" x="17.78" y="2.54" rot="R180"/>
<pin name="Y3" x="17.78" y="-2.54" rot="R180"/>
<pin name="S0" x="17.78" y="-7.62" rot="R180"/>
<pin name="S1" x="17.78" y="-12.7" rot="R180"/>
<pin name="S2" x="17.78" y="-17.78" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ADS1115">
<gates>
<gate name="G$1" symbol="ADS1115" x="7.62" y="0"/>
</gates>
<devices>
<device name="" package="ADS1115">
<connects>
<connect gate="G$1" pin="A0" pad="7"/>
<connect gate="G$1" pin="A1" pad="8"/>
<connect gate="G$1" pin="A2" pad="9"/>
<connect gate="G$1" pin="A3" pad="10"/>
<connect gate="G$1" pin="ADDR" pad="5"/>
<connect gate="G$1" pin="ALRT" pad="6"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="SCL" pad="3"/>
<connect gate="G$1" pin="SDA" pad="4"/>
<connect gate="G$1" pin="VDD" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="X9C104">
<gates>
<gate name="G$1" symbol="X9C104" x="0" y="0"/>
</gates>
<devices>
<device name="" package="X9C104">
<connects>
<connect gate="G$1" pin="CS" pad="6"/>
<connect gate="G$1" pin="INC" pad="1"/>
<connect gate="G$1" pin="U/D" pad="2"/>
<connect gate="G$1" pin="VCC" pad="5"/>
<connect gate="G$1" pin="VH/RH" pad="3"/>
<connect gate="G$1" pin="VL/RL" pad="7"/>
<connect gate="G$1" pin="VSS" pad="4"/>
<connect gate="G$1" pin="VW/RW" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74HC4051">
<gates>
<gate name="G$1" symbol="74HC4051" x="0" y="0"/>
</gates>
<devices>
<device name="" package="74HC4051">
<connects>
<connect gate="G$1" pin="E" pad="6"/>
<connect gate="G$1" pin="GND" pad="8"/>
<connect gate="G$1" pin="S0" pad="14"/>
<connect gate="G$1" pin="S1" pad="15"/>
<connect gate="G$1" pin="S2" pad="16"/>
<connect gate="G$1" pin="VCC" pad="9"/>
<connect gate="G$1" pin="VEE" pad="7"/>
<connect gate="G$1" pin="Y0" pad="12"/>
<connect gate="G$1" pin="Y1" pad="11"/>
<connect gate="G$1" pin="Y2" pad="10"/>
<connect gate="G$1" pin="Y3" pad="13"/>
<connect gate="G$1" pin="Y4" pad="1"/>
<connect gate="G$1" pin="Y5" pad="5"/>
<connect gate="G$1" pin="Y6" pad="2"/>
<connect gate="G$1" pin="Y7" pad="4"/>
<connect gate="G$1" pin="Z" pad="3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ptc-ntc">
<description>&lt;b&gt;PTC and NTC Resistors&lt;/b&gt;&lt;p&gt;
Siemens, Philips, Valvo&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOD70">
<description>&lt;b&gt;SOD 70&lt;/b&gt;&lt;p&gt;
Source: 153627-da-01-en-Temperatur-Sensor_KTY10-6_Philips.pdf</description>
<wire x1="-1.6" y1="-1.6" x2="1.6" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-1.625" x2="1.625" y2="-1.6" width="0.2032" layer="21" curve="-270"/>
<pad name="1" x="-1.27" y="0" drill="0.7" diameter="1.27"/>
<pad name="2" x="1.27" y="0" drill="0.7" diameter="1.27"/>
<text x="-2.286" y="2.794" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.286" y="-3.302" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="PTC-1">
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.889" x2="-2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.778" x2="-1.27" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-1.778" x2="-2.286" y2="-1.778" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.27" width="0.1524" layer="94"/>
<wire x1="3.302" y1="2.54" x2="3.302" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.0668" y1="2.1336" x2="-0.762" y2="2.159" width="0.1524" layer="94" curve="-143.401004"/>
<wire x1="-0.762" y1="2.159" x2="-0.635" y2="1.651" width="0.1524" layer="94" curve="16.281888"/>
<wire x1="-0.635" y1="1.651" x2="-0.0508" y2="1.5494" width="0.1524" layer="94" curve="135.668554"/>
<wire x1="-0.0508" y1="1.5494" x2="-0.127" y2="2.921" width="0.1524" layer="94" curve="65.705733"/>
<wire x1="-0.127" y1="2.921" x2="-0.381" y2="2.794" width="0.1524" layer="94" curve="139.383116"/>
<wire x1="-0.381" y1="2.794" x2="0.381" y2="2.286" width="0.1524" layer="94" curve="100.176187"/>
<text x="-3.81" y="3.81" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="2.54" y="2.54"/>
<vertex x="2.794" y="1.778"/>
<vertex x="2.286" y="1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="3.302" y="2.54"/>
<vertex x="3.556" y="1.778"/>
<vertex x="3.048" y="1.778"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="PTC-" prefix="R">
<description>&lt;b&gt;Positive Temperature Coefficient Resistor&lt;/b&gt; (PTC) termistor&lt;p&gt;
Philips KTY81-210 - KTY81-252&lt;br&gt;
Source: 153627-da-01-en-Temperatur-Sensor_KTY10-6_Philips.pdf</description>
<gates>
<gate name="G$1" symbol="PTC-1" x="0" y="0"/>
</gates>
<devices>
<device name="SOD70" package="SOD70">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
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
<part name="U$1" library="untitled" deviceset="ADXL375" device=""/>
<part name="U3" library="SparkFun-DigitalIC" deviceset="TSL2561" device="T"/>
<part name="Q1" library="transistors" deviceset="2N700*" device="_SOT23" technology="2"/>
<part name="R2" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R3" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R4" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="LSP1" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP2" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP3" library="solpad" deviceset="LSP10" device=""/>
<part name="X2" library="con-molex" deviceset="KK-156-8" device=""/>
<part name="Q2" library="transistors" deviceset="2N700*" device="_SOT23" technology="2"/>
<part name="R1" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="U$2" library="elements_cs2016" deviceset="ADS1115" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="LSP4" library="solpad" deviceset="LSP10" device=""/>
<part name="U$3" library="elements_cs2016" deviceset="X9C104" device=""/>
<part name="U$4" library="elements_cs2016" deviceset="74HC4051" device=""/>
<part name="U$5" library="elements_cs2016" deviceset="74HC4051" device=""/>
<part name="U$6" library="elements_cs2016" deviceset="74HC4051" device=""/>
<part name="LSP5" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP6" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP7" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP8" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP9" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP10" library="solpad" deviceset="LSP10" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="R5" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R6" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R7" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="U$7" library="elements_cs2016" deviceset="ADS1115" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="LSP11" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP12" library="solpad" deviceset="LSP10" device=""/>
<part name="U1" library="SparkFun-DigitalIC" deviceset="TSL2561" device="T"/>
<part name="U2" library="SparkFun-DigitalIC" deviceset="TSL2561" device="T"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="LSP13" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP14" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP15" library="solpad" deviceset="LSP10" device=""/>
<part name="LSP16" library="solpad" deviceset="LSP10" device=""/>
<part name="R8" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
<part name="R9" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
<part name="R10" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="114.3" y="106.68" size="1.778" layer="95" rot="R90">VCC3.3</text>
<text x="116.84" y="48.26" size="1.778" layer="95">SDA3.3</text>
<text x="101.6" y="91.44" size="1.778" layer="95">SCL3.3</text>
<text x="142.24" y="111.76" size="1.778" layer="95">VCC5</text>
<text x="129.54" y="63.5" size="1.778" layer="95" rot="R90">VCC3.3</text>
<text x="157.48" y="68.58" size="1.778" layer="95">VCC5</text>
<text x="-22.86" y="60.96" size="1.778" layer="95" rot="R180">VCC3.3</text>
<text x="-30.48" y="71.12" size="1.778" layer="95">SCL3.3</text>
<text x="-30.48" y="76.2" size="1.778" layer="95">SDA3.3</text>
<text x="7.62" y="81.28" size="1.778" layer="95">SDA3.3</text>
<text x="7.62" y="76.2" size="1.778" layer="95">SCL3.3</text>
<text x="7.62" y="86.36" size="1.778" layer="95">VCC3.3</text>
<text x="81.28" y="76.2" size="1.778" layer="95">VCC3.3</text>
<text x="-58.42" y="114.3" size="1.778" layer="95">ADS1115</text>
<text x="167.64" y="-48.26" size="1.778" layer="95" rot="R180">VCC3.3</text>
<text x="-53.34" y="27.94" size="1.778" layer="95">VCC5</text>
<text x="-134.62" y="111.76" size="1.778" layer="95">ADS1115</text>
<text x="-109.22" y="73.66" size="1.778" layer="95">SDA3.3</text>
<text x="-109.22" y="68.58" size="1.778" layer="95">SCL3.3</text>
<text x="116.84" y="-55.88" size="1.778" layer="95">SDA3.3</text>
<text x="116.84" y="-48.26" size="1.778" layer="95">SCL3.3</text>
<text x="114.3" y="-15.24" size="1.778" layer="95">SCL3.3</text>
<text x="116.84" y="-22.86" size="1.778" layer="95">SDA3.3</text>
<text x="114.3" y="12.7" size="1.778" layer="95">SCL3.3</text>
<text x="114.3" y="5.08" size="1.778" layer="95">SDA3.3</text>
<text x="167.64" y="-15.24" size="1.778" layer="95" rot="R180">VCC3.3</text>
<text x="167.64" y="12.7" size="1.778" layer="95" rot="R180">VCC3.3</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="58.42" y="101.6" rot="R180"/>
<instance part="U3" gate="G$1" x="139.7" y="-55.88"/>
<instance part="Q1" gate="G$1" x="134.62" y="88.9" rot="R270"/>
<instance part="R2" gate="G$1" x="116.84" y="96.52" rot="R90"/>
<instance part="R3" gate="G$1" x="149.86" y="96.52" rot="R90"/>
<instance part="R4" gate="G$1" x="132.08" y="53.34" rot="R90"/>
<instance part="LSP1" gate="1" x="-22.86" y="83.82" rot="R270"/>
<instance part="LSP2" gate="1" x="10.16" y="93.98" rot="R90"/>
<instance part="LSP3" gate="1" x="15.24" y="99.06" rot="R90"/>
<instance part="X2" gate="-1" x="165.1" y="88.9"/>
<instance part="X2" gate="-2" x="177.8" y="45.72"/>
<instance part="X2" gate="-3" x="10.16" y="132.08" rot="R90"/>
<instance part="X2" gate="-4" x="12.7" y="132.08" rot="R90"/>
<instance part="X2" gate="-5" x="15.24" y="132.08" rot="R90"/>
<instance part="X2" gate="-6" x="17.78" y="132.08" rot="R90"/>
<instance part="X2" gate="-7" x="20.32" y="132.08" rot="R90"/>
<instance part="X2" gate="-8" x="22.86" y="132.08" rot="R90"/>
<instance part="Q2" gate="G$1" x="149.86" y="45.72" rot="R270"/>
<instance part="R1" gate="G$1" x="165.1" y="53.34" rot="R90"/>
<instance part="U$2" gate="G$1" x="-48.26" y="93.98" rot="R90"/>
<instance part="GND1" gate="1" x="-15.24" y="63.5"/>
<instance part="GND2" gate="1" x="71.12" y="83.82"/>
<instance part="GND3" gate="1" x="162.56" y="-66.04"/>
<instance part="LSP4" gate="1" x="165.1" y="-55.88" rot="R270"/>
<instance part="U$3" gate="G$1" x="33.02" y="-22.86"/>
<instance part="U$4" gate="G$1" x="-83.82" y="-101.6"/>
<instance part="U$5" gate="G$1" x="-83.82" y="-5.08"/>
<instance part="U$6" gate="G$1" x="-83.82" y="-53.34"/>
<instance part="LSP5" gate="1" x="-55.88" y="-12.7" rot="R270"/>
<instance part="LSP6" gate="1" x="-55.88" y="-60.96" rot="R270"/>
<instance part="LSP7" gate="1" x="-58.42" y="-109.22" rot="R270"/>
<instance part="LSP8" gate="1" x="-119.38" y="-20.32" rot="R180"/>
<instance part="LSP9" gate="1" x="-119.38" y="-68.58" rot="R180"/>
<instance part="LSP10" gate="1" x="-116.84" y="-114.3" rot="R180"/>
<instance part="GND4" gate="1" x="-111.76" y="-27.94"/>
<instance part="GND5" gate="1" x="-111.76" y="-76.2"/>
<instance part="GND6" gate="1" x="-111.76" y="-129.54"/>
<instance part="R5" gate="G$1" x="-2.54" y="134.62" rot="R90"/>
<instance part="R6" gate="G$1" x="-10.16" y="134.62" rot="R90"/>
<instance part="R7" gate="G$1" x="-17.78" y="134.62" rot="R90"/>
<instance part="U$7" gate="G$1" x="-127" y="91.44" rot="R90"/>
<instance part="GND7" gate="1" x="-93.98" y="60.96"/>
<instance part="LSP11" gate="1" x="-96.52" y="81.28" rot="R270"/>
<instance part="LSP12" gate="1" x="111.76" y="-60.96" rot="R90"/>
<instance part="U1" gate="G$1" x="139.7" y="5.08"/>
<instance part="U2" gate="G$1" x="139.7" y="-22.86"/>
<instance part="GND8" gate="1" x="165.1" y="-33.02"/>
<instance part="GND9" gate="1" x="162.56" y="-5.08"/>
<instance part="LSP13" gate="1" x="170.18" y="-22.86" rot="R270"/>
<instance part="LSP14" gate="1" x="167.64" y="5.08" rot="R270"/>
<instance part="LSP15" gate="1" x="116.84" y="-27.94" rot="R90"/>
<instance part="LSP16" gate="1" x="114.3" y="0" rot="R90"/>
<instance part="R8" gate="G$1" x="-38.1" y="134.62"/>
<instance part="R9" gate="G$1" x="-53.34" y="134.62"/>
<instance part="R10" gate="G$1" x="-71.12" y="134.62"/>
</instances>
<busses>
</busses>
<nets>
<net name="SCL_3.3V" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<wire x1="124.46" y1="88.9" x2="116.84" y2="88.9" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="116.84" y1="88.9" x2="106.68" y2="88.9" width="0.1524" layer="91"/>
<wire x1="116.84" y1="88.9" x2="116.84" y2="91.44" width="0.1524" layer="91"/>
<junction x="116.84" y="88.9"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="SCL"/>
<wire x1="-33.02" y1="73.66" x2="-22.86" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SCL"/>
<wire x1="22.86" y1="78.74" x2="7.62" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SCL"/>
<wire x1="124.46" y1="-50.8" x2="116.84" y2="-50.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="SCL"/>
<wire x1="-111.76" y1="71.12" x2="-101.6" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="SCL"/>
<wire x1="124.46" y1="-17.78" x2="114.3" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SCL"/>
<wire x1="124.46" y1="10.16" x2="114.3" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="144.78" y1="88.9" x2="149.86" y2="88.9" width="0.1524" layer="91"/>
<wire x1="149.86" y1="88.9" x2="162.56" y2="88.9" width="0.1524" layer="91"/>
<junction x="149.86" y="88.9"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="149.86" y1="88.9" x2="149.86" y2="91.44" width="0.1524" layer="91"/>
<pinref part="X2" gate="-1" pin="S"/>
</segment>
</net>
<net name="5V" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="149.86" y1="101.6" x2="149.86" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="165.1" y1="58.42" x2="165.1" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
</net>
<net name="SDA_5V" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="S"/>
<wire x1="139.7" y1="45.72" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="132.08" y1="45.72" x2="121.92" y2="45.72" width="0.1524" layer="91"/>
<wire x1="132.08" y1="48.26" x2="132.08" y2="45.72" width="0.1524" layer="91"/>
<junction x="132.08" y="45.72"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="Q2" gate="G$1" pin="D"/>
<wire x1="160.02" y1="45.72" x2="165.1" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="165.1" y1="45.72" x2="175.26" y2="45.72" width="0.1524" layer="91"/>
<wire x1="165.1" y1="45.72" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
<junction x="165.1" y="45.72"/>
<pinref part="R1" gate="G$1" pin="1"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="-33.02" y1="63.5" x2="-22.86" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="116.84" y1="104.14" x2="132.08" y2="104.14" width="0.1524" layer="91"/>
<wire x1="132.08" y1="104.14" x2="132.08" y2="99.06" width="0.1524" layer="91"/>
<wire x1="116.84" y1="104.14" x2="116.84" y2="111.76" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="116.84" y1="104.14" x2="116.84" y2="101.6" width="0.1524" layer="91"/>
<junction x="116.84" y="104.14"/>
</segment>
<segment>
<pinref part="Q2" gate="G$1" pin="G"/>
<wire x1="147.32" y1="55.88" x2="147.32" y2="60.96" width="0.1524" layer="91"/>
<wire x1="147.32" y1="60.96" x2="132.08" y2="60.96" width="0.1524" layer="91"/>
<wire x1="132.08" y1="60.96" x2="132.08" y2="58.42" width="0.1524" layer="91"/>
<wire x1="132.08" y1="60.96" x2="132.08" y2="68.58" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="2"/>
<junction x="132.08" y="60.96"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SDO"/>
<wire x1="22.86" y1="88.9" x2="7.62" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VDD"/>
<wire x1="154.94" y1="-17.78" x2="167.64" y2="-17.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="154.94" y1="10.16" x2="165.1" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="-33.02" y1="68.58" x2="-15.24" y2="68.58" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="68.58" x2="-15.24" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="66.04" y1="86.36" x2="71.12" y2="86.36" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="154.94" y1="-60.96" x2="162.56" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-60.96" x2="162.56" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="VEE"/>
<wire x1="-109.22" y1="-17.78" x2="-111.76" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-17.78" x2="-111.76" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="-111.76" y1="-22.86" x2="-109.22" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-22.86" x2="-111.76" y2="-25.4" width="0.1524" layer="91"/>
<junction x="-111.76" y="-22.86"/>
<pinref part="GND4" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="VEE"/>
<wire x1="-109.22" y1="-66.04" x2="-111.76" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-66.04" x2="-111.76" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="-111.76" y1="-71.12" x2="-109.22" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-71.12" x2="-111.76" y2="-73.66" width="0.1524" layer="91"/>
<junction x="-111.76" y="-71.12"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$4" gate="G$1" pin="VEE"/>
<wire x1="-109.22" y1="-114.3" x2="-111.76" y2="-114.3" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-114.3" x2="-111.76" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="-111.76" y1="-119.38" x2="-109.22" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-119.38" x2="-111.76" y2="-127" width="0.1524" layer="91"/>
<junction x="-111.76" y="-119.38"/>
<pinref part="GND6" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="-111.76" y1="66.04" x2="-93.98" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-93.98" y1="66.04" x2="-93.98" y2="63.5" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="154.94" y1="-27.94" x2="165.1" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-27.94" x2="165.1" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="154.94" y1="0" x2="162.56" y2="0" width="0.1524" layer="91"/>
<wire x1="162.56" y1="0" x2="162.56" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
</net>
<net name="SDA_3.3V" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SDA"/>
<wire x1="-33.02" y1="78.74" x2="-22.86" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SDA"/>
<wire x1="22.86" y1="83.82" x2="7.62" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SDA"/>
<wire x1="124.46" y1="-53.34" x2="116.84" y2="-53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="SDA"/>
<wire x1="-111.76" y1="76.2" x2="-101.6" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="SDA"/>
<wire x1="124.46" y1="-20.32" x2="114.3" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SDA"/>
<wire x1="124.46" y1="7.62" x2="114.3" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="ADDR"/>
<wire x1="-33.02" y1="83.82" x2="-25.4" y2="83.82" width="0.1524" layer="91"/>
<pinref part="LSP1" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VS"/>
<wire x1="66.04" y1="101.6" x2="78.74" y2="101.6" width="0.1524" layer="91"/>
<wire x1="78.74" y1="101.6" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VIO"/>
<wire x1="78.74" y1="93.98" x2="78.74" y2="78.74" width="0.1524" layer="91"/>
<wire x1="78.74" y1="78.74" x2="66.04" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="CS"/>
<wire x1="66.04" y1="93.98" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<junction x="78.74" y="93.98"/>
<wire x1="78.74" y1="78.74" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<junction x="78.74" y="78.74"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="INT2"/>
<wire x1="22.86" y1="99.06" x2="17.78" y2="99.06" width="0.1524" layer="91"/>
<pinref part="LSP3" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="INT1"/>
<wire x1="22.86" y1="93.98" x2="12.7" y2="93.98" width="0.1524" layer="91"/>
<pinref part="LSP2" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="ADDR"/>
<wire x1="154.94" y1="-55.88" x2="162.56" y2="-55.88" width="0.1524" layer="91"/>
<pinref part="LSP4" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<wire x1="154.94" y1="-50.8" x2="162.56" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="VCC"/>
<wire x1="-66.04" y1="-83.82" x2="-48.26" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="VCC"/>
<wire x1="-48.26" y1="-83.82" x2="-48.26" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="-35.56" x2="-66.04" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VCC"/>
<wire x1="-48.26" y1="-35.56" x2="-48.26" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="12.7" x2="-66.04" y2="12.7" width="0.1524" layer="91"/>
<junction x="-48.26" y="-35.56"/>
<wire x1="-48.26" y1="12.7" x2="-48.26" y2="25.4" width="0.1524" layer="91"/>
<junction x="-48.26" y="12.7"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="S0"/>
<wire x1="-66.04" y1="-12.7" x2="-58.42" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="LSP5" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="S0"/>
<wire x1="-66.04" y1="-60.96" x2="-58.42" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="LSP6" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="S0"/>
<wire x1="-66.04" y1="-109.22" x2="-60.96" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="LSP7" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="E"/>
<wire x1="-109.22" y1="-60.96" x2="-119.38" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="-60.96" x2="-119.38" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="LSP9" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="E"/>
<wire x1="-109.22" y1="-109.22" x2="-116.84" y2="-109.22" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="-109.22" x2="-116.84" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="LSP10" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="E"/>
<wire x1="-109.22" y1="-12.7" x2="-119.38" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="-119.38" y1="-12.7" x2="-119.38" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="LSP8" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="ADDR"/>
<wire x1="-111.76" y1="81.28" x2="-99.06" y2="81.28" width="0.1524" layer="91"/>
<pinref part="LSP11" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="VDD"/>
<wire x1="-111.76" y1="60.96" x2="-101.6" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="INT"/>
<wire x1="124.46" y1="-60.96" x2="114.3" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="LSP12" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="INT"/>
<wire x1="124.46" y1="-27.94" x2="119.38" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="LSP15" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="ADDR"/>
<wire x1="154.94" y1="-22.86" x2="167.64" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="LSP13" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="INT"/>
<wire x1="124.46" y1="0" x2="116.84" y2="0" width="0.1524" layer="91"/>
<pinref part="LSP16" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ADDR"/>
<wire x1="154.94" y1="5.08" x2="165.1" y2="5.08" width="0.1524" layer="91"/>
<pinref part="LSP14" gate="1" pin="MP"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>