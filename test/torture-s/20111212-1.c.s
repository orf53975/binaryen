	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20111212-1.c"
	.section	.text.frob_entry,"ax",@progbits
	.hidden	frob_entry
	.globl	frob_entry
	.type	frob_entry,@function
frob_entry:                             # @frob_entry
	.param  	i32
# BB#0:                                 # %entry
	block
	i32.load	$push0=, 0($0):p2align=0
	i32.const	$push1=, 63
	i32.gt_u	$push2=, $pop0, $pop1
	br_if   	0, $pop2        # 0: down to label0
# BB#1:                                 # %if.then
	i32.const	$push3=, -1
	i32.store	$discard=, 0($0):p2align=0, $pop3
.LBB0_2:                                # %if.end
	end_block                       # label0:
	return
	.endfunc
.Lfunc_end0:
	.size	frob_entry, .Lfunc_end0-frob_entry

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32
# BB#0:                                 # %entry
	i32.const	$push4=, __stack_pointer
	i32.load	$push5=, 0($pop4)
	i32.const	$push6=, 16
	i32.sub 	$1=, $pop5, $pop6
	i32.const	$push7=, __stack_pointer
	i32.store	$discard=, 0($pop7), $1
	i64.const	$push0=, 0
	i64.store	$discard=, 8($1), $pop0
	i32.const	$push1=, 1
	i32.const	$0=, 8
	i32.add 	$0=, $1, $0
	i32.or  	$push2=, $0, $pop1
	call    	frob_entry@FUNCTION, $pop2
	i32.const	$push3=, 0
	i32.const	$push8=, 16
	i32.add 	$1=, $1, $pop8
	i32.const	$push9=, __stack_pointer
	i32.store	$discard=, 0($pop9), $1
	return  	$pop3
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
