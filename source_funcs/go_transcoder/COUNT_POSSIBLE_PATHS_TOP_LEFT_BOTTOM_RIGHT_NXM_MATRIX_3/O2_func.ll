define i64 @f_gold(i64 %m, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %m, !3030, !DIExpression(), !3034)
    #dbg_value(i64 1, !3032, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3036)
    #dbg_value(i64 %n, !3033, !DIExpression(), !3037)
  %0 = add i64 %m, -1
  %1 = add i64 %0, %n
  %2 = icmp slt i64 %n, %1, !dbg !3038
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3039

for.body.preheader:                               ; preds = %entry
  %3 = icmp eq i64 %m, 1, !dbg !3040
  br i1 %3, label %divbyzero.throw, label %for.body, !dbg !3040

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %14, %for.body ], [ %n, %for.body.preheader ]
  %5 = phi i64 [ %13, %for.body ], [ 1, %for.body.preheader ]
    #dbg_value(!DIArgList(i64 %5, i64 %4), !3032, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value), !3041)
    #dbg_value(i64 %4, !3033, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3043)
  %6 = sub i64 %4, %n, !dbg !3044
  %7 = add nuw i64 %6, 1, !dbg !3045
  %8 = mul i64 %4, %5, !dbg !3041
    #dbg_value(i64 %8, !3032, !DIExpression(), !3041)
  %9 = icmp eq i64 %7, -1, !dbg !3040
  %10 = icmp eq i64 %8, -9223372036854775808, !dbg !3040
  %11 = and i1 %10, %9, !dbg !3040
  %12 = select i1 %11, i64 1, i64 %7, !dbg !3040
  %13 = sdiv i64 %8, %12, !dbg !3040
    #dbg_value(i64 %13, !3032, !DIExpression(), !3040)
  %14 = add i64 %4, 1, !dbg !3046
    #dbg_value(i64 %14, !3033, !DIExpression(), !3047)
    #dbg_value(i64 %m, !3030, !DIExpression(), !3048)
  %exitcond.not = icmp eq i64 %14, %1, !dbg !3038
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3039

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %13, %for.body ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3049)
  ret i64 %.lcssa, !dbg !3050

divbyzero.throw:                                  ; preds = %for.body.preheader
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3040
  unreachable, !dbg !3040
}
