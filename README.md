# Expense Infrastructure – Development Environment

This repository contains the complete **AWS infrastructure setup** for the **Expense application (Dev environment)**.  
It implements a **secure, scalable, and highly available three-tier architecture** using AWS services and Infrastructure as Code (IaC).

---

## 📌 Architecture Overview

The infrastructure is deployed inside a custom AWS VPC and follows a standard **three-tier design**:

- **Frontend Layer (Public)**
- **Backend Layer (Private)**
- **Database Layer (Private)**

The design ensures secure traffic flow from the internet to the database without exposing internal resources.

---

## 🖼 Architecture Diagram

<?xml version="1.0" encoding="UTF-8"?>
<mxfile host="app.diagrams.net" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36" version="29.3.7">
  <diagram name="Page-1" id="_oa3yF-_nfbRzwI-3MNB">
    <mxGraphModel dx="2084" dy="2248" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-1" parent="1" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_account;verticalAlign=top;align=left;spacingLeft=30;dashed=0;strokeWidth=2;fillColor=#f5f5f5;gradientColor=#b3b3b3;strokeColor=#FF0000;" value="&lt;b&gt;AWS Account&lt;/b&gt;" vertex="1">
          <mxGeometry height="990" width="820" x="80" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-2" parent="-kNMf-nXk1HDoBk_w1mp-1" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=none;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_vpc2;strokeColor=#8C4FFF;fillColor=none;verticalAlign=top;align=left;spacingLeft=30;fontColor=#AAB7B8;dashed=0;" value="&lt;b&gt;&lt;font style=&quot;color: rgb(51, 51, 255);&quot;&gt;expense-dev&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="830" width="600" x="40" y="120" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-3" parent="-kNMf-nXk1HDoBk_w1mp-2" style="rounded=1;arcSize=10;dashed=1;strokeColor=#F59D56;fillColor=none;gradientColor=none;dashPattern=8 4;strokeWidth=2;" value="" vertex="1">
          <mxGeometry height="760" width="199.5" x="40" y="40" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-4" parent="-kNMf-nXk1HDoBk_w1mp-2" style="rounded=1;arcSize=10;dashed=1;strokeColor=#184AFF;fillColor=none;gradientColor=none;dashPattern=8 4;strokeWidth=2;" value="" vertex="1">
          <mxGeometry height="760" width="199.5" x="360" y="40" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-5" parent="-kNMf-nXk1HDoBk_w1mp-2" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=#97d077;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#82b366;fillColor=#d5e8d4;verticalAlign=top;align=left;spacingLeft=30;dashed=0;" value="&lt;b&gt;Public subnet&lt;/b&gt;" vertex="1">
          <mxGeometry height="160" width="445.25" x="74.75" y="80" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-6" parent="-kNMf-nXk1HDoBk_w1mp-5" style="rounded=1;whiteSpace=wrap;html=1;" value="" vertex="1">
          <mxGeometry height="110" width="178.28" x="135.61" y="15" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-1" parent="-kNMf-nXk1HDoBk_w1mp-5" style="rounded=0;whiteSpace=wrap;html=1;" value="" vertex="1">
          <mxGeometry height="60" width="120" x="164.75" y="40" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-2" parent="-kNMf-nXk1HDoBk_w1mp-5" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" value="" vertex="1">
          <mxGeometry height="30" width="30" x="185.25" y="55" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-3" parent="-kNMf-nXk1HDoBk_w1mp-5" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" value="" vertex="1">
          <mxGeometry height="30" width="30" x="235.25" y="55" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-4" parent="-kNMf-nXk1HDoBk_w1mp-5" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="25" width="18.5" x="166.75" y="55" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-5" parent="-kNMf-nXk1HDoBk_w1mp-5" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="25" width="18.5" x="265.25" y="55" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-7" parent="-kNMf-nXk1HDoBk_w1mp-5" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#ED7100;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.auto_scaling2;" value="" vertex="1">
          <mxGeometry height="48" width="48" x="116.75" y="85" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-17" parent="-kNMf-nXk1HDoBk_w1mp-5" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;font-size: 14px; color: rgb(153, 51, 255);&quot; face=&quot;Comic Sans MS&quot;&gt;Frontend TG&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="110" x="215.25" y="10" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-23" parent="-kNMf-nXk1HDoBk_w1mp-5" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;http:80&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="60" x="194.75" y="80" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-6" parent="-kNMf-nXk1HDoBk_w1mp-2" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=#7ea6e0;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#6c8ebf;fillColor=#dae8fc;verticalAlign=top;align=left;spacingLeft=30;dashed=0;" value="&lt;b&gt;Private Subnet&lt;/b&gt;" vertex="1">
          <mxGeometry height="160" width="445.25" x="77.38" y="360" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-5" parent="-kNMf-nXk1HDoBk_w1mp-6" style="rounded=1;whiteSpace=wrap;html=1;" value="" vertex="1">
          <mxGeometry height="110" width="178.28" x="130.85999999999999" y="22.5" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-57" parent="-kNMf-nXk1HDoBk_w1mp-6" style="rounded=0;whiteSpace=wrap;html=1;" value="" vertex="1">
          <mxGeometry height="60" width="120" x="160" y="50" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-58" parent="-kNMf-nXk1HDoBk_w1mp-6" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" value="" vertex="1">
          <mxGeometry height="30" width="30" x="176.72000000000003" y="65" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-59" parent="-kNMf-nXk1HDoBk_w1mp-6" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#ED7100;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.ec2;" value="" vertex="1">
          <mxGeometry height="30" width="30" x="232.62" y="65" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-2" parent="-kNMf-nXk1HDoBk_w1mp-6" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="25" width="18.5" x="160" y="65" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-3" parent="-kNMf-nXk1HDoBk_w1mp-6" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="25" width="18.5" x="262.62" y="65" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-6" parent="-kNMf-nXk1HDoBk_w1mp-6" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;fillColor=#ED7100;strokeColor=none;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;pointerEvents=1;shape=mxgraph.aws4.auto_scaling2;" value="" vertex="1">
          <mxGeometry height="48" width="48" x="272.62" y="90" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-20" parent="-kNMf-nXk1HDoBk_w1mp-6" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;font-size: 14px; color: rgb(153, 51, 255);&quot; face=&quot;Comic Sans MS&quot;&gt;Backend TG&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="100" x="211.72000000000003" y="22.5" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-25" parent="-kNMf-nXk1HDoBk_w1mp-6" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;http:8080&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="80" x="180" y="90" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-7" parent="-kNMf-nXk1HDoBk_w1mp-2" style="points=[[0,0],[0.25,0],[0.5,0],[0.75,0],[1,0],[1,0.25],[1,0.5],[1,0.75],[1,1],[0.75,1],[0.5,1],[0.25,1],[0,1],[0,0.75],[0,0.5],[0,0.25]];outlineConnect=0;gradientColor=#ea6b66;html=1;whiteSpace=wrap;fontSize=12;fontStyle=0;container=1;pointerEvents=0;collapsible=0;recursiveResize=0;shape=mxgraph.aws4.group;grIcon=mxgraph.aws4.group_security_group;grStroke=0;strokeColor=#b85450;fillColor=#f8cecc;verticalAlign=top;align=left;spacingLeft=30;dashed=0;" value="&lt;b&gt;Database Subnet&lt;/b&gt;" vertex="1">
          <mxGeometry height="160" width="445.25" x="77.38" y="600" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-44" parent="-kNMf-nXk1HDoBk_w1mp-7" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.rds_db_instance;fillColor=#2E73B8;gradientColor=none;" value="" vertex="1">
          <mxGeometry height="66" width="49.5" x="197.88" y="47" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-45" parent="-kNMf-nXk1HDoBk_w1mp-7" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="35" width="25.9" x="176.72" y="62.5" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-26" parent="-kNMf-nXk1HDoBk_w1mp-7" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;mysql:3306&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="90" x="177.63" y="113" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-4" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="-kNMf-nXk1HDoBk_w1mp-46" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;flowAnimation=1;strokeWidth=2;" target="-kNMf-nXk1HDoBk_w1mp-57">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-46" parent="-kNMf-nXk1HDoBk_w1mp-2" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.application_load_balancer;fillColor=#F58536;gradientColor=none;" value="" vertex="1">
          <mxGeometry height="50" width="50" x="272.38" y="280" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-47" parent="-kNMf-nXk1HDoBk_w1mp-2" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="35" width="25.9" x="250" y="280" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-48" parent="-kNMf-nXk1HDoBk_w1mp-2" style="rounded=0;whiteSpace=wrap;html=1;" value="" vertex="1">
          <mxGeometry height="60" width="120" x="390" y="120" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-49" parent="-kNMf-nXk1HDoBk_w1mp-2" style="points=[];aspect=fixed;html=1;align=center;shadow=0;dashed=0;fillColor=#FF6A00;strokeColor=none;shape=mxgraph.alibaba_cloud.bastionhost;" value="" vertex="1">
          <mxGeometry height="39.900000000000006" width="50.4" x="400" y="130.05" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-50" parent="-kNMf-nXk1HDoBk_w1mp-2" style="html=1;strokeWidth=1;shadow=0;dashed=0;shape=mxgraph.ios7.misc.vpn;fillColor=#007AFF;strokeColor=none;buttonText=;strokeColor2=#222222;fontColor=#222222;fontSize=8;verticalLabelPosition=bottom;verticalAlign=top;align=center;sketch=0;" value="" vertex="1">
          <mxGeometry height="35" width="40" x="460" y="135" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-51" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="-kNMf-nXk1HDoBk_w1mp-48" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;flowAnimation=1;" target="-kNMf-nXk1HDoBk_w1mp-46">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="450" y="305" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-52" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="-kNMf-nXk1HDoBk_w1mp-48" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;flowAnimation=1;" target="-kNMf-nXk1HDoBk_w1mp-44">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="450" y="680" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-55" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;color: rgb(19, 56, 255);&quot; face=&quot;Comic Sans MS&quot;&gt;us-east-1a&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="90" x="94.75" y="40" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-56" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;color: rgb(19, 56, 255);&quot; face=&quot;Comic Sans MS&quot;&gt;us-east-1b&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="90" x="445.4" y="40" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-1" parent="-kNMf-nXk1HDoBk_w1mp-2" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.vpc_nat_gateway;fillColor=#F58534;gradientColor=none;" value="" vertex="1">
          <mxGeometry height="40" width="52.62" x="90" y="110" as="geometry" />
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-8" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="-kNMf-nXk1HDoBk_w1mp-57" style="endArrow=classic;html=1;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;flowAnimation=1;strokeWidth=2;" target="-kNMf-nXk1HDoBk_w1mp-44" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="500" y="410" as="sourcePoint" />
            <mxPoint x="550" y="360" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="Ft64ByeWx-oR6YxNVYhW-9" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="-kNMf-nXk1HDoBk_w1mp-48" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=1;entryY=0.5;entryDx=0;entryDy=0;entryPerimeter=0;flowAnimation=1;" target="Ft64ByeWx-oR6YxNVYhW-3">
          <mxGeometry relative="1" as="geometry">
            <Array as="points">
              <mxPoint x="450" y="438" />
              <mxPoint x="379" y="438" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="Fe1JVYztoIkSO5cmFbyE-1" parent="-kNMf-nXk1HDoBk_w1mp-2" style="outlineConnect=0;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;shape=mxgraph.aws3.application_load_balancer;fillColor=#F58536;gradientColor=none;" value="" vertex="1">
          <mxGeometry height="50" width="50" x="272.37" y="20" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-15" parent="-kNMf-nXk1HDoBk_w1mp-2" style="sketch=0;outlineConnect=0;fontColor=#232F3E;gradientColor=none;strokeColor=#232F3E;fillColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.internet_gateway;" value="" vertex="1">
          <mxGeometry height="60" width="60" x="142.62" y="-30" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-8" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="Fe1JVYztoIkSO5cmFbyE-1" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;flowAnimation=1;">
          <mxGeometry relative="1" as="geometry">
            <mxPoint x="297" y="120" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-10" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-2" source="YYC_tpVuf_u4fxhuyksU-1" style="endArrow=classic;html=1;rounded=0;exitX=0.5;exitY=1;exitDx=0;exitDy=0;flowAnimation=1;" target="-kNMf-nXk1HDoBk_w1mp-46" value="">
          <mxGeometry height="50" relative="1" width="50" as="geometry">
            <mxPoint x="500" y="340" as="sourcePoint" />
            <mxPoint x="550" y="290" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-18" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font face=&quot;Comic Sans MS&quot; style=&quot;font-size: 14px; color: rgb(153, 0, 0);&quot;&gt;Web ALB&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="90" x="305" y="10" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-19" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;font-size: 14px; color: rgb(255, 0, 128);&quot; face=&quot;Comic Sans MS&quot;&gt;APP ALB&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="80" x="290" y="250" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-21" parent="-kNMf-nXk1HDoBk_w1mp-2" style="sketch=0;aspect=fixed;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=none;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#00188D;shape=mxgraph.mscae.enterprise.lock_unlocked" value="" vertex="1">
          <mxGeometry height="25" width="18.5" x="257.4" y="30" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-22" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;https:443&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="80" x="290" y="55" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-24" parent="-kNMf-nXk1HDoBk_w1mp-2" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;http:80&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="60" x="245" y="250" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-8" parent="-kNMf-nXk1HDoBk_w1mp-1" style="shape=table;startSize=0;container=1;collapsible=0;childLayout=tableLayout;" value="" vertex="1">
          <mxGeometry height="75" width="140" x="660" y="200" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-9" parent="-kNMf-nXk1HDoBk_w1mp-8" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-10" parent="-kNMf-nXk1HDoBk_w1mp-9" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;CIDR&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-11" parent="-kNMf-nXk1HDoBk_w1mp-9" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;Destination&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-12" parent="-kNMf-nXk1HDoBk_w1mp-8" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" y="25" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-13" parent="-kNMf-nXk1HDoBk_w1mp-12" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;0.0.0.0/0&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-14" parent="-kNMf-nXk1HDoBk_w1mp-12" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;IGW&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-32" parent="-kNMf-nXk1HDoBk_w1mp-8" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1">
          <mxGeometry height="25" width="140" y="50" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-33" parent="-kNMf-nXk1HDoBk_w1mp-32" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;10.0.0.0/16&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-34" parent="-kNMf-nXk1HDoBk_w1mp-32" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;local&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-18" parent="-kNMf-nXk1HDoBk_w1mp-1" style="shape=table;startSize=0;container=1;collapsible=0;childLayout=tableLayout;" value="" vertex="1">
          <mxGeometry height="75" width="140" x="660" y="480" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-19" parent="-kNMf-nXk1HDoBk_w1mp-18" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-20" parent="-kNMf-nXk1HDoBk_w1mp-19" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;CIDR&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-21" parent="-kNMf-nXk1HDoBk_w1mp-19" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;Destination&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-22" parent="-kNMf-nXk1HDoBk_w1mp-18" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" y="25" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-23" parent="-kNMf-nXk1HDoBk_w1mp-22" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;0.0.0.0/0&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-24" parent="-kNMf-nXk1HDoBk_w1mp-22" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;NAT&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-38" parent="-kNMf-nXk1HDoBk_w1mp-18" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1">
          <mxGeometry height="25" width="140" y="50" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-39" parent="-kNMf-nXk1HDoBk_w1mp-38" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;10.0.0.0/16&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-40" parent="-kNMf-nXk1HDoBk_w1mp-38" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;local&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-25" parent="-kNMf-nXk1HDoBk_w1mp-1" style="shape=table;startSize=0;container=1;collapsible=0;childLayout=tableLayout;" value="" vertex="1">
          <mxGeometry height="75" width="140" x="660" y="720" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-26" parent="-kNMf-nXk1HDoBk_w1mp-25" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-27" parent="-kNMf-nXk1HDoBk_w1mp-26" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;CIDR&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-28" parent="-kNMf-nXk1HDoBk_w1mp-26" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#6c8ebf;overflow=hidden;fillColor=#dae8fc;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#7ea6e0;" value="&lt;b&gt;Destination&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-29" parent="-kNMf-nXk1HDoBk_w1mp-25" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" value="" vertex="1">
          <mxGeometry height="25" width="140" y="25" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-30" parent="-kNMf-nXk1HDoBk_w1mp-29" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;0.0.0.0/0&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-31" parent="-kNMf-nXk1HDoBk_w1mp-29" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;NAT&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-41" parent="-kNMf-nXk1HDoBk_w1mp-25" style="shape=tableRow;horizontal=0;startSize=0;swimlaneHead=0;swimlaneBody=0;strokeColor=inherit;top=0;left=0;bottom=0;right=0;collapsible=0;dropTarget=0;fillColor=none;points=[[0,0.5],[1,0.5]];portConstraint=eastwest;" vertex="1">
          <mxGeometry height="25" width="140" y="50" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-42" parent="-kNMf-nXk1HDoBk_w1mp-41" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;10.0.0.0/16&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-43" parent="-kNMf-nXk1HDoBk_w1mp-41" style="shape=partialRectangle;html=1;whiteSpace=wrap;connectable=0;strokeColor=#666666;overflow=hidden;fillColor=#f5f5f5;top=0;left=0;bottom=0;right=0;pointerEvents=1;gradientColor=#b3b3b3;" value="&lt;b&gt;local&lt;/b&gt;" vertex="1">
          <mxGeometry height="25" width="70" x="70" as="geometry">
            <mxRectangle height="25" width="70" as="alternateBounds" />
          </mxGeometry>
        </mxCell>
        <mxCell id="lfr90MG_O4O85OSbpimu-3" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-1" source="YYC_tpVuf_u4fxhuyksU-11" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;flowAnimation=1;" target="lfr90MG_O4O85OSbpimu-1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-11" parent="-kNMf-nXk1HDoBk_w1mp-1" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#8C4FFF;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.route_53;" value="" vertex="1">
          <mxGeometry height="50" width="50" x="215" y="30" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-15" edge="1" parent="-kNMf-nXk1HDoBk_w1mp-1" source="lfr90MG_O4O85OSbpimu-1" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;entryPerimeter=0;flowAnimation=1;strokeWidth=2;" target="Fe1JVYztoIkSO5cmFbyE-1">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="lfr90MG_O4O85OSbpimu-1" parent="-kNMf-nXk1HDoBk_w1mp-1" style="sketch=0;points=[[0,0,0],[0.25,0,0],[0.5,0,0],[0.75,0,0],[1,0,0],[0,1,0],[0.25,1,0],[0.5,1,0],[0.75,1,0],[1,1,0],[0,0.25,0],[0,0.5,0],[0,0.75,0],[1,0.25,0],[1,0.5,0],[1,0.75,0]];outlineConnect=0;fontColor=#232F3E;fillColor=#8C4FFF;strokeColor=#ffffff;dashed=0;verticalLabelPosition=bottom;verticalAlign=top;align=center;html=1;fontSize=12;fontStyle=0;aspect=fixed;shape=mxgraph.aws4.resourceIcon;resIcon=mxgraph.aws4.cloudfront;" value="" vertex="1">
          <mxGeometry height="45" width="45" x="314.87" y="32.5" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-54" edge="1" parent="1" source="-kNMf-nXk1HDoBk_w1mp-53" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;flowAnimation=1;" target="-kNMf-nXk1HDoBk_w1mp-48">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="-kNMf-nXk1HDoBk_w1mp-53" parent="1" style="sketch=0;pointerEvents=1;shadow=0;dashed=0;html=1;strokeColor=#b85450;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;align=center;fillColor=#f8cecc;shape=mxgraph.mscae.system_center.admin_console;gradientColor=#ea6b66;" value="" vertex="1">
          <mxGeometry height="60" width="80" x="530" y="-100" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-12" parent="1" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#0080F0;shadow=0;dashed=0;shape=mxgraph.ios7.icons.user;" value="" vertex="1">
          <mxGeometry height="60" width="60" x="290" y="-110" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-13" edge="1" parent="1" source="YYC_tpVuf_u4fxhuyksU-12" style="edgeStyle=orthogonalEdgeStyle;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;entryX=0.5;entryY=0;entryDx=0;entryDy=0;entryPerimeter=0;flowAnimation=1;strokeWidth=2;" target="YYC_tpVuf_u4fxhuyksU-11">
          <mxGeometry relative="1" as="geometry" />
        </mxCell>
        <mxCell id="YYC_tpVuf_u4fxhuyksU-14" parent="1" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" value="&lt;b&gt;&lt;font style=&quot;font-size: 14px;&quot; face=&quot;Comic Sans MS&quot;&gt;https://expense-cdn.daws82s.online&lt;/font&gt;&lt;/b&gt;" vertex="1">
          <mxGeometry height="30" width="270" x="150" y="-50" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>


---

## 🌐 Domain Access

Application URL:

https://expense-dev.manojmantha.online


---

## 🏗 AWS Infrastructure Components

### 🔹 Networking
- Custom **VPC** with CIDR `10.0.0.0/16`
- Public Subnets (Multi-AZ)
- Private Subnets (Multi-AZ)
- Database Subnets
- Internet Gateway (IGW)
- NAT Gateway for outbound internet from private subnets

---

### 🔹 Load Balancers

#### Web ALB (Public)
- Listener: **HTTPS : 443**
- Internet-facing
- Routes traffic to Frontend Target Group

#### App ALB (Internal)
- Listener: **HTTP : 80**
- Internal only
- Routes traffic to Backend Target Group

---

### 🔹 Compute (EC2)

#### Frontend EC2
- Deployed in Public Subnets
- Part of Frontend Target Group
- Handles UI and forwards API calls to backend

#### Backend EC2
- Deployed in Private Subnets
- Part of Backend Target Group
- Handles business logic and database communication

---

### 🔹 Database

- **Amazon RDS – MySQL**
- Port: `3306`
- Deployed in Database Subnets
- Not publicly accessible
- Accessible only from Backend EC2 instances

---

## 🔐 Security Design

- Security Groups with least-privilege access
- Backend is not internet-facing
- Database accessible only from backend
- HTTPS termination at Web ALB
- Internal ALB protects backend services

---

## 🔄 Traffic Flow

1. User accesses the application URL
2. Route 53 resolves DNS to Web ALB
3. Web ALB forwards traffic to Frontend EC2
4. Frontend forwards API requests to Internal App ALB
5. App ALB routes traffic to Backend EC2
6. Backend communicates with MySQL RDS

---

## 🛠 Tools & Technologies

- AWS (VPC, EC2, ALB, RDS, Route 53)
- Terraform
- Linux
- HTTPS / SSL

---

## 🚀 Deployment Steps

### Prerequisites
- AWS Account
- IAM user with required permissions
- Terraform installed
- AWS CLI configured
- Ansible-pull used for configuration frontend and backend

### Initialize Terraform
```bash
terraform init

```

### Validate Configuration
```bash
terraform validate

```

### Plan Infrastructure
```bash
terraform plan

```

### 🧹 Destroy Infrastructure
```bash
terraform destroy

```
