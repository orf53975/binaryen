	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20090207-1.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$push6=, __stack_pointer
	i32.load	$push7=, 0($pop6)
	i32.const	$push8=, 128
	i32.sub 	$1=, $pop7, $pop8
	i64.const	$push0=, 12884901889
	i64.store	$discard=, 0($1):p2align=4, $pop0
	i32.const	$push1=, 2
	i32.shl 	$push2=, $0, $pop1
	i32.add 	$push3=, $1, $pop2
	i32.const	$push5=, 2
	i32.store	$discard=, 0($pop3), $pop5
	i32.load	$push4=, 0($1):p2align=4
	return  	$pop4
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	return  	$pop0
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
