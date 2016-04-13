.file   "ini.s"
.include "c2002.i"

.section .start, "wa"
.global  _start
_start:
	li r0,0
	li32 r1,_stack_ceil
	li r0,0xf00
	mtspr EVPR,r0
	li32 r0,(MSR_CE|MSR_ME|MSR_EE|MSR_AP)
	mtmsr r0

main:
	li32 r2,0x12345678
#
# random test for vaddcuw
#
li         r5, 0x0000
li         r6, 0x0010
li         r10,0x0000
lvx        1,r0,r5;
lvx        2,r0,r6;
vaddcuw    3,1,2;
stvx       3,r0,r10;
#
# corner test for vaddcuw
#
li         r5, 0x0020
li         r6, 0x0030
li         r10,0x0010
lvx        1,r0,r5;
lvx        2,r0,r6;
vaddcuw    3,1,2;
stvx       3,r0,r10;
#
# random test for vsubsbs
#
li         r5, 0x0040
li         r6, 0x0050
li         r10,0x0020
lvx        1,r0,r5;
lvx        2,r0,r6;
vsubsbs    3,1,2;
stvx       3,r0,r10;
#
# corner test for vsubsbs
#
li         r5, 0x0060
li         r6, 0x0070
li         r10,0x0030
lvx        1,r0,r5;
lvx        2,r0,r6;
vsubsbs    3,1,2;
stvx       3,r0,r10;
#
# random test for vavguh
#
li         r5, 0x0080
li         r6, 0x0090
li         r10,0x0040
lvx        1,r0,r5;
lvx        2,r0,r6;
vavguh     3,1,2;
stvx       3,r0,r10;
#
# corner test for vavguh
#
li         r5, 0x00a0
li         r6, 0x00b0
li         r10,0x0050
lvx        1,r0,r5;
lvx        2,r0,r6;
vavguh     3,1,2;
stvx       3,r0,r10;
#
# random test for vcmpgtsh
#
li         r5, 0x00c0
li         r6, 0x00d0
li         r10,0x0060
lvx        1,r0,r5;
lvx        2,r0,r6;
vcmpgtsh   3,1,2;
stvx       3,r0,r10;
#
# corner test for vcmpgtsh
#
li         r5, 0x00e0
li         r6, 0x00f0
li         r10,0x0070
lvx        1,r0,r5;
lvx        2,r0,r6;
vcmpgtsh   3,1,2;
stvx       3,r0,r10;
#
# corner test for vcmpgtsh
#
li         r5, 0x0100
li         r6, 0x0110
li         r10,0x0080
lvx        1,r0,r5;
lvx        2,r0,r6;
vcmpgtsh   3,1,2;
stvx       3,r0,r10;
#
# random test for vrlb
#
li         r5, 0x0120
li         r6, 0x0130
li         r10,0x0090
lvx        1,r0,r5;
lvx        2,r0,r6;
vrlb       3,1,2;
stvx       3,r0,r10;
#
# corner test for vrlb
#
li         r5, 0x0140
li         r6, 0x0150
li         r10,0x00a0
lvx        1,r0,r5;
lvx        2,r0,r6;
vrlb       3,1,2;
stvx       3,r0,r10;
blr
