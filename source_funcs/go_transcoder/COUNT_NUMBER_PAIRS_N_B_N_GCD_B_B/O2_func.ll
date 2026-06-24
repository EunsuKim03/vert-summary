define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3036)
    #dbg_value(i64 1, !3032, !DIExpression(), !3037)
    #dbg_value(i64 0, !3033, !DIExpression(), !3038)
  %.not9 = icmp slt i64 %n, 1, !dbg !3039
  br i1 %.not9, label %for.done, label %for.body, !dbg !3040

for.body:                                         ; preds = %entry, %divbyzero.next2
  %0 = phi i64 [ %9, %divbyzero.next2 ], [ 0, %entry ]
  %1 = phi i64 [ %5, %divbyzero.next2 ], [ 1, %entry ]
  %2 = phi i64 [ %10, %divbyzero.next2 ], [ %n, %entry ]
    #dbg_value(i64 %1, !3032, !DIExpression(), !3041)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3031, !DIExpression(), !3043)
  %3 = icmp eq i64 %2, 0, !dbg !3044
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !3044

divbyzero.next:                                   ; preds = %for.body
  %4 = sdiv i64 %n, %2, !dbg !3044
    #dbg_value(i64 %2, !3031, !DIExpression(), !3045)
    #dbg_value(i64 %1, !3032, !DIExpression(), !3046)
    #dbg_value(!DIArgList(i64 %0, i64 %2, i64 %4, i64 %1), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3047)
    #dbg_value(i64 %4, !3034, !DIExpression(), !3048)
  %5 = add i64 %4, 1, !dbg !3049
    #dbg_value(i64 %n, !3030, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3032, !DIExpression(), !3051)
  %6 = icmp eq i64 %5, 0, !dbg !3052
  br i1 %6, label %divbyzero.throw1, label %divbyzero.next2, !dbg !3052

divbyzero.next2:                                  ; preds = %divbyzero.next
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3047)
  %reass.sub = sub i64 %4, %1, !dbg !3053
  %7 = add i64 %reass.sub, 1, !dbg !3053
    #dbg_value(!DIArgList(i64 %0, i64 %2, i64 %7), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3047)
  %8 = mul i64 %7, %2, !dbg !3054
    #dbg_value(!DIArgList(i64 %0, i64 %8), !3033, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3047)
  %9 = add i64 %8, %0, !dbg !3047
    #dbg_value(i64 %9, !3033, !DIExpression(), !3047)
  %10 = sdiv i64 %n, %5, !dbg !3052
    #dbg_value(i64 %10, !3031, !DIExpression(), !3055)
    #dbg_value(i64 %5, !3032, !DIExpression(), !3041)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3056)
  %.not = icmp sgt i64 %5, %n, !dbg !3039
  br i1 %.not, label %for.done, label %for.body, !dbg !3040

for.done:                                         ; preds = %divbyzero.next2, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %divbyzero.next2 ], !dbg !3038
    #dbg_value(i64 %.lcssa, !3033, !DIExpression(), !3057)
  ret i64 %.lcssa, !dbg !3058

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3044
  unreachable, !dbg !3044

divbyzero.throw1:                                 ; preds = %divbyzero.next
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3052
  unreachable, !dbg !3052
}
