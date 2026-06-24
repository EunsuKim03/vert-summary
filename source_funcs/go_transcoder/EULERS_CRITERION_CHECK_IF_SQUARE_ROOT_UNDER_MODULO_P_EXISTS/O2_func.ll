define noundef i1 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3034)
  %0 = icmp eq i64 %p, 0, !dbg !3035
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3035

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !3035
  %2 = icmp eq i64 %n, -9223372036854775808, !dbg !3035
  %3 = and i1 %2, %1, !dbg !3035
  %4 = select i1 %3, i64 1, i64 %p, !dbg !3035
  %5 = srem i64 %n, %4, !dbg !3035
    #dbg_value(i64 %5, !3030, !DIExpression(), !3036)
    #dbg_value(i64 2, !3032, !DIExpression(), !3037)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3038)
  %6 = icmp sgt i64 %p, 2, !dbg !3039
  br i1 %6, label %divbyzero.next2, label %common.ret, !dbg !3040

for.loop:                                         ; preds = %divbyzero.next2
  %7 = add nuw nsw i64 %8, 1, !dbg !3041
    #dbg_value(i64 %7, !3032, !DIExpression(), !3042)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3038)
  %exitcond.not = icmp eq i64 %7, %p, !dbg !3039
  br i1 %exitcond.not, label %common.ret, label %divbyzero.next2, !dbg !3040

divbyzero.next2:                                  ; preds = %divbyzero.next, %for.loop
  %8 = phi i64 [ %7, %for.loop ], [ 2, %divbyzero.next ]
    #dbg_value(i64 %8, !3032, !DIExpression(), !3043)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3044)
  %9 = mul i64 %8, %8, !dbg !3045
  %10 = icmp eq i64 %9, -9223372036854775808, !dbg !3046
  %11 = and i1 %1, %10, !dbg !3046
  %12 = select i1 %11, i64 1, i64 %p, !dbg !3046
  %13 = srem i64 %9, %12, !dbg !3046
    #dbg_value(i64 %5, !3030, !DIExpression(), !3047)
  %14 = icmp eq i64 %13, %5, !dbg !3048
    #dbg_value(i64 %8, !3032, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3041)
  br i1 %14, label %common.ret, label %for.loop, !dbg !3040

common.ret:                                       ; preds = %divbyzero.next2, %for.loop, %divbyzero.next
  %.lcssa = phi i1 [ false, %divbyzero.next ], [ true, %divbyzero.next2 ], [ false, %for.loop ], !dbg !3039
  ret i1 %.lcssa, !dbg !3040

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3035
  unreachable, !dbg !3035
}
