<?xml version="1.0" encoding="UTF-8"?>
<Results xmlns="http://www.mscsoftware.com/:xrf10">
<Bibliography>
<File URI="file://D:\p_Automatic Control\Project\Simulink and adams\Controls_Plant_1.res" schema="xrf" version="2.0.0.0" publicationDate="2021-02-05 19:56:30+03:30" />
<Corporation author="MSC.Software" URI="http://www.mscsoftware.com/" />
<Author user="YSN" name="-unknown name-" />
<Revision version="1" derivedFrom="-unknown-">
<Comment>
</Comment>
</Revision>
</Bibliography>
<Analysis name="run" executionDate="2021-02-05 19:56:30" Solver="Adams 2016           Adams Solver (C++)"  script="-unknown-">
<Bibliography>
<Environment operatingSystem="MS Windows NT 6.2" hostname="DESKTOP-F0CGOOD" />
<Application name="Adams View" version="2016.00.00" />
</Bibliography>
<ModelInfo title="Adams View model name: Contorl_Automatic" creationDate="-unknown-" checksum="-unknown-" />
<Units angle="rad" length="meter" mass="kg" time="sec" />
<StepMap name="map_001">
<Entity name="time">
<Component name="TIME" unitsValue="sec" id="1" />
</Entity>
<Entity name="PART_2_XFORM" entity="PART_2" entType="Part" objectId="2">
<Component name="X" unitsValue="meter" id="2" />
<Component name="Y" unitsValue="meter" id="3" />
<Component name="Z" unitsValue="meter" id="4" />
<Component name="PSI" unitsValue="rad" id="5" />
<Component name="THETA" unitsValue="rad" id="6" />
<Component name="PHI" unitsValue="rad" id="7" />
<Component name="VX" unitsValue="meter/sec" id="14" />
<Component name="VY" unitsValue="meter/sec" id="15" />
<Component name="VZ" unitsValue="meter/sec" id="16" />
<Component name="WX" unitsValue="rad/sec" id="17" />
<Component name="WY" unitsValue="rad/sec" id="18" />
<Component name="WZ" unitsValue="rad/sec" id="19" />
<Component name="ACCX" unitsValue="meter/sec**2" id="26" />
<Component name="ACCY" unitsValue="meter/sec**2" id="27" />
<Component name="ACCZ" unitsValue="meter/sec**2" id="28" />
<Component name="WDX" unitsValue="rad/sec**2" id="29" />
<Component name="WDY" unitsValue="rad/sec**2" id="30" />
<Component name="WDZ" unitsValue="rad/sec**2" id="31" />
</Entity>
<Entity name="PART_3_XFORM" entity="PART_3" entType="Part" objectId="3">
<Component name="X" unitsValue="meter" id="8" />
<Component name="Y" unitsValue="meter" id="9" />
<Component name="Z" unitsValue="meter" id="10" />
<Component name="PSI" unitsValue="rad" id="11" />
<Component name="THETA" unitsValue="rad" id="12" />
<Component name="PHI" unitsValue="rad" id="13" />
<Component name="VX" unitsValue="meter/sec" id="20" />
<Component name="VY" unitsValue="meter/sec" id="21" />
<Component name="VZ" unitsValue="meter/sec" id="22" />
<Component name="WX" unitsValue="rad/sec" id="23" />
<Component name="WY" unitsValue="rad/sec" id="24" />
<Component name="WZ" unitsValue="rad/sec" id="25" />
<Component name="ACCX" unitsValue="meter/sec**2" id="32" />
<Component name="ACCY" unitsValue="meter/sec**2" id="33" />
<Component name="ACCZ" unitsValue="meter/sec**2" id="34" />
<Component name="WDX" unitsValue="rad/sec**2" id="35" />
<Component name="WDY" unitsValue="rad/sec**2" id="36" />
<Component name="WDZ" unitsValue="rad/sec**2" id="37" />
</Entity>
<Entity name="JOINT_1" entity="JOINT_1" entType="Joint" objectId="1">
<Component name="FX" unitsValue="newton" id="38" />
<Component name="FY" unitsValue="newton" id="39" />
<Component name="FZ" unitsValue="newton" id="40" />
<Component name="TX" unitsValue="newton-meter" id="41" />
<Component name="TY" unitsValue="newton-meter" id="42" />
<Component name="TZ" unitsValue="newton-meter" id="43" />
</Entity>
<Entity name="JOINT_2" entity="JOINT_2" entType="Joint" objectId="2">
<Component name="FX" unitsValue="newton" id="44" />
<Component name="FY" unitsValue="newton" id="45" />
<Component name="FZ" unitsValue="newton" id="46" />
<Component name="TX" unitsValue="newton-meter" id="47" />
<Component name="TY" unitsValue="newton-meter" id="48" />
<Component name="TZ" unitsValue="newton-meter" id="49" />
</Entity>
<Entity name="SFORCE_1" entity="SFORCE_1" entType="Single_Component_Force" objectId="1">
<Component name="FX" unitsValue="newton" id="50" />
<Component name="FY" unitsValue="newton" id="51" />
<Component name="FZ" unitsValue="newton" id="52" />
<Component name="TX" unitsValue="newton-meter" id="53" />
<Component name="TY" unitsValue="newton-meter" id="54" />
<Component name="TZ" unitsValue="newton-meter" id="55" />
</Entity>
<Entity name="Force_Carry" entity="Force_Carry" entType="ADAMS_Variable" objectId="1">
<Component name="Q" id="56" />
</Entity>
<Entity name="Position_M" entity="Position_M" entType="ADAMS_Variable" objectId="2">
<Component name="Q" id="57" />
</Entity>
<Entity name="VARIABLE_3" entity="VARIABLE_3" entType="ADAMS_Variable" objectId="3">
<Component name="Q" id="58" />
</Entity>
<Entity name="Theta" entity="Theta" entType="ADAMS_Variable" objectId="4">
<Component name="Q" id="59" />
</Entity>
<Entity name="Posision_X" entity="Posision_X" entType="ADAMS_Variable" objectId="5">
<Component name="Q" id="60" />
</Entity>
<Entity name="ctrl_pinput" entity="Controls_Plant_1.ctrl_pinput" entType="Plant_Input" objectId="1">
<Component name="IN1" id="61" />
</Entity>
<Entity name="ctrl_poutput" entity="Controls_Plant_1.ctrl_poutput" entType="Plant_Output" objectId="1">
<Component name="OUT1" id="62" />
<Component name="OUT2" id="63" />
</Entity>
</StepMap>
<Data name="modelInput_001" id="1">
<Step type="input">
0
0 0 -0.10000000000000001 0 0 0
-2.1890475540000001E-014 3.0302583360000003E-014 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0 0
0 0 0 0 0 0
</Step>
</Data>
<Data name="initialConditions_001" id="2">
<Step type="initialConditions">
0
0 0 -0.10000000000000001 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
0 0 0 0 0 0
1.0745505424136453E-015 0 0 0 0 0
1.0745505424136453E-015 0 0 0 0 3.1604427718048384E-015
0 4.9033249999999997 0 0 0 0
0 9.8066499999999994 0 0 0 0
0 0 0 0 0 0
0
0
0
0
0
0
0 0
</Step>
</Data>
<TerminationStatus runTermObject="" runStatus="Successful" />
</Analysis>
</Results>
