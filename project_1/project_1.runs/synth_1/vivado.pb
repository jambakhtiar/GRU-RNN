
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:112

00:00:112

1380.3522
45.8362
72692
10875Z17-722h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental /home/jam/Downloads/GRU/project_1/project_1.srcs/utils_1/imports/synth_1/RAM_P.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2T
R/home/jam/Downloads/GRU/project_1/project_1.srcs/utils_1/imports/synth_1/RAM_P.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top gru_cell -part xcu200-fsgd2104-2-eZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
y
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xcu200Z17-347h px� 
i
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xcu200Z17-349h px� 
�
csynth_design options have changed between reference and incremental; A full resynthesis will be run654*	vivadotclZ4-1810h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
10525Z8-7075h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1802.910 ; gain = 409.684 ; free physical = 6632 ; free virtual = 10221
h px� 
�
synthesizing module '%s'%s4497*oasys2

gru_cell2
 2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/gru_cell.v2
258@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
RAM_P2
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/RAM_P.v2
238@Z8-6157h px� 
G
%s
*synth2/
-	Parameter AWL bound to: 12 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter DWL bound to: 4096 - type: integer 
h p
x
� 
�
,$readmem data file '%s' is read successfully3426*oasys2D
B/home/jam/Downloads/GRU/project_1/project_1.srcs/weight_matrix.txt2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/RAM_P.v2
378@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2?
=/home/jam/Downloads/GRU/project_1/project_1.srcs/gru_bias.txt2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/RAM_P.v2
388@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RAM_P2
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/RAM_P.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
control_unit2
 2m
i/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/control_unit.v2
248@Z8-6157h px� 
F
%s
*synth2.
,	Parameter EP bound to: 16 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter Rows bound to: 1824 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter Columns_i bound to: 96 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter Columns_r bound to: 608 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter AWL bound to: 12 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter gru_size bound to: 608 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter time_steps bound to: 2 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
control_unit2
 2
02
12m
i/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/control_unit.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
columnwise_mvm2
 2o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/columnwise_mvm.v2
248@Z8-6157h px� 
F
%s
*synth2.
,	Parameter EP bound to: 16 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI1_in bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF1_in bound to: 12 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI2_in bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF2_in bound to: 12 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
kernel2
 2g
c/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/kernel.v2
238@Z8-6157h px� 
F
%s
*synth2.
,	Parameter EP bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI1_in bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF1_in bound to: 12 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI2_in bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF2_in bound to: 12 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
mult2
 2e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 12 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 12 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WIO bound to: 8 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 24 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult2
 2
02
12e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 8 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 24 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 8 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 24 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adder__parameterized02
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 8 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 24 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI2 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 22 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1588@Z8-693h px� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1698@Z8-693h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder__parameterized02
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
adder__parameterized12
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6157h px� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI2 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 22 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1588@Z8-693h px� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1698@Z8-693h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder__parameterized12
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
kernel2
 2
02
12g
c/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/kernel.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
columnwise_mvm2
 2
02
12o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/columnwise_mvm.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

bias_add2
 2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/bias_add.v2
228@Z8-6157h px� 
F
%s
*synth2.
,	Parameter EP bound to: 16 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 12 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_out bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
adder__parameterized22
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6157h px� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 12 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1588@Z8-693h px� 
�
,zero replication count - replication ignored693*oasys2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
1698@Z8-693h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder__parameterized22
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/adder.v2
328@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

bias_add2
 2
02
12i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/bias_add.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
elementwise_mult2
 2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_mult.v2
228@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_out bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
mult__parameterized02
 2e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6157h px� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult__parameterized02
 2
02
12e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
elementwise_mult2
 2
02
12q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_mult.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
elementwise_add2
 2p
l/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_add.v2
248@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WI2 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 22 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_out bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
elementwise_add2
 2
02
12p
l/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_add.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
activation_function2
 2t
p/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/activation_function.v2
238@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_in bound to: 10 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WF_in bound to: 22 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_out bound to: 2 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 14 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2

PSigmoid2
 2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
218@Z8-6157h px� 
I
%s
*synth21
/	Parameter WI_in bound to: 10 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WF_in bound to: 22 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_out bound to: 2 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 14 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
abs2
 2d
`/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/abs.v2
238@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WL bound to: 32 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
abs2
 2
02
12d
`/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/abs.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
segmentDetector_General2
 2x
t/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segmentDetector_General.v2
218@Z8-6157h px� 
I
%s
*synth21
/	Parameter WI_in bound to: 10 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WF_in bound to: 22 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter segWI bound to: 3 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter segWF bound to: 3 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter noSegments bound to: 8 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
FixedPoint_Extend_Unsigned2
 2{
w/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Extend_Unsigned.v2
238@Z8-6157h px� 
H
%s
*synth20
.	Parameter WI_IN bound to: 3 - type: integer 
h p
x
� 
H
%s
*synth20
.	Parameter WF_IN bound to: 3 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_OUT bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_OUT bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FixedPoint_Extend_Unsigned2
 2
02
12{
w/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Extend_Unsigned.v2
238@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
segmentDetector_General2
 2
02
12x
t/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segmentDetector_General.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
segCoeffROM_tanh2
 2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
218@Z8-6157h px� 
O
%s
*synth27
5	Parameter NUM_SEGMENTS bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffA_WI bound to: 1 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffA_WF bound to: 7 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffB_WI bound to: 1 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffB_WF bound to: 7 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
segCoeffROM_tanh2
 2
02
12q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
segCoeffROM_logsig2
 2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
218@Z8-6157h px� 
O
%s
*synth27
5	Parameter NUM_SEGMENTS bound to: 8 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffA_WI bound to: 1 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffA_WF bound to: 7 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffB_WI bound to: 1 - type: integer 
h p
x
� 
L
%s
*synth24
2	Parameter coeffB_WF bound to: 7 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
segCoeffROM_logsig2
 2
02
12s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FixedPoint_Multiplier2
 2v
r/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Multiplier.v2
298@Z8-6157h px� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WF2 bound to: 7 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FixedPoint_Multiplier2
 2
02
12v
r/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Multiplier.v2
298@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

overFlow2
FixedPoint_Multiplier2
	CoeffMult2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
828@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
tempOut2
FixedPoint_Multiplier2
	CoeffMult2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
828@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	CoeffMult2
FixedPoint_Multiplier2
52
32i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
828@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
FixedPoint_Adder2
 2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Adder.v2
298@Z8-6157h px� 
G
%s
*synth2/
-	Parameter WI1 bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 22 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WF2 bound to: 7 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WIO bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 14 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FixedPoint_Adder2
 2
02
12q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Adder.v2
298@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

overFlow2
FixedPoint_Adder2

CoeffAdder2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
888@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

CoeffAdder2
FixedPoint_Adder2
42
32i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
888@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2

TwosComp2
 2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/TwosComp.v2
218@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WL bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

TwosComp2
 2
02
12i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/TwosComp.v2
218@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
FixedPoint_Sub2
 2o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Sub.v2
298@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 14 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WIO bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 14 - type: integer 
h p
x
� 
�
,zero replication count - replication ignored693*oasys2o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Sub.v2
1598@Z8-693h px� 
�
,zero replication count - replication ignored693*oasys2o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Sub.v2
1708@Z8-693h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FixedPoint_Sub2
 2
02
12o
k/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/FixedPoint_Sub.v2
298@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

overFlow2
FixedPoint_Sub2

CoeffSub2i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
1008@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

CoeffSub2
FixedPoint_Sub2
42
32i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
1008@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PSigmoid2
 2
02
12i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/PSigmoid.v2
218@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
activation_function2
 2
02
12t
p/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/activation_function.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 elementwise_mult__parameterized02
 2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_mult.v2
228@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI1 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 12 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_out bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
mult__parameterized12
 2e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 4 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF1 bound to: 12 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mult__parameterized12
 2
02
12e
a/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/mult.v2
318@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 elementwise_mult__parameterized02
 2
02
12q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_mult.v2
228@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
elementwise_sub2
 2p
l/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_sub.v2
238@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI1 bound to: 2 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WF1 bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WI_out bound to: 10 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 22 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
sub2
 2d
`/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/sub.v2
308@Z8-6157h px� 
F
%s
*synth2.
,	Parameter WI1 bound to: 2 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WF1 bound to: 1 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter WI2 bound to: 2 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WF2 bound to: 14 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WIO bound to: 10 - type: integer 
h p
x
� 
G
%s
*synth2/
-	Parameter WFO bound to: 22 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sub2
 2
02
12d
`/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/sub.v2
308@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
elementwise_sub2
 2
02
12p
l/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_sub.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
elementwise_quant2
 2r
n/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_quant.v2
238@Z8-6157h px� 
F
%s
*synth2.
,	Parameter VP bound to: 16 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_in bound to: 10 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WF_in bound to: 22 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_out bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 12 - type: integer 
h p
x
� 
�
synthesizing module '%s'%s4497*oasys2
quant2
 2f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/quant.v2
248@Z8-6157h px� 
I
%s
*synth21
/	Parameter WI_in bound to: 10 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WF_in bound to: 22 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WI_out bound to: 4 - type: integer 
h p
x
� 
J
%s
*synth22
0	Parameter WF_out bound to: 12 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
quant2
 2
02
12f
b/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/quant.v2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
elementwise_quant2
 2
02
12r
n/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/elementwise_quant.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register_file2
 2n
j/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file.v2
238@Z8-6157h px� 
H
%s
*synth20
.	Parameter WD_I bound to: 64 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WD_F bound to: 192 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter addresses bound to: 114 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register_file2
 2
02
12n
j/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register_file__parameterized02
 2n
j/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file.v2
238@Z8-6157h px� 
I
%s
*synth21
/	Parameter WD_I bound to: 160 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WD_F bound to: 352 - type: integer 
h p
x
� 
M
%s
*synth25
3	Parameter addresses bound to: 38 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register_file__parameterized02
 2
02
12n
j/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
register_file_r_z2
 2r
n/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file_r_z.v2
248@Z8-6157h px� 
H
%s
*synth20
.	Parameter WD_I bound to: 32 - type: integer 
h p
x
� 
I
%s
*synth21
/	Parameter WD_F bound to: 224 - type: integer 
h p
x
� 
N
%s
*synth26
4	Parameter addresses bound to: 114 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
register_file_r_z2
 2
02
12r
n/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/register_file_r_z.v2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

gru_cell2
 2
02
12i
e/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/gru_cell.v2
258@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
new_line_r_h2
control_unit2m
i/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/control_unit.v2
258@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
new_line_x_h2
control_unit2m
i/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/control_unit.v2
258@Z8-3848h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[31]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[30]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[29]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[28]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[27]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[26]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[25]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[24]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[23]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[22]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[21]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[20]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[19]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[18]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[17]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[16]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[15]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[14]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[13]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[12]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[11]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[10]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[9]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[8]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[7]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[31]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[30]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[29]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[28]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[27]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[26]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[25]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[24]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[23]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[22]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[21]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[20]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[19]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[18]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[17]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[16]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[15]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[14]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[13]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[12]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[11]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra2[10]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra2[9]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra2[8]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra2[7]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[31]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[30]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[29]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[28]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[27]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[26]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[25]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[24]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[23]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[22]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[21]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[20]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[19]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[18]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[17]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[16]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[15]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[14]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[13]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[12]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[11]2
register_file_r_zZ8-7129h px� 
{
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra3[10]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra3[9]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra3[8]2
register_file_r_zZ8-7129h px� 
z
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra3[7]2
register_file_r_zZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[31]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[30]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[29]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[28]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[27]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[26]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[25]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[24]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[23]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[22]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[21]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[20]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[19]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[18]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[17]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[16]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[15]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[14]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[13]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[12]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[11]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2	
ra1[10]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[9]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[8]2
register_file__parameterized0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
ra1[7]2
register_file__parameterized0Z8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-71292
100Z17-14h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 2262.605 ; gain = 869.379 ; free physical = 6325 ; free virtual = 9914
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 2262.605 ; gain = 869.379 ; free physical = 6318 ; free virtual = 9907
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
<
%s
*synth2$
"Loading part: xcu200-fsgd2104-2-e
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
H
Loading part %s157*device2
xcu200-fsgd2104-2-eZ21-403h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 2282.531 ; gain = 889.305 ; free physical = 6318 ; free virtual = 9906
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
7
%s
*synth2
Start Preparing Guide Design
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Doing Graph Differ : Time (s): cpu = 00:00:28 ; elapsed = 00:00:27 . Memory (MB): peak = 2282.531 ; gain = 889.305 ; free physical = 6252 ; free virtual = 9849
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:28 ; elapsed = 00:00:27 . Memory (MB): peak = 2282.531 ; gain = 889.305 ; free physical = 6252 ; free virtual = 9849
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
HImplemented Block Ram Cascade chain of height %s and width %s for RAM %s4008*oasys2
42
362
"RAM_P:/RAM_reg"Z8-5555h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-55552
100Z17-14h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2
12
92
"RAM_P:/RAM_reg"Z8-7030h px� 
�
LImplemented Non-Cascaded %s Ram (cascade_height = %s) of width %s for RAM %s4766*oasys2
Block2
12
12
"RAM_P:/RAM_reg"Z8-7030h px� 
u
?The signal %s was recognized as a true dual port RAM template.
3473*oasys2
"RAM_P:/RAM_reg"Z8-3971h px� 
�
!inferring latch for variable '%s'327*oasys2
segmentNum_reg2x
t/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segmentDetector_General.v2
838@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

memOut_reg2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
728@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[0]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[1]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[2]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[3]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[4]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[5]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[6]2q
m/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_tanh.v2
608@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2

memOut_reg2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
738@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[0]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[1]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[2]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[3]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[4]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[5]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
coeffROM_reg[6]2s
o/home/jam/Downloads/GRU/project_1/project_1.srcs/sources_1/imports/rani_koneru-attachments/segCoeffROM_logsig.v2
618@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:56 ; elapsed = 00:01:48 . Memory (MB): peak = 3164.758 ; gain = 1771.531 ; free physical = 221 ; free virtual = 1198
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
C
%s
*synth2+
)

Incremental Synthesis Report Summary:

h p
x
� 
<
%s
*synth2$
"1. Incremental synthesis run: no

h p
x
� 
�
%s
*synth2z
x   Reason for not running incremental synthesis : synth_design options have changed between reference and incremental


h p
x
� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   34 Bit       Adders := 224   
h p
x
� 
F
%s
*synth2.
,	   2 Input   33 Bit       Adders := 32    
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 85    
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 32    
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input   13 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	             4096 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	              512 Bit    Registers := 39    
h p
x
� 
H
%s
*synth20
.	              256 Bit    Registers := 229   
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 19    
h p
x
� 
H
%s
*synth20
.	               12 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 10    
h p
x
� 
-
%s
*synth2
+---Multipliers : 
h p
x
� 
F
%s
*synth2.
,	              10x32  Multipliers := 1     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
[
%s
*synth2C
A	           16384K Bit	(4096 X 4096 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  512 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input  256 Bit        Muxes := 457   
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 35    
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 96    
h p
x
� 
F
%s
*synth2.
,	   8 Input    3 Bit        Muxes := 16    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 531   
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 16    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
%s
*synth2^
\Part Resources:
DSPs: 6840 (col length:120)
BRAMs: 4320 (col length: RAMB18 360 RAMB36 180)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[14].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[14].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[15].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[15].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[13].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[1].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[1].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[1].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[12].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[2].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[2].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[2].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[11].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[3].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[3].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[3].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[6].k1/genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[10].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[4].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[4].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[4].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[9].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[5].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[5].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[5].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[8].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[6].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[6].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[6].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[7].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[7].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[7].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[7].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[6].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[8].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[8].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[8].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[5].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[6].k1/genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk2[9].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[9].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[9].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[4].m1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[6].k1/genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk2[10].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[10].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[10].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[3].m1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[6].k1/genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk2[11].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[11].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[11].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[2].m1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[6].k1/genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk2[12].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[12].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[12].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[1].m1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[6].k1/genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk2[13].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[13].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[13].a1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[6].k1/genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[6].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[6].k1/genblk1[0].m1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[6].k1/genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[6].k1/genblk2[14].a1/tmp is absorbed into DSP genblk1[6].k1/genblk2[14].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[6].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[6].k1/genblk2[14].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[14].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[14].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[15].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[15].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[1].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[1].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[1].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[2].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[2].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[2].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[3].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[3].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[3].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[4].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[4].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[4].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[5].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[5].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[5].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[6].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[6].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[6].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[7].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[7].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[7].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[8].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[8].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[8].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[4].k1/genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk2[9].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[9].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[9].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[4].k1/genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk2[10].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[10].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[10].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[4].k1/genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk2[11].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[11].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[11].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[4].k1/genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk2[12].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[12].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[12].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[4].k1/genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk2[13].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[13].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[13].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[4].k1/genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk2[14].a1/tmp is absorbed into DSP genblk1[4].k1/genblk2[14].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[4].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[4].k1/genblk2[14].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[14].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[14].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[15].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[15].m1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[1].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[1].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[1].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[2].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[2].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[2].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[3].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[3].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[3].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[4].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[4].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[4].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[5].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[5].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[5].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[6].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[6].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[6].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[7].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[7].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[7].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[8].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[8].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[8].a1/tmp.
h p
x
� 
p
%s
*synth2X
VDSP Report: Generating DSP genblk1[5].k1/genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk2[9].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[9].a1/tmp.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[9].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[5].k1/genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk2[10].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[10].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[10].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[5].k1/genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk2[11].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[11].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[11].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[5].k1/genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk2[12].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[12].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[12].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[5].k1/genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk2[13].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[13].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[13].a1/tmp.
h p
x
� 
q
%s
*synth2Y
WDSP Report: Generating DSP genblk1[5].k1/genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk2[14].a1/tmp is absorbed into DSP genblk1[5].k1/genblk2[14].a1/tmp.
h p
x
� 
�
%s
*synth2n
lDSP Report: operator genblk1[5].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[5].k1/genblk2[14].a1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[13].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[12].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[11].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[5].k1/genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[5].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[10].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[9].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[8].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[7].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[6].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[5].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[4].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[3].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[2].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[1].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[5].k1/genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[5].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[5].k1/genblk1[0].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[13].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[13].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[12].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[12].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[11].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[11].m1/tmp.
h p
x
� 
o
%s
*synth2W
UDSP Report: Generating DSP genblk1[4].k1/genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2o
mDSP Report: operator genblk1[4].k1/genblk1[10].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[10].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[9].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[9].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[8].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[8].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[7].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[7].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[6].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[6].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[5].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[5].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[4].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[4].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[3].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[3].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[2].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[2].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[1].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[1].m1/tmp.
h p
x
� 
n
%s
*synth2V
TDSP Report: Generating DSP genblk1[4].k1/genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2m
kDSP Report: operator genblk1[4].k1/genblk1[0].m1/tmp is absorbed into DSP genblk1[4].k1/genblk1[0].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[14].m1/tmp is absorbed into DSP genblk1[14].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[15].m1/tmp is absorbed into DSP genblk1[15].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk1[13].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[1].a1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk1[12].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[2].a1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk1[11].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[3].a1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk1[10].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[4].a1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk1[9].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[5].a1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk1[8].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[6].a1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk1[7].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[7].a1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk1[6].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[8].a1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk1[5].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[9].a1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk1[4].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[10].a1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk1[3].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[11].a1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk1[2].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[12].a1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk1[1].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[13].a1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk1[0].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[14].a1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[14].m1/tmp is absorbed into DSP genblk1[14].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[15].m1/tmp is absorbed into DSP genblk1[15].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk1[13].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[1].a1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk1[12].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[2].a1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk1[11].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[3].a1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk1[10].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[4].a1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk1[9].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[5].a1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk1[8].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[6].a1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk1[7].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[7].a1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk1[6].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[8].a1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk1[5].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[9].a1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk1[4].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[10].a1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk1[3].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[11].a1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk1[2].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[12].a1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk1[1].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[13].a1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk1[0].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[14].a1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[14].m1/tmp is absorbed into DSP genblk1[14].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[15].m1/tmp is absorbed into DSP genblk1[15].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk1[13].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[1].a1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk1[12].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[2].a1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk1[11].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[3].a1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk1[10].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[4].a1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk1[9].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[5].a1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk1[8].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[6].a1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk1[7].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[7].a1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk1[6].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[8].a1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk1[5].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[9].a1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk1[4].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[10].a1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk1[3].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[11].a1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk1[2].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[12].a1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk1[1].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[13].a1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk1[0].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[14].a1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[14].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[14].m1/tmp is absorbed into DSP genblk1[14].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[15].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[15].m1/tmp is absorbed into DSP genblk1[15].m1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[13].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk1[13].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[1].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[1].a1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[13].m1/tmp is absorbed into DSP genblk2[1].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[12].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk1[12].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[2].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[2].a1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[12].m1/tmp is absorbed into DSP genblk2[2].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[11].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk1[11].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[3].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[3].a1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[11].m1/tmp is absorbed into DSP genblk2[3].a1/tmp.
h p
x
� 
a
%s
*synth2I
GDSP Report: Generating DSP genblk1[10].m1/tmp, operation Mode is: A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk1[10].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[4].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[4].a1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[10].m1/tmp is absorbed into DSP genblk2[4].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[9].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk1[9].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[5].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[5].a1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[9].m1/tmp is absorbed into DSP genblk2[5].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[8].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk1[8].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[6].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[6].a1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[8].m1/tmp is absorbed into DSP genblk2[6].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[7].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk1[7].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[7].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[7].a1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[7].m1/tmp is absorbed into DSP genblk2[7].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[6].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk1[6].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[8].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[8].a1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[6].m1/tmp is absorbed into DSP genblk2[8].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[5].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk1[5].m1/tmp.
h p
x
� 
b
%s
*synth2J
HDSP Report: Generating DSP genblk2[9].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk2[9].a1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[5].m1/tmp is absorbed into DSP genblk2[9].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[4].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk1[4].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[10].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[10].a1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[4].m1/tmp is absorbed into DSP genblk2[10].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[3].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk1[3].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[11].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[11].a1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[3].m1/tmp is absorbed into DSP genblk2[11].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[2].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk1[2].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[12].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[12].a1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[2].m1/tmp is absorbed into DSP genblk2[12].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[1].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk1[1].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[13].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[13].a1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[1].m1/tmp is absorbed into DSP genblk2[13].a1/tmp.
h p
x
� 
`
%s
*synth2H
FDSP Report: Generating DSP genblk1[0].m1/tmp, operation Mode is: A*B.
h p
x
� 
i
%s
*synth2Q
ODSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk1[0].m1/tmp.
h p
x
� 
c
%s
*synth2K
IDSP Report: Generating DSP genblk2[14].a1/tmp, operation Mode is: C+A*B.
h p
x
� 
k
%s
*synth2S
QDSP Report: operator genblk2[14].a1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
j
%s
*synth2R
PDSP Report: operator genblk1[0].m1/tmp is absorbed into DSP genblk2[14].a1/tmp.
h p
x
� 
m
%s
*synth2U
SDSP Report: Generating DSP genblk1[8].psig1/CoeffMult/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[8].psig1/CoeffMult/tmp is absorbed into DSP genblk1[8].psig1/CoeffMult/tmp.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[8].psig1/CoeffMult/tmp is absorbed into DSP genblk1[8].psig1/CoeffMult/tmp.
h p
x
� 
x
%s
*synth2`
^DSP Report: Generating DSP genblk1[8].psig1/CoeffMult/tmp, operation Mode is: (PCIN>>17)+A*B.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[8].psig1/CoeffMult/tmp is absorbed into DSP genblk1[8].psig1/CoeffMult/tmp.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[8].psig1/CoeffMult/tmp is absorbed into DSP genblk1[8].psig1/CoeffMult/tmp.
h p
x
� 
m
%s
*synth2U
SDSP Report: Generating DSP genblk1[7].psig1/CoeffMult/tmp, operation Mode is: A*B.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[7].psig1/CoeffMult/tmp is absorbed into DSP genblk1[7].psig1/CoeffMult/tmp.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[7].psig1/CoeffMult/tmp is absorbed into DSP genblk1[7].psig1/CoeffMult/tmp.
h p
x
� 
x
%s
*synth2`
^DSP Report: Generating DSP genblk1[7].psig1/CoeffMult/tmp, operation Mode is: (PCIN>>17)+A*B.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[7].psig1/CoeffMult/tmp is absorbed into DSP genblk1[7].psig1/CoeffMult/tmp.
h p
x
� 
�
%s
*synth2k
iDSP Report: operator genblk1[7].psig1/CoeffMult/tmp is absorbed into DSP genblk1[7].psig1/CoeffMult/tmp.
h p
x
� 