<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="clk" />
        <signal name="Q" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="Q" />
        <blockdef name="fd_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <block symbolname="fd_1" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="D" name="D" />
            <blockpin signalname="Q" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1680" y="1584" name="XLXI_1" orien="R0" />
        <branch name="D">
            <wire x2="1680" y1="1328" y2="1328" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1328" name="D" orien="R180" />
        <branch name="clk">
            <wire x2="1680" y1="1456" y2="1456" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1456" name="clk" orien="R180" />
        <branch name="Q">
            <wire x2="2096" y1="1328" y2="1328" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1328" name="Q" orien="R0" />
    </sheet>
</drawing>