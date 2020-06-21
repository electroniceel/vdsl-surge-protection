VDSL Surge Protection Adapter
=============================

| [<img src="https://github.com/electroniceel/vdsl-surge-protection/raw/master/photos/board-lowres.jpg" width=450 alt="PCB">](https://github.com/electroniceel/vdsl-surge-protection/raw/master/photos/board.jpg) | [<img src="https://github.com/electroniceel/vdsl-surge-protection/raw/master/photos/case-lowres.jpg" width=387 alt="Case">](https://github.com/electroniceel/vdsl-surge-protection/raw/master/photos/case.jpg) |


Overview
--------

* Protects VDSL modems and routers from surges, like the ones induced by lightning
* Negligible loss of VDSL signal quality
* Compatible with ADSL, VDSL, VDSL2, VDSL2-Vectoring, 17a, 35b, probably also G.fast
* Not compatible with phone lines that have more than 60 VDC of idle voltage
   * These are for example ISDN lines (they usually have around 90 VDC idle voltage)
   * Also affects some old analog POTS lines

How to use
----------

* Disconnect all devices from your phone line and measure idle voltage between the two wires with a multimeter
* The idle voltage must not exceed 60 VDC
* Most lines used with *DSL modems today won't have any measurable DC voltage on them

* Install before your modem or router, using a RJ45 patch cord
* Connect the PE / Ground terminal to the earth bond of your building
  * Use a thick green/yellow wire, minimum 1.5mm² or AWG 15
  * Connect it for example to the PE of a power outlet
* When the PE terminal is not properly connected
  * the surge protection adapter will only protect from a very limited set of surge scenarios
  * it is much more prone to being damaged by a surge
  * so make sure PE is properly connected with a low impedance path to the same ground bond as the power supply of the modem
* Keep the line between the protection adapter and the modem/router short
  * a few meters is ok, but the longer this line, the more the signal is degraded
  * the length of wire between modem and protection adapter matters much more than the length between protection adapter and
    the outdoor cabinet of the phone company.
   
Schematics
----------

[PDF version of the schematics](https://github.com/electroniceel/vdsl-surge-protection/raw/master/schematics.pdf)

Theory of Operation
-------------------

#### Surges

* Surges can either be between the two phone line wires or between one or both lines against ground (PE)
* Surges can be either polarity. The protection adapter handles both.

#### What happens on a surge

* If any of these voltages exceeds about 80 V, the first thing to happen is that the respective set of TVS
  diodes (D1 to D6) begins to conduct. The current is about 1 mA at 80 V and will rise steeply with higher voltage.
* Due to the inductance of the phone wire, the maximum voltage of a surge is not reached immediately at the point
  of the protection adapter, but it rises more slowly, usually in the order of a few µs. 8 or 10 µs are the values
  used in common test pulse scenarios.
* When the voltage rises further, higher and higher current flows through the TVS diodes. At about 1 A flowing, the TBU devices begin
  to block. It takes them about 1 µs to completey block.
* The TBU devices can withstand up to 850 V
* When the voltage continues to rise and exceeds about 150 V, the Gas Discharge Tube will begin to conduct within nanoseconds
* The GDT will let the current flow into PE
* Once the GDT began to conduct (sparkover), the voltage across it will fall significantly; 10 V is mentioned in the datasheet for > 1 A
* The resistance of the phone line and the fuses, combined with the low arc voltage of the GDT, will even for very strong surges
  ensure that the voltage across the TBU does not exceed 850 V.
* This limits the voltage that reaches the modem / router on the protected port to about 90 to 100 V, which all modems must survive
  to be compliant with the respective telecom standards.

#### Fuses
  
* If the surge results in much higher current than 2 A for some time, one or both fuses will blow and break the current flow.
* This is mostly to protect the phone wire, as getting it replaced will probably be more expensive and time consuming than replacing
  a blown modem / router
* The GDT degrades physically while it conducts. The fuses also act as an indicator for overload conditions. If they should ever blow,
  it is best to replace all components of the surge protection adapter to ensure continued proper operation and low insertion loss

#### Surge strength
  
* This protection adapter is only intended to protect from surges induced into the phone lines by a lightning strike near the phone lines
* The fuses are rated for a maximum breaking capability of 60 A at 600 V. A direct lightning strike into the phone line will lead to several
  magnitudes more of current flowing and will not be stopped by the fuses or the rest of the protection adapter. Instead the phone lines will be vaporized, no matter if you have a protection adapter installed or not.

#### Effects on the signal
  
* During regular operation the TBU devices conduct, but introduce about 10 Ω resistance each
* Phone lines usually have resistances up into the Kiloohm range, so the DSL standards are designed to deal with it
* But capacitances, combined with the line resistance, act as low-pass filters and degrade the signal
* So any additional capacitance should be avoided. Special low capacitance diodes are used to employ this.
* The capacitance of a longer wire between protection adapter and modem would also create such a filter effect

#### TVS overload

* The TVS diodes can be damaged when they conduct for longer than a few µs and the TBU does not stop the current, 
  for example because less than 1 A is flowing or the adapter is installed backwards
* This can happen for voltages between about 80 V and 100 V
* This is the main reason this adapter should not be used on phone lines with higher idle voltage

Signal degradation
------------------

* I have measured the effects on the signal quality on several different phone lines with different modems / routers
* Maximum possible speed as shown by the modem was affected by about 2 % at most
* Publishing this data is still TODO


Procuring Parts and Building
----------------------------

#### BOM

* All Parts, except the Metz screw terminals, are available at Mouser
* The Metz screw terminals are available at Digikey and Reichelt
* The RJ45 from TE can be replaced by a cheaper pin compatible alternative available at LCSC
* Do not forget to order the case and the pluggable screw terminal (just the socket for it is on the PCB and on the BOM)

[See interactive BOM for details](https://htmlpreview.github.io/?https://github.com/electroniceel/vdsl-surge-protection/blob/master/bom/ibom.html)

#### PCBs

* The PCB is designed to fit into a Hammond 1593LBK case
* There are 3 PCBs: the main PCB and two small PCBs that are used as front panels for the Hammond case
* You can skip ordering the front panel PCBs if you want to mill out the space for the connectors yourself, Hammond ships the case with 
  blank front panels
* The gerber directory contains gerber zips ready to order
* The main PCB has not-plated-through holes (NPTH) for better mounting of the RJ45 connectors, they are in different .drl files. Better notify
  your board house about that
* There is the necessary position marker for JLCPCB to put their manufacturing number on the backside of the front panel PCBs. So check the
  respective option when ordering there.
* Mechanical design assumes all PCBs to be 1.6mm thickness

Testing 
-------

* This adapter was not tested in with actual lightning or simulated surge impulses
* Just the response until GDT sparkover was tested
* If you happen to have access to suitable surge testing equipment and want to help, please contact me. I can ship you samples for testing.

License
-------

![CC-BY](https://licensebuttons.net/l/by/4.0/88x31.png)

This work is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).

Please link to https://github.com/electroniceel/vdsl-surge-protection or https://git.io/JfI1V for attribution.
