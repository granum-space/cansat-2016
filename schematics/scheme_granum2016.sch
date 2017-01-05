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
<package name="STM32">
<pad name="P$1" x="-5.08" y="12.7" drill="0.8"/>
<pad name="P$2" x="-5.08" y="10.16" drill="0.8"/>
<pad name="P$3" x="-5.08" y="7.62" drill="0.8"/>
<pad name="P$4" x="-5.08" y="5.08" drill="0.8"/>
<pad name="P$5" x="-5.08" y="2.54" drill="0.8"/>
<pad name="P$6" x="-5.08" y="0" drill="0.8"/>
<pad name="P$7" x="-5.08" y="-2.54" drill="0.8"/>
<pad name="P$8" x="-5.08" y="-5.08" drill="0.8"/>
<pad name="P$9" x="-5.08" y="-7.62" drill="0.8"/>
<pad name="P$10" x="-5.08" y="-10.16" drill="0.8"/>
<pad name="P$11" x="-5.08" y="-12.7" drill="0.8"/>
<pad name="P$12" x="-5.08" y="-15.24" drill="0.8"/>
<pad name="P$13" x="-5.08" y="-17.78" drill="0.8"/>
<pad name="P$14" x="-5.08" y="15.24" drill="0.8"/>
<pad name="P$15" x="-5.08" y="17.78" drill="0.8"/>
<pad name="P$16" x="-5.08" y="20.32" drill="0.8"/>
<pad name="P$17" x="-5.08" y="22.86" drill="0.8"/>
<pad name="P$18" x="-5.08" y="25.4" drill="0.8"/>
<pad name="P$19" x="-5.08" y="27.94" drill="0.8"/>
<pad name="P$20" x="-5.08" y="30.48" drill="0.8"/>
<pad name="P$21" x="0" y="30.48" drill="0.8"/>
<pad name="P$22" x="2.54" y="30.48" drill="0.8"/>
<pad name="P$23" x="5.08" y="30.48" drill="0.8"/>
<pad name="P$24" x="7.62" y="30.48" drill="0.8"/>
<pad name="P$25" x="12.7" y="30.48" drill="0.8"/>
<pad name="P$26" x="12.7" y="27.94" drill="0.8"/>
<pad name="P$27" x="12.7" y="25.4" drill="0.8"/>
<pad name="P$28" x="12.7" y="22.86" drill="0.8"/>
<pad name="P$29" x="12.7" y="20.32" drill="0.8"/>
<pad name="P$30" x="12.7" y="17.78" drill="0.8"/>
<pad name="P$31" x="12.7" y="15.24" drill="0.8"/>
<pad name="P$32" x="12.7" y="12.7" drill="0.8"/>
<pad name="P$33" x="12.7" y="10.16" drill="0.8"/>
<pad name="P$34" x="12.7" y="7.62" drill="0.8"/>
<pad name="P$35" x="12.7" y="5.08" drill="0.8"/>
<pad name="P$36" x="12.7" y="2.54" drill="0.8"/>
<pad name="P$37" x="12.7" y="0" drill="0.8"/>
<pad name="P$38" x="12.7" y="-2.54" drill="0.8"/>
<pad name="P$39" x="12.7" y="-5.08" drill="0.8"/>
<pad name="P$40" x="12.7" y="-7.62" drill="0.8"/>
<pad name="P$41" x="12.7" y="-10.16" drill="0.8"/>
<pad name="P$42" x="12.7" y="-12.7" drill="0.8"/>
<pad name="P$43" x="12.7" y="-15.24" drill="0.8"/>
<pad name="P$44" x="12.7" y="-17.78" drill="0.8"/>
<wire x1="-6.35" y1="-19.05" x2="-6.35" y2="31.75" width="0.127" layer="21"/>
<wire x1="-6.35" y1="31.75" x2="13.97" y2="31.75" width="0.127" layer="21"/>
<wire x1="13.97" y1="31.75" x2="13.97" y2="-19.05" width="0.127" layer="21"/>
<wire x1="13.97" y1="-19.05" x2="-6.35" y2="-19.05" width="0.127" layer="21"/>
</package>
<package name="GPS">
<pad name="P$1" x="-6.35" y="5.08" drill="0.8" shape="square"/>
<pad name="P$2" x="-6.35" y="2.54" drill="0.8" shape="square"/>
<pad name="P$3" x="-6.35" y="0" drill="0.8" shape="square"/>
<pad name="P$4" x="-6.35" y="-2.54" drill="0.8" shape="square"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-7.62" y1="-5.08" x2="2.54" y2="-5.08" width="0.127" layer="21"/>
<wire x1="2.54" y1="-5.08" x2="2.54" y2="7.62" width="0.127" layer="21"/>
<wire x1="2.54" y1="7.62" x2="-7.62" y2="7.62" width="0.127" layer="21"/>
</package>
<package name="MICRO_SD">
<wire x1="0" y1="5.08" x2="0" y2="-10.16" width="0.127" layer="21"/>
<wire x1="0" y1="-10.16" x2="11.43" y2="-10.16" width="0.127" layer="21"/>
<wire x1="11.43" y1="-10.16" x2="11.43" y2="5.08" width="0.127" layer="21"/>
<wire x1="11.43" y1="5.08" x2="0" y2="5.08" width="0.127" layer="21"/>
<pad name="P$1" x="1.27" y="3.81" drill="0.8" shape="square"/>
<pad name="P$2" x="1.27" y="1.27" drill="0.8" shape="square"/>
<pad name="P$3" x="1.27" y="-1.27" drill="0.8" shape="square"/>
<pad name="P$4" x="1.27" y="-3.81" drill="0.8" shape="square"/>
<pad name="P$5" x="1.27" y="-6.35" drill="0.8" shape="square"/>
<pad name="P$6" x="1.27" y="-8.89" drill="0.8" shape="square"/>
</package>
<package name="ATMEGA128">
<pad name="P$1" x="0" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$2" x="0" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$3" x="0" y="-5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$4" x="0" y="-7.62" drill="1.02108125" shape="octagon"/>
<pad name="P$5" x="0" y="-10.16" drill="1.02108125" shape="octagon"/>
<pad name="P$6" x="0" y="-12.7" drill="1.02108125" shape="octagon"/>
<pad name="P$7" x="0" y="-15.24" drill="1.02108125" shape="octagon"/>
<pad name="P$8" x="0" y="-17.78" drill="1.02108125" shape="octagon"/>
<pad name="P$9" x="0" y="-20.32" drill="1.02108125" shape="octagon"/>
<pad name="P$10" x="0" y="-22.86" drill="1.02108125" shape="octagon"/>
<pad name="P$11" x="5.08" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$12" x="7.62" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$13" x="10.16" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$14" x="12.7" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$15" x="15.24" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$16" x="17.78" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$17" x="20.32" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$18" x="22.86" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$19" x="25.4" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$20" x="27.94" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$21" x="30.48" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$22" x="33.02" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$23" x="35.56" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$24" x="38.1" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$25" x="40.64" y="5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$26" x="45.72" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$27" x="45.72" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$28" x="45.72" y="-5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$29" x="45.72" y="-7.62" drill="1.02108125" shape="octagon"/>
<pad name="P$30" x="45.72" y="-10.16" drill="1.02108125" shape="octagon"/>
<pad name="P$31" x="45.72" y="-12.7" drill="1.02108125" shape="octagon"/>
<pad name="P$32" x="45.72" y="-15.24" drill="1.02108125" shape="octagon"/>
<pad name="P$33" x="45.72" y="-17.78" drill="1.02108125" shape="octagon"/>
<pad name="P$34" x="45.72" y="-20.32" drill="1.02108125" shape="octagon"/>
<pad name="P$35" x="45.72" y="-22.86" drill="1.02108125" shape="octagon"/>
<pad name="P$36" x="45.72" y="-25.4" drill="1.02108125" shape="octagon"/>
<pad name="P$37" x="45.72" y="-27.94" drill="1.02108125" shape="octagon"/>
<pad name="P$39" x="38.1" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$40" x="35.56" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$41" x="33.02" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$42" x="30.48" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$43" x="27.94" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$44" x="25.4" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$45" x="22.86" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$46" x="20.32" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$47" x="17.78" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$48" x="15.24" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$49" x="12.7" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$50" x="10.16" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$51" x="7.62" y="-33.02" drill="1.02108125" shape="octagon"/>
<pad name="P$52" x="5.08" y="-33.02" drill="1.02108125" shape="octagon"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-35.56" width="0.127" layer="21"/>
<wire x1="-2.54" y1="-35.56" x2="48.26" y2="-35.56" width="0.127" layer="21"/>
<wire x1="48.26" y1="-35.56" x2="48.26" y2="7.62" width="0.127" layer="21"/>
<wire x1="48.26" y1="7.62" x2="-2.54" y2="7.62" width="0.127" layer="21"/>
<pad name="P$38" x="40.64" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$53" x="38.1" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$54" x="35.56" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$55" x="35.56" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$56" x="38.1" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$57" x="40.64" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$58" x="2.54" y="0" drill="1.02108125" shape="octagon"/>
<pad name="P$59" x="2.54" y="-2.54" drill="1.02108125" shape="octagon"/>
<pad name="P$60" x="2.54" y="-5.08" drill="1.02108125" shape="octagon"/>
<pad name="P$61" x="2.54" y="-7.62" drill="1.02108125" shape="octagon"/>
<pad name="P$62" x="2.54" y="-10.16" drill="1.02108125" shape="octagon"/>
<pad name="P$63" x="2.54" y="-12.7" drill="1.02108125" shape="octagon"/>
<pad name="P$64" x="2.54" y="-15.24" drill="1.02108125" shape="octagon"/>
</package>
<package name="MCP42100">
<pad name="P$1" x="0" y="0" drill="0.8" shape="octagon"/>
<pad name="P$2" x="0" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="P$3" x="0" y="-5.08" drill="0.8" shape="octagon"/>
<pad name="P$4" x="0" y="-7.62" drill="0.8" shape="octagon"/>
<pad name="P$5" x="0" y="-10.16" drill="0.8" shape="octagon"/>
<pad name="P$6" x="0" y="-12.7" drill="0.8" shape="octagon"/>
<pad name="P$7" x="0" y="-15.24" drill="0.8" shape="octagon"/>
<pad name="P$8" x="8.89" y="-15.24" drill="0.8" shape="octagon"/>
<pad name="P$9" x="8.89" y="-12.7" drill="0.8" shape="octagon"/>
<pad name="P$10" x="8.89" y="-10.16" drill="0.8" shape="octagon"/>
<pad name="P$11" x="8.89" y="-7.62" drill="0.8" shape="octagon"/>
<pad name="P$12" x="8.89" y="-5.08" drill="0.8" shape="octagon"/>
<pad name="P$13" x="8.89" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="P$14" x="8.89" y="0" drill="0.8" shape="octagon"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-16.51" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-16.51" x2="10.16" y2="-16.51" width="0.127" layer="21"/>
<wire x1="10.16" y1="-16.51" x2="10.16" y2="1.27" width="0.127" layer="21"/>
<wire x1="10.16" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
</package>
<package name="DS18B20">
<pad name="P$1" x="0" y="0" drill="0.8" shape="octagon"/>
<pad name="P$2" x="0" y="-2.54" drill="0.8" shape="octagon"/>
<pad name="P$3" x="0" y="-5.08" drill="0.8" shape="octagon"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-6.35" x2="3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="3.81" y2="1.27" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="-3.81" y2="1.27" width="0.127" layer="21"/>
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
<symbol name="STM32">
<pin name="5C1" x="-10.16" y="0" length="middle"/>
<pin name="3VB" x="-10.16" y="5.08" length="middle"/>
<pin name="4C1" x="-10.16" y="2.54" length="middle"/>
<pin name="C1" x="-10.16" y="-2.54" length="middle"/>
<pin name="A0" x="-10.16" y="-5.08" length="middle"/>
<pin name="A1" x="-10.16" y="-7.62" length="middle"/>
<pin name="A2" x="-10.16" y="-10.16" length="middle"/>
<pin name="A3" x="-10.16" y="-12.7" length="middle"/>
<pin name="A4" x="-10.16" y="-15.24" length="middle"/>
<pin name="A5" x="-10.16" y="-17.78" length="middle"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-45.72" width="0.254" layer="94"/>
<pin name="A6" x="-10.16" y="-20.32" length="middle"/>
<pin name="A7" x="-10.16" y="-22.86" length="middle"/>
<pin name="B0" x="-10.16" y="-25.4" length="middle"/>
<pin name="B1" x="-10.16" y="-27.94" length="middle"/>
<pin name="B10" x="-10.16" y="-30.48" length="middle"/>
<pin name="B11" x="-10.16" y="-33.02" length="middle"/>
<pin name="R" x="-10.16" y="-35.56" length="middle"/>
<pin name="3.3" x="-10.16" y="-38.1" length="middle"/>
<pin name="GN" x="-10.16" y="-40.64" length="middle"/>
<pin name="G" x="-10.16" y="-43.18" length="middle"/>
<wire x1="-5.08" y1="-45.72" x2="22.86" y2="-45.72" width="0.254" layer="94"/>
<wire x1="22.86" y1="-45.72" x2="22.86" y2="7.62" width="0.254" layer="94"/>
<wire x1="22.86" y1="7.62" x2="-5.08" y2="7.62" width="0.254" layer="94"/>
<pin name="3.3V" x="27.94" y="5.08" length="middle" rot="R180"/>
<pin name="GNDD" x="27.94" y="2.54" length="middle" rot="R180"/>
<pin name="5V" x="27.94" y="0" length="middle" rot="R180"/>
<pin name="B9" x="27.94" y="-2.54" length="middle" rot="R180"/>
<pin name="B8" x="27.94" y="-5.08" length="middle" rot="R180"/>
<pin name="B7" x="27.94" y="-7.62" length="middle" rot="R180"/>
<pin name="B6" x="27.94" y="-10.16" length="middle" rot="R180"/>
<pin name="B5" x="27.94" y="-12.7" length="middle" rot="R180"/>
<pin name="B4" x="27.94" y="-15.24" length="middle" rot="R180"/>
<pin name="B3" x="27.94" y="-17.78" length="middle" rot="R180"/>
<pin name="A15" x="27.94" y="-20.32" length="middle" rot="R180"/>
<pin name="A12" x="27.94" y="-22.86" length="middle" rot="R180"/>
<pin name="A11" x="27.94" y="-25.4" length="middle" rot="R180"/>
<pin name="A10" x="27.94" y="-27.94" length="middle" rot="R180"/>
<pin name="A9" x="27.94" y="-30.48" length="middle" rot="R180"/>
<pin name="A8" x="27.94" y="-33.02" length="middle" rot="R180"/>
<pin name="B15" x="27.94" y="-35.56" length="middle" rot="R180"/>
<pin name="B14" x="27.94" y="-38.1" length="middle" rot="R180"/>
<pin name="B13" x="27.94" y="-40.64" length="middle" rot="R180"/>
<pin name="B12" x="27.94" y="-43.18" length="middle" rot="R180"/>
<pin name="GNND" x="5.08" y="12.7" length="middle" rot="R270"/>
<pin name="_CLK" x="7.62" y="12.7" length="middle" rot="R270"/>
<pin name="_IO" x="10.16" y="12.7" length="middle" rot="R270"/>
<pin name="3.3U" x="12.7" y="12.7" length="middle" rot="R270"/>
</symbol>
<symbol name="GPS">
<pin name="VCC" x="-12.7" y="5.08" length="middle"/>
<pin name="RX" x="-12.7" y="0" length="middle"/>
<pin name="TX" x="-12.7" y="-5.08" length="middle"/>
<pin name="GND" x="-12.7" y="-10.16" length="middle"/>
<wire x1="-7.62" y1="7.62" x2="-7.62" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-12.7" x2="10.16" y2="-12.7" width="0.254" layer="94"/>
<wire x1="10.16" y1="-12.7" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<text x="-7.62" y="-17.78" size="1.778" layer="95">GPS</text>
</symbol>
<symbol name="MICRO_SD">
<wire x1="-25.4" y1="12.7" x2="-25.4" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-25.4" y1="-17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="-7.62" y2="12.7" width="0.254" layer="94"/>
<wire x1="-7.62" y1="12.7" x2="-25.4" y2="12.7" width="0.254" layer="94"/>
<pin name="GND" x="-30.48" y="10.16" length="middle"/>
<pin name="VCC" x="-30.48" y="5.08" length="middle"/>
<pin name="MISO" x="-30.48" y="0" length="middle"/>
<pin name="MOSI" x="-30.48" y="-5.08" length="middle"/>
<pin name="SCK" x="-30.48" y="-10.16" length="middle"/>
<pin name="CS" x="-30.48" y="-15.24" length="middle"/>
<text x="-25.4" y="-22.86" size="1.778" layer="95">micro sd</text>
</symbol>
<symbol name="ATMEGA128">
<pin name="PEN" x="-17.78" y="7.62" length="middle"/>
<pin name="RXD0/(PDI)PE0" x="-17.78" y="5.08" length="middle"/>
<pin name="(TXD0/PD0)PE1" x="-17.78" y="2.54" length="middle"/>
<pin name="(XCK0/AIN0)PE2" x="-17.78" y="0" length="middle"/>
<pin name="(OC3A/AIN1)PE3" x="-17.78" y="-2.54" length="middle"/>
<pin name="(OC3B/INT4)PE4" x="-17.78" y="-5.08" length="middle"/>
<pin name="(OC3C/INT5)PE5" x="-17.78" y="-7.62" length="middle"/>
<pin name="(T3/INT6)PE6" x="-17.78" y="-10.16" length="middle"/>
<pin name="(ICP3/INT7)PE7" x="-17.78" y="-12.7" length="middle"/>
<pin name="(SS)PB0" x="-17.78" y="-15.24" length="middle"/>
<pin name="(SCK)PB1" x="-17.78" y="-17.78" length="middle"/>
<pin name="(MOSI)PB2" x="-17.78" y="-20.32" length="middle"/>
<pin name="(MISO)PB3" x="-17.78" y="-22.86" length="middle"/>
<pin name="(OC0)PB4" x="-17.78" y="-25.4" length="middle"/>
<pin name="(OC1A)PB5" x="-17.78" y="-27.94" length="middle"/>
<pin name="(OC1B)PB6" x="-17.78" y="-30.48" length="middle"/>
<pin name="(OC2/OC1C)PB7" x="2.54" y="-55.88" length="middle" rot="R90"/>
<pin name="TOSC2/PG3" x="5.08" y="-55.88" length="middle" rot="R90"/>
<pin name="TOSC1/PG4" x="7.62" y="-55.88" length="middle" rot="R90"/>
<pin name="RESET" x="10.16" y="-55.88" length="middle" rot="R90"/>
<pin name="VCC" x="12.7" y="-55.88" length="middle" rot="R90"/>
<pin name="GND" x="15.24" y="-55.88" length="middle" rot="R90"/>
<pin name="XTAL2" x="17.78" y="-55.88" length="middle" rot="R90"/>
<pin name="XTAL1" x="20.32" y="-55.88" length="middle" rot="R90"/>
<pin name="(SCL/INT0)PD0" x="22.86" y="-55.88" length="middle" rot="R90"/>
<pin name="(SDA/INT1)PD1" x="25.4" y="-55.88" length="middle" rot="R90"/>
<pin name="(RXD1/INT2)PD2" x="27.94" y="-55.88" length="middle" rot="R90"/>
<pin name="(TXD1/INT3)PD3" x="30.48" y="-55.88" length="middle" rot="R90"/>
<pin name="(ICP1)PD4" x="33.02" y="-55.88" length="middle" rot="R90"/>
<pin name="(XCK1)PD5" x="35.56" y="-55.88" length="middle" rot="R90"/>
<pin name="(T1)PD6" x="38.1" y="-55.88" length="middle" rot="R90"/>
<pin name="(T2)PD7" x="40.64" y="-55.88" length="middle" rot="R90"/>
<pin name="PG0(WR)" x="60.96" y="-30.48" length="middle" rot="R180"/>
<pin name="PG1(RD)" x="60.96" y="-27.94" length="middle" rot="R180"/>
<pin name="PC0(A8)" x="60.96" y="-25.4" length="middle" rot="R180"/>
<pin name="PC1(A9)" x="60.96" y="-22.86" length="middle" rot="R180"/>
<pin name="PC2(A10)" x="60.96" y="-20.32" length="middle" rot="R180"/>
<pin name="PC3(A11)" x="60.96" y="-17.78" length="middle" rot="R180"/>
<pin name="PC4(A12)" x="60.96" y="-15.24" length="middle" rot="R180"/>
<pin name="PC5(A13)" x="60.96" y="-12.7" length="middle" rot="R180"/>
<pin name="PC6(A14)" x="60.96" y="-10.16" length="middle" rot="R180"/>
<pin name="PC7(A15)" x="60.96" y="-7.62" length="middle" rot="R180"/>
<pin name="PG2(ALE)" x="60.96" y="-5.08" length="middle" rot="R180"/>
<pin name="PA7(AD7)" x="60.96" y="-2.54" length="middle" rot="R180"/>
<pin name="PA6(AD6)" x="60.96" y="0" length="middle" rot="R180"/>
<pin name="PA5(AD5)" x="60.96" y="2.54" length="middle" rot="R180"/>
<pin name="PA4(AD4)" x="60.96" y="5.08" length="middle" rot="R180"/>
<pin name="PA3(AD3)" x="60.96" y="7.62" length="middle" rot="R180"/>
<pin name="PA2(AD2)" x="40.64" y="27.94" length="middle" rot="R270"/>
<pin name="PA1(AD1)" x="38.1" y="27.94" length="middle" rot="R270"/>
<pin name="PA0(AD0)" x="35.56" y="27.94" length="middle" rot="R270"/>
<pin name="VCC1" x="33.02" y="27.94" length="middle" rot="R270"/>
<pin name="GND1" x="30.48" y="27.94" length="middle" rot="R270"/>
<pin name="PF7(ADC7/TDI)" x="27.94" y="27.94" length="middle" rot="R270"/>
<pin name="PF6(ADC6/TDO)" x="25.4" y="27.94" length="middle" rot="R270"/>
<pin name="PF5(ADC5/TMS)" x="22.86" y="27.94" length="middle" rot="R270"/>
<pin name="PF4(ADC4/TCK)" x="20.32" y="27.94" length="middle" rot="R270"/>
<pin name="PF3(ADC3)" x="17.78" y="27.94" length="middle" rot="R270"/>
<pin name="PF2(ADC2)" x="15.24" y="27.94" length="middle" rot="R270"/>
<pin name="PF1(ADC1)" x="12.7" y="27.94" length="middle" rot="R270"/>
<pin name="PF0(ADC0)" x="10.16" y="27.94" length="middle" rot="R270"/>
<pin name="AREF" x="7.62" y="27.94" length="middle" rot="R270"/>
<pin name="GND2" x="5.08" y="27.94" length="middle" rot="R270"/>
<pin name="AVCC" x="2.54" y="27.94" length="middle" rot="R270"/>
<wire x1="-12.7" y1="22.86" x2="-12.7" y2="-50.8" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-50.8" x2="55.88" y2="-50.8" width="0.254" layer="94"/>
<wire x1="55.88" y1="-50.8" x2="55.88" y2="22.86" width="0.254" layer="94"/>
<wire x1="55.88" y1="22.86" x2="-12.7" y2="22.86" width="0.254" layer="94"/>
</symbol>
<symbol name="MCP42100">
<pin name="CS" x="-5.08" y="7.62" length="middle"/>
<pin name="SCK" x="-5.08" y="2.54" length="middle"/>
<pin name="SI" x="-5.08" y="-2.54" length="middle"/>
<pin name="VSS" x="-5.08" y="-7.62" length="middle"/>
<pin name="PB1" x="-5.08" y="-12.7" length="middle"/>
<pin name="PW1" x="-5.08" y="-17.78" length="middle"/>
<pin name="PA1" x="-5.08" y="-22.86" length="middle"/>
<pin name="PA0" x="27.94" y="-22.86" length="middle" rot="R180"/>
<pin name="PW0" x="27.94" y="-17.78" length="middle" rot="R180"/>
<pin name="PB0" x="27.94" y="-12.7" length="middle" rot="R180"/>
<pin name="RS" x="27.94" y="-7.62" length="middle" rot="R180"/>
<pin name="SHDN" x="27.94" y="-2.54" length="middle" rot="R180"/>
<pin name="SO" x="27.94" y="2.54" length="middle" rot="R180"/>
<pin name="VDD" x="27.94" y="7.62" length="middle" rot="R180"/>
<wire x1="0" y1="10.16" x2="0" y2="-25.4" width="0.254" layer="94"/>
<wire x1="0" y1="-25.4" x2="22.86" y2="-25.4" width="0.254" layer="94"/>
<wire x1="22.86" y1="-25.4" x2="22.86" y2="10.16" width="0.254" layer="94"/>
<wire x1="22.86" y1="10.16" x2="0" y2="10.16" width="0.254" layer="94"/>
</symbol>
<symbol name="DS18B20">
<pin name="GND" x="-5.08" y="0" length="middle"/>
<pin name="DQ" x="-5.08" y="-2.54" length="middle"/>
<pin name="VDD" x="-5.08" y="-5.08" length="middle"/>
<wire x1="0" y1="2.54" x2="0" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="12.7" y2="-7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="-7.62" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="0" y2="2.54" width="0.254" layer="94"/>
<text x="0" y="-10.16" size="1.778" layer="95">DS18B20</text>
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
<deviceset name="STM32">
<gates>
<gate name="G$1" symbol="STM32" x="-7.62" y="12.7"/>
</gates>
<devices>
<device name="" package="STM32">
<connects>
<connect gate="G$1" pin="3.3" pad="P$1"/>
<connect gate="G$1" pin="3.3U" pad="P$2"/>
<connect gate="G$1" pin="3.3V" pad="P$3"/>
<connect gate="G$1" pin="3VB" pad="P$4"/>
<connect gate="G$1" pin="4C1" pad="P$5"/>
<connect gate="G$1" pin="5C1" pad="P$6"/>
<connect gate="G$1" pin="5V" pad="P$7"/>
<connect gate="G$1" pin="A0" pad="P$8"/>
<connect gate="G$1" pin="A1" pad="P$9"/>
<connect gate="G$1" pin="A10" pad="P$18"/>
<connect gate="G$1" pin="A11" pad="P$19"/>
<connect gate="G$1" pin="A12" pad="P$20"/>
<connect gate="G$1" pin="A15" pad="P$21"/>
<connect gate="G$1" pin="A2" pad="P$10"/>
<connect gate="G$1" pin="A3" pad="P$11"/>
<connect gate="G$1" pin="A4" pad="P$12"/>
<connect gate="G$1" pin="A5" pad="P$13"/>
<connect gate="G$1" pin="A6" pad="P$14"/>
<connect gate="G$1" pin="A7" pad="P$15"/>
<connect gate="G$1" pin="A8" pad="P$16"/>
<connect gate="G$1" pin="A9" pad="P$17"/>
<connect gate="G$1" pin="B0" pad="P$22"/>
<connect gate="G$1" pin="B1" pad="P$23"/>
<connect gate="G$1" pin="B10" pad="P$31"/>
<connect gate="G$1" pin="B11" pad="P$32"/>
<connect gate="G$1" pin="B12" pad="P$33"/>
<connect gate="G$1" pin="B13" pad="P$34"/>
<connect gate="G$1" pin="B14" pad="P$35"/>
<connect gate="G$1" pin="B15" pad="P$36"/>
<connect gate="G$1" pin="B3" pad="P$24"/>
<connect gate="G$1" pin="B4" pad="P$25"/>
<connect gate="G$1" pin="B5" pad="P$26"/>
<connect gate="G$1" pin="B6" pad="P$27"/>
<connect gate="G$1" pin="B7" pad="P$28"/>
<connect gate="G$1" pin="B8" pad="P$29"/>
<connect gate="G$1" pin="B9" pad="P$30"/>
<connect gate="G$1" pin="C1" pad="P$37"/>
<connect gate="G$1" pin="G" pad="P$38"/>
<connect gate="G$1" pin="GN" pad="P$39"/>
<connect gate="G$1" pin="GNDD" pad="P$40"/>
<connect gate="G$1" pin="GNND" pad="P$41"/>
<connect gate="G$1" pin="R" pad="P$42"/>
<connect gate="G$1" pin="_CLK" pad="P$43"/>
<connect gate="G$1" pin="_IO" pad="P$44"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GPS">
<gates>
<gate name="G$1" symbol="GPS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="GPS">
<connects>
<connect gate="G$1" pin="GND" pad="P$1"/>
<connect gate="G$1" pin="RX" pad="P$2"/>
<connect gate="G$1" pin="TX" pad="P$3"/>
<connect gate="G$1" pin="VCC" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MICRO_SD">
<gates>
<gate name="G$1" symbol="MICRO_SD" x="17.78" y="2.54"/>
</gates>
<devices>
<device name="" package="MICRO_SD">
<connects>
<connect gate="G$1" pin="CS" pad="P$1"/>
<connect gate="G$1" pin="GND" pad="P$2"/>
<connect gate="G$1" pin="MISO" pad="P$3"/>
<connect gate="G$1" pin="MOSI" pad="P$4"/>
<connect gate="G$1" pin="SCK" pad="P$5"/>
<connect gate="G$1" pin="VCC" pad="P$6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ATMEGA128">
<gates>
<gate name="G$1" symbol="ATMEGA128" x="-20.32" y="15.24"/>
</gates>
<devices>
<device name="" package="ATMEGA128">
<connects>
<connect gate="G$1" pin="(ICP1)PD4" pad="P$29"/>
<connect gate="G$1" pin="(ICP3/INT7)PE7" pad="P$9"/>
<connect gate="G$1" pin="(MISO)PB3" pad="P$13"/>
<connect gate="G$1" pin="(MOSI)PB2" pad="P$12"/>
<connect gate="G$1" pin="(OC0)PB4" pad="P$14"/>
<connect gate="G$1" pin="(OC1A)PB5" pad="P$15"/>
<connect gate="G$1" pin="(OC1B)PB6" pad="P$16"/>
<connect gate="G$1" pin="(OC2/OC1C)PB7" pad="P$17"/>
<connect gate="G$1" pin="(OC3A/AIN1)PE3" pad="P$5"/>
<connect gate="G$1" pin="(OC3B/INT4)PE4" pad="P$6"/>
<connect gate="G$1" pin="(OC3C/INT5)PE5" pad="P$7"/>
<connect gate="G$1" pin="(RXD1/INT2)PD2" pad="P$27"/>
<connect gate="G$1" pin="(SCK)PB1" pad="P$11"/>
<connect gate="G$1" pin="(SCL/INT0)PD0" pad="P$25"/>
<connect gate="G$1" pin="(SDA/INT1)PD1" pad="P$26"/>
<connect gate="G$1" pin="(SS)PB0" pad="P$10"/>
<connect gate="G$1" pin="(T1)PD6" pad="P$31"/>
<connect gate="G$1" pin="(T2)PD7" pad="P$32"/>
<connect gate="G$1" pin="(T3/INT6)PE6" pad="P$8"/>
<connect gate="G$1" pin="(TXD0/PD0)PE1" pad="P$3"/>
<connect gate="G$1" pin="(TXD1/INT3)PD3" pad="P$28"/>
<connect gate="G$1" pin="(XCK0/AIN0)PE2" pad="P$4"/>
<connect gate="G$1" pin="(XCK1)PD5" pad="P$30"/>
<connect gate="G$1" pin="AREF" pad="P$62"/>
<connect gate="G$1" pin="AVCC" pad="P$64"/>
<connect gate="G$1" pin="GND" pad="P$22"/>
<connect gate="G$1" pin="GND1" pad="P$53"/>
<connect gate="G$1" pin="GND2" pad="P$63"/>
<connect gate="G$1" pin="PA0(AD0)" pad="P$51"/>
<connect gate="G$1" pin="PA1(AD1)" pad="P$50"/>
<connect gate="G$1" pin="PA2(AD2)" pad="P$49"/>
<connect gate="G$1" pin="PA3(AD3)" pad="P$48"/>
<connect gate="G$1" pin="PA4(AD4)" pad="P$47"/>
<connect gate="G$1" pin="PA5(AD5)" pad="P$46"/>
<connect gate="G$1" pin="PA6(AD6)" pad="P$45"/>
<connect gate="G$1" pin="PA7(AD7)" pad="P$44"/>
<connect gate="G$1" pin="PC0(A8)" pad="P$35"/>
<connect gate="G$1" pin="PC1(A9)" pad="P$36"/>
<connect gate="G$1" pin="PC2(A10)" pad="P$37"/>
<connect gate="G$1" pin="PC3(A11)" pad="P$38"/>
<connect gate="G$1" pin="PC4(A12)" pad="P$39"/>
<connect gate="G$1" pin="PC5(A13)" pad="P$40"/>
<connect gate="G$1" pin="PC6(A14)" pad="P$41"/>
<connect gate="G$1" pin="PC7(A15)" pad="P$42"/>
<connect gate="G$1" pin="PEN" pad="P$1"/>
<connect gate="G$1" pin="PF0(ADC0)" pad="P$61"/>
<connect gate="G$1" pin="PF1(ADC1)" pad="P$60"/>
<connect gate="G$1" pin="PF2(ADC2)" pad="P$59"/>
<connect gate="G$1" pin="PF3(ADC3)" pad="P$58"/>
<connect gate="G$1" pin="PF4(ADC4/TCK)" pad="P$57"/>
<connect gate="G$1" pin="PF5(ADC5/TMS)" pad="P$56"/>
<connect gate="G$1" pin="PF6(ADC6/TDO)" pad="P$55"/>
<connect gate="G$1" pin="PF7(ADC7/TDI)" pad="P$54"/>
<connect gate="G$1" pin="PG0(WR)" pad="P$33"/>
<connect gate="G$1" pin="PG1(RD)" pad="P$34"/>
<connect gate="G$1" pin="PG2(ALE)" pad="P$43"/>
<connect gate="G$1" pin="RESET" pad="P$20"/>
<connect gate="G$1" pin="RXD0/(PDI)PE0" pad="P$2"/>
<connect gate="G$1" pin="TOSC1/PG4" pad="P$19"/>
<connect gate="G$1" pin="TOSC2/PG3" pad="P$18"/>
<connect gate="G$1" pin="VCC" pad="P$21"/>
<connect gate="G$1" pin="VCC1" pad="P$52"/>
<connect gate="G$1" pin="XTAL1" pad="P$24"/>
<connect gate="G$1" pin="XTAL2" pad="P$23"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MCP42100">
<gates>
<gate name="G$1" symbol="MCP42100" x="-12.7" y="7.62"/>
</gates>
<devices>
<device name="" package="MCP42100">
<connects>
<connect gate="G$1" pin="CS" pad="P$1"/>
<connect gate="G$1" pin="PA0" pad="P$8"/>
<connect gate="G$1" pin="PA1" pad="P$7"/>
<connect gate="G$1" pin="PB0" pad="P$10"/>
<connect gate="G$1" pin="PB1" pad="P$5"/>
<connect gate="G$1" pin="PW0" pad="P$9"/>
<connect gate="G$1" pin="PW1" pad="P$6"/>
<connect gate="G$1" pin="RS" pad="P$11"/>
<connect gate="G$1" pin="SCK" pad="P$2"/>
<connect gate="G$1" pin="SHDN" pad="P$12"/>
<connect gate="G$1" pin="SI" pad="P$3"/>
<connect gate="G$1" pin="SO" pad="P$13"/>
<connect gate="G$1" pin="VDD" pad="P$14"/>
<connect gate="G$1" pin="VSS" pad="P$4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DS18B20">
<gates>
<gate name="G$1" symbol="DS18B20" x="-5.08" y="2.54"/>
</gates>
<devices>
<device name="" package="DS18B20">
<connects>
<connect gate="G$1" pin="DQ" pad="P$2"/>
<connect gate="G$1" pin="GND" pad="P$1"/>
<connect gate="G$1" pin="VDD" pad="P$3"/>
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
<symbol name="+5V">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="+3V3">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
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
<deviceset name="+5V" prefix="P+">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" prefix="+3V3">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
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
<library name="RHT03_DHT-22_AM2302">
<description>&lt;h1&gt;RHT03 / DHT-22 / AM2302 library&lt;/h1&gt;
&lt;p&gt;
Library with devices (schematic symbol and packages) for the RHT03 / DHT-22 / AM2302 digital relative humidity and tempearture sensor.&lt;br /&gt;
Warning: Package does not include tKeepout areas so that the part may optionally be placed on a riser with components underneath.  Please keep the package outline and bent-pin space in mind.
&lt;/p&gt;</description>
<packages>
<package name="RHT03_DHT-22">
<description>&lt;h1&gt;RHT03 / DHT-22&lt;/h1&gt;
&lt;p&gt;
Package for the RHT03 / DHT-22 relative humidity and temperature sensor.
&lt;/p&gt;</description>
<pad name="VDD" x="-3.81" y="0" drill="0.8" shape="octagon"/>
<pad name="DATA" x="-1.27" y="0" drill="0.8"/>
<pad name="NULL" x="1.27" y="0" drill="0.8"/>
<pad name="GND" x="3.81" y="0" drill="0.8"/>
<wire x1="-7.55" y1="2.5" x2="7.55" y2="2.5" width="0.127" layer="21"/>
<wire x1="-7.55" y1="-5.2" x2="7.55" y2="-5.2" width="0.127" layer="21"/>
<wire x1="-7.55" y1="2.5" x2="-7.55" y2="0.8" width="0.127" layer="21"/>
<wire x1="-7.55" y1="0.8" x2="-7.55" y2="-5.2" width="0.127" layer="21"/>
<wire x1="7.55" y1="2.5" x2="7.55" y2="0.8" width="0.127" layer="21"/>
<wire x1="7.55" y1="0.8" x2="7.55" y2="-5.2" width="0.127" layer="21"/>
<wire x1="-7.55" y1="0.8" x2="7.55" y2="0.8" width="0.127" layer="21"/>
<text x="-6" y="-4.5" size="1.27" layer="21" font="vector">&gt;NAME</text>
<text x="-6" y="-2.5" size="1.27" layer="21" font="vector">&gt;VALUE</text>
</package>
<package name="AM2302">
<description>&lt;h1&gt;AM2302&lt;/h1&gt;
&lt;p&gt;
Package for the AM2302 wired variant of the RHT03/DHT-22 relative humidity and temperature sensor.
&lt;/p&gt;</description>
<pad name="VDD" x="-3.81" y="0" drill="0.8" shape="octagon"/>
<pad name="DATA" x="-1.27" y="0" drill="0.8"/>
<pad name="NULL" x="1.27" y="0" drill="0.8"/>
<pad name="GND" x="3.81" y="0" drill="0.8"/>
<text x="-5.08" y="-2.667" size="1.27" layer="21" font="vector">&gt;NAME</text>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-0.635" width="0.127" layer="21"/>
<text x="-5.08" y="1.397" size="1.27" layer="21">&gt;VALUE</text>
</package>
<package name="RHT03_DHT-22/RA">
<description>&lt;h1&gt;RHT03 / DHT-22 - RIGHT ANGLE&lt;/h1&gt;
&lt;p&gt;
Right angle package for the RHT03 / DHT-22 relative humidity and temperature sensor.
&lt;/p&gt;</description>
<pad name="VDD" x="-3.81" y="0" drill="0.8" diameter="1.6764" shape="octagon"/>
<pad name="DATA" x="-1.27" y="0" drill="0.8" diameter="1.6764"/>
<pad name="NULL" x="1.27" y="0" drill="0.8" diameter="1.6764"/>
<pad name="GND" x="3.81" y="0" drill="0.8" diameter="1.6764"/>
<wire x1="-7.55" y1="2.5" x2="7.55" y2="2.5" width="0.127" layer="21"/>
<text x="-5.08" y="5.08" size="1.27" layer="21" font="vector" rot="R90">&gt;NAME</text>
<wire x1="-7.55" y1="2.5" x2="-7.55" y2="22.5" width="0.127" layer="21"/>
<wire x1="7.55" y1="2.5" x2="7.55" y2="22.5" width="0.127" layer="21"/>
<wire x1="-7.55" y1="22.5" x2="7.55" y2="22.5" width="0.127" layer="21"/>
<wire x1="-5.25" y1="27.1" x2="5.25" y2="27.1" width="0.127" layer="21"/>
<wire x1="7.55" y1="22.5" x2="5.25" y2="27.1" width="0.127" layer="21"/>
<wire x1="-7.55" y1="22.5" x2="-5.25" y2="27.1" width="0.127" layer="21"/>
<hole x="0" y="24.5" drill="3.25"/>
<wire x1="-3.81" y1="1.27" x2="-3.81" y2="2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="2.54" width="0.127" layer="21"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.27" x2="3.81" y2="2.54" width="0.127" layer="21"/>
<text x="0" y="12.5" size="1.27" layer="21" font="vector" rot="R90" align="center">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RHT03">
<description>&lt;h1&gt;RHT03 / DHT-22 / AM2302&lt;/h1&gt;
&lt;p&gt;
Symbol for the RHT03 / DHT-22 / AM2302 relative humidity and temperature sensor.
&lt;/p&gt;</description>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<pin name="VDD" x="-10.16" y="7.62" length="middle" direction="pwr"/>
<pin name="DATA" x="-10.16" y="2.54" length="middle"/>
<pin name="NULL" x="-10.16" y="-2.54" visible="pad" length="middle" direction="nc"/>
<pin name="GND" x="-10.16" y="-7.62" length="middle" direction="pwr"/>
<text x="-5.08" y="11.43" size="1.27" layer="94">&gt;NAME</text>
<text x="-5.08" y="-12.7" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RHT03_DHT-22_AM2302" prefix="U" uservalue="yes">
<description>&lt;h1&gt;RHT03 / DHT-22 / AM2302&lt;/h1&gt;
&lt;p&gt;
Packages and symbol for the RHT03 / DHT-22 relative humidity and temperature sensor.&lt;br /&gt;
Note: The AM2302 is a wired version of the DHT-22 which typically requires less clearance and is thus provided as a separate package.
&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RHT03" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RHT03_DHT-22">
<connects>
<connect gate="G$1" pin="DATA" pad="DATA"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NULL" pad="NULL"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SEN-10167"/>
</technology>
</technologies>
</device>
<device name="WIRED" package="AM2302">
<connects>
<connect gate="G$1" pin="DATA" pad="DATA"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NULL" pad="NULL"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SEN-10167"/>
</technology>
</technologies>
</device>
<device name="RA" package="RHT03_DHT-22/RA">
<connects>
<connect gate="G$1" pin="DATA" pad="DATA"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NULL" pad="NULL"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="SEN-10167"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="buzzer">
<description>&lt;b&gt;Speakers and Buzzers&lt;/b&gt;&lt;p&gt;
&lt;ul&gt;Distributors:
&lt;li&gt;Buerklin
&lt;li&gt;Spoerle
&lt;li&gt;Schukat
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="EB2209A">
<description>&lt;b&gt;BUZZER&lt;/b&gt;</description>
<wire x1="6.731" y1="3.937" x2="8.509" y2="3.937" width="0.1524" layer="21"/>
<wire x1="7.62" y1="4.826" x2="7.62" y2="3.048" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="11.303" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="10.668" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.54" width="0.1524" layer="21"/>
<circle x="7.62" y="3.937" radius="1.397" width="0.1524" layer="21"/>
<pad name="-" x="-7.493" y="0" drill="1.3208" diameter="2.54" shape="octagon"/>
<pad name="+" x="7.493" y="0" drill="1.3208" diameter="2.54" shape="octagon"/>
<text x="3.81" y="10.795" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-7.62" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="B">
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94" curve="180"/>
<wire x1="-2.54" y1="5.08" x2="1.27" y2="5.08" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="5.08" width="0.1524" layer="94"/>
<wire x1="1.27" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="1.397" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="0" y2="1.397" width="0.1524" layer="94"/>
<text x="-2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="0" size="1.778" layer="96">&gt;VALUE</text>
<pin name="-" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="+" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EB2209A" prefix="SG">
<description>&lt;b&gt;BUZZER&lt;/b&gt;&lt;p&gt; Source: Buerklin</description>
<gates>
<gate name="G$1" symbol="B" x="0" y="0"/>
</gates>
<devices>
<device name="" package="EB2209A">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
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
<library name="SparkFun-Electromechanical">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find anything that moves- switches, relays, buttons, potentiometers. Also, anything that goes on a board but isn't electrical in nature- screws, standoffs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1X03">
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<text x="-1.3462" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="SMALL_SERVO_MOTOR">
<wire x1="-12.7" y1="3.81" x2="-10.16" y2="3.81" width="0.254" layer="94" curve="-180"/>
<wire x1="-10.16" y1="-8.89" x2="-12.7" y2="-8.89" width="0.254" layer="94" curve="-180"/>
<wire x1="-7.62" y1="-1.27" x2="-7.62" y2="-3.81" width="0.254" layer="94" curve="-180"/>
<wire x1="-15.24" y1="-3.81" x2="-15.24" y2="-1.27" width="0.254" layer="94" curve="-180"/>
<wire x1="-15.24" y1="-1.27" x2="-12.7" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-1.27" x2="-12.7" y2="1.27" width="0.254" layer="94"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="3.81" width="0.254" layer="94"/>
<wire x1="-10.16" y1="3.81" x2="-10.16" y2="1.27" width="0.254" layer="94"/>
<wire x1="-10.16" y1="1.27" x2="-10.16" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-1.27" x2="-7.62" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-3.81" x2="-10.16" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-3.81" x2="-10.16" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-6.35" x2="-10.16" y2="-8.89" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-3.81" x2="-12.7" y2="-3.81" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-3.81" x2="-12.7" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-6.35" x2="-12.7" y2="-8.89" width="0.254" layer="94"/>
<wire x1="-12.7" y1="1.27" x2="-16.764" y2="1.27" width="0.254" layer="94"/>
<wire x1="-16.764" y1="1.27" x2="-17.78" y2="1.27" width="0.254" layer="94"/>
<wire x1="-17.78" y1="1.27" x2="-17.78" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-6.35" x2="-16.764" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-16.764" y1="-6.35" x2="-12.7" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-6.35" x2="-1.016" y2="-6.35" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-6.35" x2="0" y2="-6.35" width="0.254" layer="94"/>
<wire x1="0" y1="-6.35" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="-1.016" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.27" x2="-10.16" y2="1.27" width="0.254" layer="94"/>
<wire x1="-1.016" y1="1.27" x2="-1.016" y2="-6.35" width="0.1524" layer="94"/>
<wire x1="-16.764" y1="1.27" x2="-16.764" y2="-6.35" width="0.1524" layer="94"/>
<pin name="SIG" x="2.54" y="0" visible="pin" length="short" rot="R180"/>
<pin name="V+" x="2.54" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="GND" x="2.54" y="-5.08" visible="pin" length="short" rot="R180"/>
<text x="0.508" y="0.254" size="1.27" layer="94">W</text>
<text x="0.508" y="-2.286" size="1.27" layer="94">R</text>
<text x="0.508" y="-4.826" size="1.27" layer="94">B</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SMALL_SERVO" prefix="M">
<description>&lt;b&gt;Small servo motor&lt;/b&gt;&lt;br&gt;
This is the small servo used in the SIK.&lt;br&gt;
SKU: ROB-09065</description>
<gates>
<gate name="G$1" symbol="SMALL_SERVO_MOTOR" x="7.62" y="2.54"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="SIG" pad="1"/>
<connect gate="G$1" pin="V+" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-leotronics">
<description>&lt;b&gt;Connectors from Leotronics&lt;/b&gt;&lt;p&gt;
www.leotronics.co.uk&lt;br&gt;</description>
<packages>
<package name="1365-10">
<description>&lt;b&gt;DUAL ROW STRAIGHT HEADER&lt;/b&gt; 1364 SERIES. 1.27mm x 1.27mm. Without Fixing Post. SMT&lt;p&gt;
Source: http://www.leotronics.co.uk/Conexcon/Data%20Sheets/sec.%20A/1364ing.pdf</description>
<wire x1="-3.075" y1="1.63" x2="3.07" y2="1.63" width="0.2032" layer="21"/>
<wire x1="3.07" y1="1.63" x2="3.07" y2="-1.63" width="0.2032" layer="21"/>
<wire x1="3.07" y1="-1.63" x2="-3.075" y2="-1.63" width="0.2032" layer="21"/>
<wire x1="-3.075" y1="-1.63" x2="-3.075" y2="1.63" width="0.2032" layer="21"/>
<smd name="1" x="-2.54" y="-2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="2" x="-2.54" y="2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="3" x="-1.27" y="-2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="4" x="-1.27" y="2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="5" x="0" y="-2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="6" x="0" y="2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="7" x="1.27" y="-2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="8" x="1.27" y="2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="9" x="2.54" y="-2.95" dx="0.76" dy="2.4" layer="1"/>
<smd name="10" x="2.54" y="2.95" dx="0.76" dy="2.4" layer="1"/>
<text x="-3.81" y="-3.175" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="5.08" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.74" y1="1.725" x2="-2.34" y2="2.75" layer="51"/>
<rectangle x1="-2.74" y1="-2.75" x2="-2.34" y2="-1.725" layer="51" rot="R180"/>
<rectangle x1="-1.47" y1="1.725" x2="-1.07" y2="2.75" layer="51"/>
<rectangle x1="-1.47" y1="-2.75" x2="-1.07" y2="-1.725" layer="51" rot="R180"/>
<rectangle x1="-0.2" y1="1.725" x2="0.2" y2="2.75" layer="51"/>
<rectangle x1="-0.2" y1="-2.75" x2="0.2" y2="-1.725" layer="51" rot="R180"/>
<rectangle x1="1.07" y1="1.725" x2="1.47" y2="2.75" layer="51"/>
<rectangle x1="1.07" y1="-2.75" x2="1.47" y2="-1.725" layer="51" rot="R180"/>
<rectangle x1="2.34" y1="1.725" x2="2.74" y2="2.75" layer="51"/>
<rectangle x1="2.34" y1="-2.75" x2="2.74" y2="-1.725" layer="51" rot="R180"/>
</package>
</packages>
<symbols>
<symbol name="MVAL">
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="1.651" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M">
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.778" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1365-10" prefix="X">
<description>&lt;b&gt;DUAL ROW STRAIGHT HEADER&lt;/b&gt; 1364 SERIES. 1.27mm x 1.27mm. Without Fixing Post. SMT&lt;p&gt;
Source: http://www.leotronics.co.uk/Conexcon/Data%20Sheets/sec.%20A/1364ing.pdf</description>
<gates>
<gate name="-1" symbol="MVAL" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="MVAL" x="30.48" y="0" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="30.48" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="30.48" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-7" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-8" symbol="M" x="30.48" y="-7.62" addlevel="always" swaplevel="1"/>
<gate name="-9" symbol="M" x="0" y="-10.16" addlevel="always" swaplevel="1"/>
<gate name="-10" symbol="M" x="30.48" y="-10.16" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="1365-10">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
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
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="U$5" library="elements_cs2016" deviceset="74HC4051" device=""/>
<part name="U$6" library="elements_cs2016" deviceset="74HC4051" device=""/>
<part name="R6" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R7" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="U$7" library="elements_cs2016" deviceset="ADS1115" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="U1" library="SparkFun-DigitalIC" deviceset="TSL2561" device="T"/>
<part name="U2" library="SparkFun-DigitalIC" deviceset="TSL2561" device="T"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="R10" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
<part name="U4" library="RHT03_DHT-22_AM2302" deviceset="RHT03_DHT-22_AM2302" device="RA"/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="SG1" library="buzzer" deviceset="EB2209A" device=""/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="M1" library="SparkFun-Electromechanical" deviceset="SMALL_SERVO" device=""/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="+3V1" library="supply1" deviceset="+3V3" device=""/>
<part name="P+1" library="supply1" deviceset="+5V" device=""/>
<part name="+3V2" library="supply1" deviceset="+3V3" device=""/>
<part name="+3V3" library="supply1" deviceset="+3V3" device=""/>
<part name="P+3" library="supply1" deviceset="+5V" device=""/>
<part name="+3V4" library="supply1" deviceset="+3V3" device=""/>
<part name="+3V6" library="supply1" deviceset="+3V3" device=""/>
<part name="R5" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R11" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
<part name="R12" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="R13" library="ptc-ntc" deviceset="PTC-" device="SOD70"/>
<part name="R14" library="eagle-ltspice" deviceset="R" device="0207/10"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="P+4" library="supply1" deviceset="+5V" device=""/>
<part name="GND1_1" library="solpad" deviceset="LSP10" device=""/>
<part name="GND2_1" library="solpad" deviceset="LSP10" device=""/>
<part name="GND3_1" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_1_1" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_2_1" library="solpad" deviceset="LSP10" device=""/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="NTC1" library="solpad" deviceset="LSP10" device=""/>
<part name="NTC2" library="solpad" deviceset="LSP10" device=""/>
<part name="NTC3" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_3_1" library="solpad" deviceset="LSP10" device=""/>
<part name="3.3V_1" library="solpad" deviceset="LSP10" device=""/>
<part name="U$8" library="elements_cs2016" deviceset="STM32" device=""/>
<part name="U$9" library="elements_cs2016" deviceset="GPS" device=""/>
<part name="U$10" library="elements_cs2016" deviceset="MICRO_SD" device=""/>
<part name="P+5" library="supply1" deviceset="+5V" device=""/>
<part name="P+6" library="supply1" deviceset="+5V" device=""/>
<part name="GND1_2" library="solpad" deviceset="LSP10" device=""/>
<part name="GND2_2" library="solpad" deviceset="LSP10" device=""/>
<part name="GND3_2" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_1_2" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_2_2" library="solpad" deviceset="LSP10" device=""/>
<part name="5V_3_2" library="solpad" deviceset="LSP10" device=""/>
<part name="3.3V_2" library="solpad" deviceset="LSP10" device=""/>
<part name="3.3V_3" library="solpad" deviceset="LSP10" device=""/>
<part name="P+7" library="supply1" deviceset="+5V" device=""/>
<part name="P+8" library="supply1" deviceset="+5V" device=""/>
<part name="U$11" library="elements_cs2016" deviceset="ATMEGA128" device=""/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="P+9" library="supply1" deviceset="+5V" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="U$3" library="elements_cs2016" deviceset="MCP42100" device=""/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="P+2" library="supply1" deviceset="+5V" device=""/>
<part name="SCL1" library="solpad" deviceset="LSP10" device=""/>
<part name="SCL3" library="solpad" deviceset="LSP10" device=""/>
<part name="SDA1" library="solpad" deviceset="LSP10" device=""/>
<part name="SDA3" library="solpad" deviceset="LSP10" device=""/>
<part name="LEG1" library="solpad" deviceset="LSP10" device=""/>
<part name="LEG2" library="solpad" deviceset="LSP10" device=""/>
<part name="LEG3" library="solpad" deviceset="LSP10" device=""/>
<part name="X1" library="con-leotronics" deviceset="1365-10" device=""/>
<part name="X2" library="con-leotronics" deviceset="1365-10" device=""/>
<part name="U$2" library="elements_cs2016" deviceset="DS18B20" device=""/>
<part name="P+10" library="supply1" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="P+11" library="supply1" deviceset="+5V" device=""/>
<part name="P+12" library="supply1" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="78.74" y="-254" size="1.778" layer="95">ADS1115</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-358.14" y="-81.28"/>
<instance part="U3" gate="G$1" x="-5.08" y="-116.84"/>
<instance part="GND2" gate="1" x="-370.84" y="-68.58"/>
<instance part="GND3" gate="1" x="17.78" y="-127"/>
<instance part="U$5" gate="G$1" x="-350.52" y="-271.78" rot="R180"/>
<instance part="U$6" gate="G$1" x="-350.52" y="-223.52" rot="R180"/>
<instance part="R6" gate="G$1" x="-304.8" y="-185.42" rot="R90"/>
<instance part="R7" gate="G$1" x="-279.4" y="-185.42" rot="R90"/>
<instance part="U$7" gate="G$1" x="86.36" y="-274.32" rot="R90"/>
<instance part="GND7" gate="1" x="124.46" y="-304.8"/>
<instance part="U1" gate="G$1" x="-5.08" y="-50.8"/>
<instance part="U2" gate="G$1" x="-5.08" y="-83.82"/>
<instance part="GND8" gate="1" x="20.32" y="-93.98"/>
<instance part="GND9" gate="1" x="17.78" y="-60.96"/>
<instance part="R10" gate="G$1" x="160.02" y="-269.24"/>
<instance part="U4" gate="G$1" x="-40.64" y="-175.26"/>
<instance part="GND10" gate="1" x="-68.58" y="-187.96"/>
<instance part="SG1" gate="G$1" x="-86.36" y="-205.74"/>
<instance part="GND11" gate="1" x="-73.66" y="-213.36"/>
<instance part="M1" gate="G$1" x="-124.46" y="-198.12"/>
<instance part="GND12" gate="1" x="-111.76" y="-208.28"/>
<instance part="+3V1" gate="G$1" x="20.32" y="-38.1"/>
<instance part="P+1" gate="1" x="-68.58" y="-160.02"/>
<instance part="+3V2" gate="G$1" x="22.86" y="-71.12"/>
<instance part="+3V3" gate="G$1" x="20.32" y="-106.68"/>
<instance part="P+3" gate="1" x="-104.14" y="-193.04"/>
<instance part="+3V4" gate="G$1" x="114.3" y="-304.8" rot="R270"/>
<instance part="+3V6" gate="G$1" x="-388.62" y="-45.72"/>
<instance part="R5" gate="G$1" x="132.08" y="-269.24"/>
<instance part="R11" gate="G$1" x="172.72" y="-256.54"/>
<instance part="R12" gate="G$1" x="142.24" y="-256.54"/>
<instance part="R13" gate="G$1" x="187.96" y="-243.84"/>
<instance part="R14" gate="G$1" x="157.48" y="-243.84"/>
<instance part="GND6" gate="1" x="172.72" y="-274.32"/>
<instance part="P+4" gate="1" x="144.78" y="-228.6"/>
<instance part="GND1_1" gate="1" x="-83.82" y="-289.56" rot="R180"/>
<instance part="GND2_1" gate="1" x="-71.12" y="-289.56" rot="R180"/>
<instance part="GND3_1" gate="1" x="-58.42" y="-289.56" rot="R180"/>
<instance part="5V_1_1" gate="1" x="-45.72" y="-289.56" rot="R180"/>
<instance part="5V_2_1" gate="1" x="-33.02" y="-289.56" rot="R180"/>
<instance part="GND14" gate="1" x="185.42" y="-261.62"/>
<instance part="GND15" gate="1" x="200.66" y="-248.92"/>
<instance part="NTC1" gate="1" x="147.32" y="-269.24" rot="R270"/>
<instance part="NTC2" gate="1" x="157.48" y="-256.54" rot="R270"/>
<instance part="NTC3" gate="1" x="172.72" y="-243.84" rot="R270"/>
<instance part="5V_3_1" gate="1" x="-20.32" y="-289.56" rot="R180"/>
<instance part="3.3V_1" gate="1" x="-5.08" y="-289.56" rot="R180"/>
<instance part="U$8" gate="G$1" x="-271.78" y="-40.64"/>
<instance part="U$9" gate="G$1" x="-198.12" y="-43.18"/>
<instance part="U$10" gate="G$1" x="-287.02" y="-134.62" rot="R180"/>
<instance part="P+5" gate="1" x="-231.14" y="-22.86"/>
<instance part="P+6" gate="1" x="-248.92" y="-106.68"/>
<instance part="GND1_2" gate="1" x="-83.82" y="-307.34" rot="R180"/>
<instance part="GND2_2" gate="1" x="-71.12" y="-307.34" rot="R180"/>
<instance part="GND3_2" gate="1" x="-58.42" y="-307.34" rot="R180"/>
<instance part="5V_1_2" gate="1" x="-45.72" y="-307.34" rot="R180"/>
<instance part="5V_2_2" gate="1" x="-33.02" y="-307.34" rot="R180"/>
<instance part="5V_3_2" gate="1" x="-20.32" y="-307.34" rot="R180"/>
<instance part="3.3V_2" gate="1" x="7.62" y="-289.56" rot="R180"/>
<instance part="3.3V_3" gate="1" x="20.32" y="-289.56" rot="R180"/>
<instance part="P+7" gate="1" x="132.08" y="-238.76"/>
<instance part="P+8" gate="1" x="124.46" y="-251.46"/>
<instance part="U$11" gate="G$1" x="-147.32" y="-111.76"/>
<instance part="GND19" gate="1" x="-132.08" y="-182.88"/>
<instance part="GND21" gate="1" x="-154.94" y="-76.2"/>
<instance part="P+9" gate="1" x="-292.1" y="-152.4"/>
<instance part="GND4" gate="1" x="-271.78" y="-299.72"/>
<instance part="GND5" gate="1" x="-289.56" y="-93.98"/>
<instance part="GND13" gate="1" x="-248.92" y="-157.48"/>
<instance part="U$3" gate="G$1" x="-236.22" y="-251.46" rot="R180"/>
<instance part="GND16" gate="1" x="-292.1" y="-248.92"/>
<instance part="P+2" gate="1" x="-281.94" y="-241.3"/>
<instance part="SCL1" gate="1" x="-132.08" y="-289.56" rot="R180"/>
<instance part="SCL3" gate="1" x="-111.76" y="-289.56" rot="R180"/>
<instance part="SDA1" gate="1" x="-124.46" y="-289.56" rot="R180"/>
<instance part="SDA3" gate="1" x="-104.14" y="-289.56" rot="R180"/>
<instance part="LEG1" gate="1" x="-396.24" y="-226.06" rot="R90"/>
<instance part="LEG2" gate="1" x="-401.32" y="-231.14" rot="R90"/>
<instance part="LEG3" gate="1" x="-406.4" y="-236.22" rot="R90"/>
<instance part="X1" gate="-1" x="33.02" y="-167.64"/>
<instance part="X1" gate="-2" x="63.5" y="-167.64"/>
<instance part="X1" gate="-3" x="33.02" y="-170.18"/>
<instance part="X1" gate="-4" x="63.5" y="-170.18"/>
<instance part="X1" gate="-5" x="33.02" y="-172.72"/>
<instance part="X1" gate="-6" x="63.5" y="-172.72"/>
<instance part="X1" gate="-7" x="33.02" y="-175.26"/>
<instance part="X1" gate="-8" x="63.5" y="-175.26"/>
<instance part="X1" gate="-9" x="33.02" y="-177.8"/>
<instance part="X1" gate="-10" x="63.5" y="-177.8"/>
<instance part="X2" gate="-1" x="33.02" y="-203.2"/>
<instance part="X2" gate="-2" x="63.5" y="-203.2"/>
<instance part="X2" gate="-3" x="33.02" y="-205.74"/>
<instance part="X2" gate="-4" x="63.5" y="-205.74"/>
<instance part="X2" gate="-5" x="33.02" y="-208.28"/>
<instance part="X2" gate="-6" x="63.5" y="-208.28"/>
<instance part="X2" gate="-7" x="33.02" y="-210.82"/>
<instance part="X2" gate="-8" x="63.5" y="-210.82"/>
<instance part="X2" gate="-9" x="33.02" y="-213.36"/>
<instance part="X2" gate="-10" x="63.5" y="-213.36"/>
<instance part="U$2" gate="G$1" x="-167.64" y="-182.88" rot="R180"/>
<instance part="P+10" gate="1" x="-157.48" y="-167.64"/>
<instance part="GND1" gate="1" x="-157.48" y="-187.96"/>
<instance part="P+11" gate="1" x="-114.3" y="-63.5"/>
<instance part="P+12" gate="1" x="-137.16" y="-172.72"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$13" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="E"/>
<wire x1="-325.12" y1="-215.9" x2="-312.42" y2="-215.9" width="0.1524" layer="91"/>
<label x="-317.5" y="-218.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA0(AD0)"/>
<wire x1="-111.76" y1="-83.82" x2="-111.76" y2="-71.12" width="0.1524" layer="91"/>
<label x="-114.3" y="-71.12" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="E"/>
<wire x1="-325.12" y1="-264.16" x2="-312.42" y2="-264.16" width="0.1524" layer="91"/>
<label x="-317.5" y="-266.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA1(AD1)"/>
<wire x1="-109.22" y1="-83.82" x2="-109.22" y2="-71.12" width="0.1524" layer="91"/>
<label x="-111.76" y="-71.12" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="ADDR"/>
<wire x1="101.6" y1="-284.48" x2="119.38" y2="-284.48" width="0.1524" layer="91"/>
<label x="119.38" y="-281.94" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA6(AD6)"/>
<wire x1="-86.36" y1="-111.76" x2="-73.66" y2="-111.76" width="0.1524" layer="91"/>
<label x="-78.74" y="-111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="INT"/>
<wire x1="-20.32" y1="-121.92" x2="-27.94" y2="-121.92" width="0.1524" layer="91"/>
<label x="-27.94" y="-124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(OC3B/INT4)PE4"/>
<wire x1="-165.1" y1="-116.84" x2="-180.34" y2="-116.84" width="0.1524" layer="91"/>
<label x="-180.34" y="-116.84" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="INT"/>
<wire x1="-20.32" y1="-88.9" x2="-30.48" y2="-88.9" width="0.1524" layer="91"/>
<label x="-30.48" y="-91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(OC3C/INT5)PE5"/>
<wire x1="-165.1" y1="-119.38" x2="-180.34" y2="-119.38" width="0.1524" layer="91"/>
<label x="-180.34" y="-119.38" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="INT"/>
<wire x1="-20.32" y1="-55.88" x2="-30.48" y2="-55.88" width="0.1524" layer="91"/>
<label x="-30.48" y="-58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(T3/INT6)PE6"/>
<wire x1="-165.1" y1="-121.92" x2="-180.34" y2="-121.92" width="0.1524" layer="91"/>
<label x="-180.34" y="-121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U4" gate="G$1" pin="DATA"/>
<pinref part="U$11" gate="G$1" pin="(T2)PD7"/>
<wire x1="-106.68" y1="-167.64" x2="-106.68" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="-106.68" y1="-172.72" x2="-50.8" y2="-172.72" width="0.1524" layer="91"/>
<label x="-91.44" y="-170.18" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="139.7" y1="-269.24" x2="137.16" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-269.24" x2="139.7" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="A0"/>
<wire x1="101.6" y1="-274.32" x2="139.7" y2="-274.32" width="0.1524" layer="91"/>
<wire x1="139.7" y1="-269.24" x2="144.78" y2="-269.24" width="0.1524" layer="91"/>
<junction x="139.7" y="-269.24"/>
<pinref part="NTC1" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="A1"/>
<wire x1="101.6" y1="-269.24" x2="116.84" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-269.24" x2="116.84" y2="-259.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-259.08" x2="149.86" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="149.86" y1="-256.54" x2="147.32" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-259.08" x2="149.86" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="149.86" y1="-256.54" x2="154.94" y2="-256.54" width="0.1524" layer="91"/>
<junction x="149.86" y="-256.54"/>
<pinref part="NTC2" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="165.1" y1="-243.84" x2="162.56" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-243.84" x2="165.1" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-246.38" x2="111.76" y2="-246.38" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-246.38" x2="111.76" y2="-264.16" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="A2"/>
<wire x1="111.76" y1="-264.16" x2="101.6" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-243.84" x2="170.18" y2="-243.84" width="0.1524" layer="91"/>
<junction x="165.1" y="-243.84"/>
<pinref part="NTC3" gate="1" pin="MP"/>
</segment>
</net>
<net name="5V21" class="0">
<segment>
<pinref part="5V_2_1" gate="1" pin="MP"/>
<wire x1="-33.02" y1="-287.02" x2="-33.02" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="VDD"/>
<wire x1="-50.8" y1="-167.64" x2="-68.58" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-167.64" x2="-68.58" y2="-162.56" width="0.1524" layer="91"/>
<pinref part="P+1" gate="1" pin="+5V"/>
<label x="-63.5" y="-167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="137.16" y1="-256.54" x2="132.08" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="132.08" y1="-256.54" x2="132.08" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="P+7" gate="1" pin="+5V"/>
<label x="134.62" y="-254" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="5V31" class="0">
<segment>
<pinref part="5V_3_1" gate="1" pin="MP"/>
<wire x1="-20.32" y1="-287.02" x2="-20.32" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="5V"/>
<wire x1="-243.84" y1="-40.64" x2="-231.14" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="-40.64" x2="-231.14" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="P+5" gate="1" pin="+5V"/>
<label x="-228.6" y="-33.02" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="144.78" y1="-243.84" x2="152.4" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-243.84" x2="144.78" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="P+4" gate="1" pin="+5V"/>
<label x="147.32" y="-241.3" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="3.3V_1" class="0">
<segment>
<pinref part="3.3V_1" gate="1" pin="MP"/>
<wire x1="-5.08" y1="-287.02" x2="-5.08" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="-111.76" x2="20.32" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-111.76" x2="20.32" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="+3V3" gate="G$1" pin="+3V3"/>
<label x="22.86" y="-111.76" size="1.778" layer="95"/>
<pinref part="U3" gate="G$1" pin="ADDR"/>
<wire x1="10.16" y1="-116.84" x2="20.32" y2="-116.84" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-116.84" x2="20.32" y2="-111.76" width="0.1524" layer="91"/>
<junction x="20.32" y="-111.76"/>
</segment>
</net>
<net name="TX2" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B7"/>
<wire x1="-243.84" y1="-48.26" x2="-210.82" y2="-48.26" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="TX"/>
</segment>
<segment>
<pinref part="X1" gate="-6" pin="S"/>
<wire x1="60.96" y1="-172.72" x2="50.8" y2="-172.72" width="0.1524" layer="91"/>
<label x="50.8" y="-172.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX2" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B6"/>
<wire x1="-243.84" y1="-50.8" x2="-220.98" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-220.98" y1="-50.8" x2="-220.98" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="U$9" gate="G$1" pin="RX"/>
<wire x1="-220.98" y1="-43.18" x2="-210.82" y2="-43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="X1" gate="-4" pin="S"/>
<wire x1="60.96" y1="-170.18" x2="50.8" y2="-170.18" width="0.1524" layer="91"/>
<label x="50.8" y="-170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND11" class="0">
<segment>
<pinref part="GND1_1" gate="1" pin="MP"/>
<wire x1="-83.82" y1="-287.02" x2="-83.82" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="165.1" y1="-269.24" x2="172.72" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-269.24" x2="172.72" y2="-271.78" width="0.1524" layer="91"/>
<label x="177.8" y="-276.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="GND"/>
<wire x1="-325.12" y1="-205.74" x2="-320.04" y2="-205.74" width="0.1524" layer="91"/>
<wire x1="-320.04" y1="-210.82" x2="-320.04" y2="-205.74" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="VEE"/>
<wire x1="-325.12" y1="-210.82" x2="-320.04" y2="-210.82" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VEE"/>
<wire x1="-307.34" y1="-205.74" x2="-307.34" y2="-254" width="0.1524" layer="91"/>
<wire x1="-325.12" y1="-259.08" x2="-320.04" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="-325.12" y1="-254" x2="-320.04" y2="-254" width="0.1524" layer="91"/>
<wire x1="-320.04" y1="-259.08" x2="-320.04" y2="-254" width="0.1524" layer="91"/>
<junction x="-320.04" y="-254"/>
<wire x1="-307.34" y1="-254" x2="-320.04" y2="-254" width="0.1524" layer="91"/>
<wire x1="-320.04" y1="-205.74" x2="-307.34" y2="-205.74" width="0.1524" layer="91"/>
<junction x="-320.04" y="-205.74"/>
<wire x1="-307.34" y1="-254" x2="-307.34" y2="-279.4" width="0.1524" layer="91"/>
<junction x="-307.34" y="-254"/>
<wire x1="-307.34" y1="-279.4" x2="-307.34" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="-287.02" x2="-271.78" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-287.02" x2="-307.34" y2="-287.02" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-287.02" x2="-271.78" y2="-297.18" width="0.1524" layer="91"/>
<junction x="-271.78" y="-287.02"/>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="U$3" gate="G$1" pin="VSS"/>
<wire x1="-231.14" y1="-243.84" x2="-215.9" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="-215.9" y1="-243.84" x2="-215.9" y2="-287.02" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="Z"/>
<wire x1="-325.12" y1="-279.4" x2="-307.34" y2="-279.4" width="0.1524" layer="91"/>
<junction x="-307.34" y="-279.4"/>
<pinref part="U$6" gate="G$1" pin="S0"/>
<wire x1="-368.3" y1="-215.9" x2="-378.46" y2="-215.9" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="S0"/>
<wire x1="-368.3" y1="-264.16" x2="-378.46" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="-378.46" y1="-215.9" x2="-378.46" y2="-264.16" width="0.1524" layer="91"/>
<wire x1="-378.46" y1="-215.9" x2="-378.46" y2="-200.66" width="0.1524" layer="91"/>
<junction x="-378.46" y="-215.9"/>
<wire x1="-378.46" y1="-200.66" x2="-320.04" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="-320.04" y1="-200.66" x2="-320.04" y2="-205.74" width="0.1524" layer="91"/>
<label x="-269.24" y="-297.18" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="-292.1" y1="-246.38" x2="-292.1" y2="-238.76" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="PB0"/>
<wire x1="-292.1" y1="-238.76" x2="-264.16" y2="-238.76" width="0.1524" layer="91"/>
<label x="-292.1" y="-246.38" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND21" class="0">
<segment>
<pinref part="GND2_1" gate="1" pin="MP"/>
<wire x1="-71.12" y1="-287.02" x2="-71.12" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-365.76" y1="-66.04" x2="-370.84" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="-50.8" y1="-182.88" x2="-68.58" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="-182.88" x2="-68.58" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="GND10" gate="1" pin="GND"/>
<label x="-68.58" y="-182.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="177.8" y1="-256.54" x2="185.42" y2="-256.54" width="0.1524" layer="91"/>
<wire x1="185.42" y1="-256.54" x2="185.42" y2="-259.08" width="0.1524" layer="91"/>
<pinref part="GND14" gate="1" pin="GND"/>
<label x="190.5" y="-264.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SG1" gate="G$1" pin="-"/>
<wire x1="-81.28" y1="-208.28" x2="-73.66" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-208.28" x2="-73.66" y2="-210.82" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
<label x="-71.12" y="-210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="-2" pin="S"/>
<wire x1="60.96" y1="-167.64" x2="50.8" y2="-167.64" width="0.1524" layer="91"/>
<label x="50.8" y="-167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="-10" pin="S"/>
<wire x1="60.96" y1="-213.36" x2="50.8" y2="-213.36" width="0.1524" layer="91"/>
<label x="50.8" y="-213.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND31" class="0">
<segment>
<pinref part="GND3_1" gate="1" pin="MP"/>
<wire x1="-58.42" y1="-287.02" x2="-58.42" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$9" gate="G$1" pin="GND"/>
<pinref part="U$8" gate="G$1" pin="GNDD"/>
<wire x1="-243.84" y1="-38.1" x2="-223.52" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-210.82" y1="-53.34" x2="-223.52" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="-223.52" y1="-53.34" x2="-223.52" y2="-38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="193.04" y1="-243.84" x2="200.66" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="200.66" y1="-243.84" x2="200.66" y2="-246.38" width="0.1524" layer="91"/>
<pinref part="GND15" gate="1" pin="GND"/>
<label x="205.74" y="-251.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="GND"/>
<wire x1="-256.54" y1="-144.78" x2="-248.92" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="-248.92" y1="-144.78" x2="-248.92" y2="-154.94" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
<label x="-246.38" y="-152.4" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND22" class="0">
<segment>
<pinref part="GND2_2" gate="1" pin="MP"/>
<wire x1="-71.12" y1="-304.8" x2="-71.12" y2="-297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="-88.9" x2="20.32" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-88.9" x2="20.32" y2="-91.44" width="0.1524" layer="91"/>
<pinref part="GND8" gate="1" pin="GND"/>
<label x="7.62" y="-96.52" size="1.778" layer="95"/>
<pinref part="U2" gate="G$1" pin="ADDR"/>
<wire x1="10.16" y1="-83.82" x2="20.32" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-88.9" x2="20.32" y2="-83.82" width="0.1524" layer="91"/>
<junction x="20.32" y="-88.9"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="101.6" y1="-299.72" x2="124.46" y2="-299.72" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-299.72" x2="124.46" y2="-302.26" width="0.1524" layer="91"/>
<pinref part="GND7" gate="1" pin="GND"/>
<label x="116.84" y="-299.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="GND"/>
<wire x1="-132.08" y1="-167.64" x2="-132.08" y2="-180.34" width="0.1524" layer="91"/>
<pinref part="GND19" gate="1" pin="GND"/>
<label x="-129.54" y="-180.34" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="GND32" class="0">
<segment>
<pinref part="GND3_2" gate="1" pin="MP"/>
<wire x1="-58.42" y1="-304.8" x2="-58.42" y2="-297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="-55.88" x2="17.78" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-55.88" x2="17.78" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
<label x="5.08" y="-63.5" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-289.56" y1="-81.28" x2="-289.56" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="GN"/>
<wire x1="-281.94" y1="-81.28" x2="-289.56" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$8" gate="G$1" pin="G"/>
<wire x1="-289.56" y1="-83.82" x2="-281.94" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-289.56" y1="-83.82" x2="-289.56" y2="-91.44" width="0.1524" layer="91"/>
<junction x="-289.56" y="-83.82"/>
<pinref part="GND5" gate="1" pin="GND"/>
<label x="-292.1" y="-91.44" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="5V12" class="0">
<segment>
<pinref part="5V_1_2" gate="1" pin="MP"/>
<wire x1="-45.72" y1="-304.8" x2="-45.72" y2="-297.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="5V22" class="0">
<segment>
<pinref part="5V_2_2" gate="1" pin="MP"/>
<wire x1="-33.02" y1="-304.8" x2="-33.02" y2="-297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="VCC1"/>
<wire x1="-114.3" y1="-83.82" x2="-114.3" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="P+11" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="VCC"/>
<wire x1="-134.62" y1="-167.64" x2="-134.62" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-134.62" y1="-177.8" x2="-137.16" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-137.16" y1="-177.8" x2="-137.16" y2="-175.26" width="0.1524" layer="91"/>
<pinref part="P+12" gate="1" pin="+5V"/>
</segment>
</net>
<net name="5V32" class="0">
<segment>
<pinref part="5V_3_2" gate="1" pin="MP"/>
<wire x1="-20.32" y1="-304.8" x2="-20.32" y2="-297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$10" gate="G$1" pin="VCC"/>
<wire x1="-256.54" y1="-139.7" x2="-248.92" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="-248.92" y1="-139.7" x2="-248.92" y2="-109.22" width="0.1524" layer="91"/>
<pinref part="P+6" gate="1" pin="+5V"/>
<label x="-246.38" y="-116.84" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="5V11" class="0">
<segment>
<pinref part="5V_1_1" gate="1" pin="MP"/>
<wire x1="-45.72" y1="-287.02" x2="-45.72" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="127" y1="-269.24" x2="124.46" y2="-269.24" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-269.24" x2="124.46" y2="-254" width="0.1524" layer="91"/>
<pinref part="P+8" gate="1" pin="+5V"/>
<label x="127" y="-266.7" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="-304.8" y1="-180.34" x2="-304.8" y2="-175.26" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="-304.8" y1="-175.26" x2="-292.1" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="-292.1" y1="-175.26" x2="-279.4" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="-279.4" y1="-175.26" x2="-279.4" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="-292.1" y1="-154.94" x2="-292.1" y2="-175.26" width="0.1524" layer="91"/>
<junction x="-292.1" y="-175.26"/>
<pinref part="P+9" gate="1" pin="+5V"/>
<pinref part="U$6" gate="G$1" pin="VCC"/>
<wire x1="-383.54" y1="-241.3" x2="-368.3" y2="-241.3" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VCC"/>
<wire x1="-383.54" y1="-241.3" x2="-383.54" y2="-289.56" width="0.1524" layer="91"/>
<wire x1="-383.54" y1="-289.56" x2="-368.3" y2="-289.56" width="0.1524" layer="91"/>
<junction x="-383.54" y="-241.3"/>
<wire x1="-383.54" y1="-241.3" x2="-383.54" y2="-175.26" width="0.1524" layer="91"/>
<wire x1="-383.54" y1="-175.26" x2="-304.8" y2="-175.26" width="0.1524" layer="91"/>
<junction x="-304.8" y="-175.26"/>
<label x="-289.56" y="-170.18" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="M1" gate="G$1" pin="V+"/>
<wire x1="-121.92" y1="-200.66" x2="-104.14" y2="-200.66" width="0.1524" layer="91"/>
<wire x1="-104.14" y1="-200.66" x2="-104.14" y2="-195.58" width="0.1524" layer="91"/>
<pinref part="P+3" gate="1" pin="+5V"/>
<label x="-109.22" y="-203.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="VDD"/>
<wire x1="-264.16" y1="-259.08" x2="-276.86" y2="-259.08" width="0.1524" layer="91"/>
<wire x1="-276.86" y1="-259.08" x2="-276.86" y2="-248.92" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="SHDN"/>
<wire x1="-276.86" y1="-248.92" x2="-264.16" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="-276.86" y1="-248.92" x2="-276.86" y2="-243.84" width="0.1524" layer="91"/>
<junction x="-276.86" y="-248.92"/>
<pinref part="U$3" gate="G$1" pin="RS"/>
<wire x1="-276.86" y1="-243.84" x2="-264.16" y2="-243.84" width="0.1524" layer="91"/>
<wire x1="-276.86" y1="-248.92" x2="-281.94" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="-281.94" y1="-248.92" x2="-281.94" y2="-243.84" width="0.1524" layer="91"/>
<pinref part="P+2" gate="1" pin="+5V"/>
<label x="-279.4" y="-251.46" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="3.3V_2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VS"/>
<wire x1="-365.76" y1="-81.28" x2="-388.62" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VIO"/>
<wire x1="-388.62" y1="-81.28" x2="-388.62" y2="-58.42" width="0.1524" layer="91"/>
<wire x1="-388.62" y1="-58.42" x2="-365.76" y2="-58.42" width="0.1524" layer="91"/>
<junction x="-388.62" y="-58.42"/>
<pinref part="+3V6" gate="G$1" pin="+3V3"/>
<wire x1="-388.62" y1="-58.42" x2="-388.62" y2="-48.26" width="0.1524" layer="91"/>
<label x="-373.38" y="-55.88" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="3.3V_2" gate="1" pin="MP"/>
<wire x1="7.62" y1="-287.02" x2="7.62" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="-78.74" x2="22.86" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="22.86" y1="-78.74" x2="22.86" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="+3V2" gate="G$1" pin="+3V3"/>
<label x="25.4" y="-78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="VDD"/>
<wire x1="101.6" y1="-304.8" x2="111.76" y2="-304.8" width="0.1524" layer="91"/>
<pinref part="+3V4" gate="G$1" pin="+3V3"/>
<label x="101.6" y="-307.34" size="1.778" layer="95"/>
</segment>
</net>
<net name="GND12" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="10.16" y1="-121.92" x2="17.78" y2="-121.92" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-121.92" x2="17.78" y2="-124.46" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
<label x="5.08" y="-129.54" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="GND1_2" gate="1" pin="MP"/>
<wire x1="-83.82" y1="-304.8" x2="-83.82" y2="-297.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="M1" gate="G$1" pin="GND"/>
<wire x1="-121.92" y1="-203.2" x2="-111.76" y2="-203.2" width="0.1524" layer="91"/>
<wire x1="-111.76" y1="-203.2" x2="-111.76" y2="-205.74" width="0.1524" layer="91"/>
<pinref part="GND12" gate="1" pin="GND"/>
<label x="-121.92" y="-205.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="3.3V_3" class="0">
<segment>
<pinref part="3.3V_3" gate="1" pin="MP"/>
<wire x1="20.32" y1="-287.02" x2="20.32" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD"/>
<wire x1="10.16" y1="-45.72" x2="20.32" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-45.72" x2="20.32" y2="-40.64" width="0.1524" layer="91"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
<label x="22.86" y="-45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="3.3V"/>
<pinref part="U$9" gate="G$1" pin="VCC"/>
<wire x1="-210.82" y1="-38.1" x2="-220.98" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="-220.98" y1="-38.1" x2="-220.98" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="-243.84" y1="-35.56" x2="-220.98" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SOIL2" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="-279.4" y1="-190.5" x2="-279.4" y2="-195.58" width="0.1524" layer="91"/>
<wire x1="-279.4" y1="-195.58" x2="-264.16" y2="-195.58" width="0.1524" layer="91"/>
<junction x="-279.4" y="-195.58"/>
<pinref part="U$3" gate="G$1" pin="PW0"/>
<wire x1="-279.4" y1="-233.68" x2="-279.4" y2="-195.58" width="0.1524" layer="91"/>
<wire x1="-264.16" y1="-233.68" x2="-279.4" y2="-233.68" width="0.1524" layer="91"/>
<label x="-271.78" y="-195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA3(AD3)"/>
<wire x1="-86.36" y1="-104.14" x2="-73.66" y2="-104.14" width="0.1524" layer="91"/>
<label x="-78.74" y="-104.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="Y2"/>
<wire x1="-368.3" y1="-236.22" x2="-398.78" y2="-236.22" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="Y2"/>
<wire x1="-368.3" y1="-284.48" x2="-398.78" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="-398.78" y1="-236.22" x2="-398.78" y2="-284.48" width="0.1524" layer="91"/>
<wire x1="-398.78" y1="-236.22" x2="-403.86" y2="-236.22" width="0.1524" layer="91"/>
<junction x="-398.78" y="-236.22"/>
<pinref part="LEG3" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="Y0"/>
<wire x1="-368.3" y1="-274.32" x2="-388.62" y2="-274.32" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="Y0"/>
<wire x1="-368.3" y1="-226.06" x2="-388.62" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="-388.62" y1="-274.32" x2="-388.62" y2="-226.06" width="0.1524" layer="91"/>
<wire x1="-388.62" y1="-226.06" x2="-393.7" y2="-226.06" width="0.1524" layer="91"/>
<junction x="-388.62" y="-226.06"/>
<pinref part="LEG1" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="Y1"/>
<wire x1="-368.3" y1="-279.4" x2="-393.7" y2="-279.4" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="Y1"/>
<wire x1="-368.3" y1="-231.14" x2="-393.7" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="-393.7" y1="-279.4" x2="-393.7" y2="-231.14" width="0.1524" layer="91"/>
<wire x1="-393.7" y1="-231.14" x2="-398.78" y2="-231.14" width="0.1524" layer="91"/>
<junction x="-393.7" y="-231.14"/>
<pinref part="LEG2" gate="1" pin="MP"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="CS"/>
<wire x1="-231.14" y1="-259.08" x2="-203.2" y2="-259.08" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="-259.08" x2="-203.2" y2="-142.24" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="(OC1B)PB6"/>
<wire x1="-203.2" y1="-142.24" x2="-165.1" y2="-142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="SI"/>
<pinref part="U$10" gate="G$1" pin="MOSI"/>
<wire x1="-256.54" y1="-129.54" x2="-243.84" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="-243.84" y1="-129.54" x2="-243.84" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="(MOSI)PB2"/>
<wire x1="-243.84" y1="-132.08" x2="-231.14" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="-132.08" x2="-208.28" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="-132.08" x2="-165.1" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="-248.92" x2="-208.28" y2="-248.92" width="0.1524" layer="91"/>
<wire x1="-208.28" y1="-248.92" x2="-208.28" y2="-132.08" width="0.1524" layer="91"/>
<junction x="-208.28" y="-132.08"/>
<pinref part="U$8" gate="G$1" pin="B15"/>
<wire x1="-231.14" y1="-76.2" x2="-243.84" y2="-76.2" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="-132.08" x2="-231.14" y2="-76.2" width="0.1524" layer="91"/>
<junction x="-231.14" y="-132.08"/>
</segment>
<segment>
<pinref part="X1" gate="-7" pin="S"/>
<wire x1="30.48" y1="-175.26" x2="20.32" y2="-175.26" width="0.1524" layer="91"/>
<label x="20.32" y="-175.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B13"/>
<wire x1="-243.84" y1="-81.28" x2="-236.22" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="SCK"/>
<pinref part="U$10" gate="G$1" pin="SCK"/>
<wire x1="-256.54" y1="-124.46" x2="-241.3" y2="-124.46" width="0.1524" layer="91"/>
<wire x1="-241.3" y1="-124.46" x2="-241.3" y2="-129.54" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="(SCK)PB1"/>
<wire x1="-241.3" y1="-129.54" x2="-236.22" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="-236.22" y1="-129.54" x2="-205.74" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="-205.74" y1="-129.54" x2="-165.1" y2="-129.54" width="0.1524" layer="91"/>
<wire x1="-231.14" y1="-254" x2="-205.74" y2="-254" width="0.1524" layer="91"/>
<wire x1="-205.74" y1="-254" x2="-205.74" y2="-129.54" width="0.1524" layer="91"/>
<junction x="-205.74" y="-129.54"/>
<wire x1="-236.22" y1="-81.28" x2="-236.22" y2="-129.54" width="0.1524" layer="91"/>
<junction x="-236.22" y="-129.54"/>
</segment>
<segment>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="30.48" y1="-172.72" x2="20.32" y2="-172.72" width="0.1524" layer="91"/>
<label x="20.32" y="-172.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B14"/>
<wire x1="-243.84" y1="-78.74" x2="-233.68" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="SO"/>
<wire x1="-264.16" y1="-254" x2="-271.78" y2="-254" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-254" x2="-271.78" y2="-223.52" width="0.1524" layer="91"/>
<pinref part="U$10" gate="G$1" pin="MISO"/>
<pinref part="U$11" gate="G$1" pin="(MISO)PB3"/>
<wire x1="-256.54" y1="-134.62" x2="-233.68" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="-233.68" y1="-134.62" x2="-210.82" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="-210.82" y1="-134.62" x2="-165.1" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="-271.78" y1="-223.52" x2="-210.82" y2="-223.52" width="0.1524" layer="91"/>
<wire x1="-210.82" y1="-223.52" x2="-210.82" y2="-134.62" width="0.1524" layer="91"/>
<junction x="-210.82" y="-134.62"/>
<wire x1="-233.68" y1="-78.74" x2="-233.68" y2="-134.62" width="0.1524" layer="91"/>
<junction x="-233.68" y="-134.62"/>
</segment>
<segment>
<pinref part="X1" gate="-9" pin="S"/>
<wire x1="30.48" y1="-177.8" x2="20.32" y2="-177.8" width="0.1524" layer="91"/>
<label x="20.32" y="-177.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="B12"/>
<wire x1="-243.84" y1="-83.82" x2="-238.76" y2="-83.82" width="0.1524" layer="91"/>
<wire x1="-238.76" y1="-83.82" x2="-238.76" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="(OC1A)PB5"/>
<wire x1="-238.76" y1="-139.7" x2="-165.1" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$10" gate="G$1" pin="CS"/>
<wire x1="-256.54" y1="-119.38" x2="-246.38" y2="-119.38" width="0.1524" layer="91"/>
<wire x1="-246.38" y1="-119.38" x2="-246.38" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="(OC0)PB4"/>
<wire x1="-246.38" y1="-137.16" x2="-165.1" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SCL1" class="0">
<segment>
<pinref part="SCL1" gate="1" pin="MP"/>
<wire x1="-132.08" y1="-287.02" x2="-132.08" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SCL"/>
<wire x1="-20.32" y1="-111.76" x2="-27.94" y2="-111.76" width="0.1524" layer="91"/>
<label x="-27.94" y="-109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="-3" pin="S"/>
<wire x1="30.48" y1="-170.18" x2="20.32" y2="-170.18" width="0.1524" layer="91"/>
<label x="20.32" y="-170.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA1" class="0">
<segment>
<pinref part="SDA1" gate="1" pin="MP"/>
<wire x1="-124.46" y1="-287.02" x2="-124.46" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SDA"/>
<wire x1="-20.32" y1="-114.3" x2="-27.94" y2="-114.3" width="0.1524" layer="91"/>
<label x="-27.94" y="-116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="-1" pin="S"/>
<wire x1="30.48" y1="-167.64" x2="20.32" y2="-167.64" width="0.1524" layer="91"/>
<label x="20.32" y="-167.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL2" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="SCL"/>
<wire x1="-20.32" y1="-78.74" x2="-30.48" y2="-78.74" width="0.1524" layer="91"/>
<label x="-30.48" y="-76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="SCL"/>
<wire x1="101.6" y1="-294.64" x2="111.76" y2="-294.64" width="0.1524" layer="91"/>
<label x="111.76" y="-294.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(SCL/INT0)PD0"/>
<wire x1="-124.46" y1="-167.64" x2="-124.46" y2="-177.8" width="0.1524" layer="91"/>
<label x="-124.46" y="-177.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SDA2" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="SDA"/>
<wire x1="-20.32" y1="-81.28" x2="-30.48" y2="-81.28" width="0.1524" layer="91"/>
<label x="-30.48" y="-83.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$7" gate="G$1" pin="SDA"/>
<wire x1="101.6" y1="-289.56" x2="106.68" y2="-289.56" width="0.1524" layer="91"/>
<label x="106.68" y="-289.56" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(SDA/INT1)PD1"/>
<wire x1="-121.92" y1="-167.64" x2="-121.92" y2="-177.8" width="0.1524" layer="91"/>
<label x="-121.92" y="-177.8" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="SCL3" class="0">
<segment>
<pinref part="SCL3" gate="1" pin="MP"/>
<wire x1="-111.76" y1="-287.02" x2="-111.76" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SCL"/>
<wire x1="-20.32" y1="-45.72" x2="-30.48" y2="-45.72" width="0.1524" layer="91"/>
<label x="-30.48" y="-43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="SDA3" class="0">
<segment>
<pinref part="SDA3" gate="1" pin="MP"/>
<wire x1="-104.14" y1="-287.02" x2="-104.14" y2="-281.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="SDA"/>
<wire x1="-20.32" y1="-48.26" x2="-30.48" y2="-48.26" width="0.1524" layer="91"/>
<label x="-30.48" y="-50.8" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="(XCK1)PD5"/>
<wire x1="-111.76" y1="-167.64" x2="-111.76" y2="-198.12" width="0.1524" layer="91"/>
<pinref part="M1" gate="G$1" pin="SIG"/>
<wire x1="-121.92" y1="-198.12" x2="-111.76" y2="-198.12" width="0.1524" layer="91"/>
<label x="-111.76" y="-187.96" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="(T1)PD6"/>
<wire x1="-109.22" y1="-167.64" x2="-109.22" y2="-187.96" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="-187.96" x2="-99.06" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="SG1" gate="G$1" pin="+"/>
<wire x1="-88.9" y1="-208.28" x2="-99.06" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="-99.06" y1="-187.96" x2="-99.06" y2="-208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="S1"/>
<wire x1="-368.3" y1="-210.82" x2="-375.92" y2="-210.82" width="0.1524" layer="91"/>
<label x="-375.92" y="-210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(XCK0/AIN0)PE2"/>
<wire x1="-165.1" y1="-111.76" x2="-180.34" y2="-111.76" width="0.1524" layer="91"/>
<label x="-180.34" y="-111.76" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="S2"/>
<wire x1="-368.3" y1="-205.74" x2="-375.92" y2="-205.74" width="0.1524" layer="91"/>
<label x="-375.92" y="-205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="(OC3A/AIN1)PE3"/>
<wire x1="-165.1" y1="-114.3" x2="-180.34" y2="-114.3" width="0.1524" layer="91"/>
<label x="-180.34" y="-114.3" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="S2"/>
<wire x1="-368.3" y1="-254" x2="-375.92" y2="-254" width="0.1524" layer="91"/>
<label x="-375.92" y="-254" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA5(AD5)"/>
<wire x1="-86.36" y1="-109.22" x2="-73.66" y2="-109.22" width="0.1524" layer="91"/>
<label x="-78.74" y="-109.22" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="S1"/>
<wire x1="-368.3" y1="-259.08" x2="-375.92" y2="-259.08" width="0.1524" layer="91"/>
<label x="-375.92" y="-259.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$11" gate="G$1" pin="PA4(AD4)"/>
<wire x1="-86.36" y1="-106.68" x2="-73.66" y2="-106.68" width="0.1524" layer="91"/>
<label x="-78.74" y="-106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X1" gate="-8" pin="S"/>
<wire x1="60.96" y1="-175.26" x2="50.8" y2="-175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X1" gate="-10" pin="S"/>
<wire x1="60.96" y1="-177.8" x2="50.8" y2="-177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="GND2"/>
<wire x1="-142.24" y1="-83.82" x2="-142.24" y2="-71.12" width="0.1524" layer="91"/>
<pinref part="U$11" gate="G$1" pin="GND1"/>
<wire x1="-142.24" y1="-71.12" x2="-116.84" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-116.84" y1="-71.12" x2="-116.84" y2="-83.82" width="0.1524" layer="91"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="-142.24" y1="-71.12" x2="-154.94" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="-154.94" y1="-71.12" x2="-154.94" y2="-73.66" width="0.1524" layer="91"/>
<junction x="-142.24" y="-71.12"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="-162.56" y1="-182.88" x2="-157.48" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="-182.88" x2="-157.48" y2="-185.42" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
</net>
<net name="RX0" class="0">
<segment>
<pinref part="X2" gate="-1" pin="S"/>
<wire x1="30.48" y1="-203.2" x2="20.32" y2="-203.2" width="0.1524" layer="91"/>
<label x="20.32" y="-203.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX0" class="0">
<segment>
<pinref part="X2" gate="-3" pin="S"/>
<wire x1="30.48" y1="-205.74" x2="20.32" y2="-205.74" width="0.1524" layer="91"/>
<label x="20.32" y="-205.74" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX1" class="0">
<segment>
<pinref part="X2" gate="-5" pin="S"/>
<wire x1="30.48" y1="-208.28" x2="20.32" y2="-208.28" width="0.1524" layer="91"/>
<label x="20.32" y="-208.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX1" class="0">
<segment>
<pinref part="X2" gate="-7" pin="S"/>
<wire x1="20.32" y1="-210.82" x2="30.48" y2="-210.82" width="0.1524" layer="91"/>
<label x="20.32" y="-210.82" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="X2" gate="-9" pin="S"/>
<wire x1="30.48" y1="-213.36" x2="20.32" y2="-213.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="X2" gate="-2" pin="S"/>
<wire x1="60.96" y1="-203.2" x2="50.8" y2="-203.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="X2" gate="-4" pin="S"/>
<wire x1="60.96" y1="-205.74" x2="50.8" y2="-205.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="X2" gate="-6" pin="S"/>
<wire x1="60.96" y1="-208.28" x2="50.8" y2="-208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="X2" gate="-8" pin="S"/>
<wire x1="60.96" y1="-210.82" x2="50.8" y2="-210.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="DQ"/>
<pinref part="U$11" gate="G$1" pin="(OC2/OC1C)PB7"/>
<wire x1="-162.56" y1="-180.34" x2="-144.78" y2="-180.34" width="0.1524" layer="91"/>
<wire x1="-144.78" y1="-180.34" x2="-144.78" y2="-167.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="-162.56" y1="-177.8" x2="-157.48" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="-157.48" y1="-177.8" x2="-157.48" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="P+10" gate="1" pin="+5V"/>
</segment>
</net>
<net name="SOIL1" class="0">
<segment>
<pinref part="U$11" gate="G$1" pin="PA2(AD2)"/>
<wire x1="-106.68" y1="-83.82" x2="-106.68" y2="-71.12" width="0.1524" layer="91"/>
<label x="-106.68" y="-78.74" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="-304.8" y1="-190.5" x2="-304.8" y2="-195.58" width="0.1524" layer="91"/>
<wire x1="-304.8" y1="-195.58" x2="-320.04" y2="-195.58" width="0.1524" layer="91"/>
<wire x1="-304.8" y1="-195.58" x2="-304.8" y2="-231.14" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="Z"/>
<wire x1="-304.8" y1="-231.14" x2="-325.12" y2="-231.14" width="0.1524" layer="91"/>
<junction x="-304.8" y="-195.58"/>
<label x="-320.04" y="-195.58" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="INT1"/>
<wire x1="-322.58" y1="-73.66" x2="-307.34" y2="-73.66" width="0.1524" layer="91"/>
<label x="-317.5" y="-73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="A0"/>
<wire x1="-281.94" y1="-45.72" x2="-294.64" y2="-45.72" width="0.1524" layer="91"/>
<label x="-294.64" y="-45.72" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="INT2"/>
<wire x1="-322.58" y1="-78.74" x2="-307.34" y2="-78.74" width="0.1524" layer="91"/>
<label x="-317.5" y="-78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="A1"/>
<wire x1="-281.94" y1="-48.26" x2="-294.64" y2="-48.26" width="0.1524" layer="91"/>
<label x="-294.64" y="-48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="-363.22" y1="-73.66" x2="-383.54" y2="-73.66" width="0.1524" layer="91"/>
<label x="-383.54" y="-73.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$8" gate="G$1" pin="A4"/>
<wire x1="-281.94" y1="-55.88" x2="-294.64" y2="-55.88" width="0.1524" layer="91"/>
<label x="-294.64" y="-55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="A5"/>
<pinref part="U$1" gate="G$1" pin="SCL"/>
<wire x1="-322.58" y1="-58.42" x2="-281.94" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="A6"/>
<wire x1="-281.94" y1="-60.96" x2="-314.96" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="SDO"/>
<wire x1="-322.58" y1="-68.58" x2="-314.96" y2="-68.58" width="0.1524" layer="91"/>
<wire x1="-314.96" y1="-68.58" x2="-314.96" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$8" gate="G$1" pin="A7"/>
<pinref part="U$1" gate="G$1" pin="SDA"/>
<wire x1="-322.58" y1="-63.5" x2="-281.94" y2="-63.5" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
