/*
 * This file and its contents are supplied under the terms of the
 * Common Development and Distribution License ("CDDL"), version 1.0.
 * You may only use this file in accordance with the terms of version
 * 1.0 of the CDDL.
 *
 * A full copy of the text of the CDDL should have accompanied this
 * source.  A copy of the CDDL is also available via the Internet at
 * http://www.illumos.org/license/CDDL.
 */

/*
 * Copyright 2018, Joyent, Inc.
 */

/*
 * Test our disassembly of the RV32M instructions. Instructions are ordered per the
 * ISA manual.
 */

.text
.align 16
.globl libdis_test
.type libdis_test, @function
libdis_test:
	mul	s0, s1, s2
	mulh	s1, s2, s3
	mulhsu	s2, s3, s4
	mulhu	s3, s4, s5
	div	s4, s5, s6
	divu	s5, s6, s7
	rem	s6, s7, s8
	remu	s7, s8, s9
.size libdis_test, [.-libdis_test]
