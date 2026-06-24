define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
  %0 = add i64 %n, -1, !dbg !3119
  %1 = icmp slt i64 %0, 0, !dbg !3120
  br i1 %1, label %shift.throw, label %shift.next, !dbg !3120

shift.next:                                       ; preds = %entry
  %2 = add i64 %n, 1, !dbg !3121
  %3 = mul i64 %2, %n, !dbg !3122
  %4 = sdiv i64 %3, 2, !dbg !3123
  %shift.overflow = icmp ugt i64 %0, 63, !dbg !3120
  %5 = shl nuw i64 1, %0, !dbg !3120
  %shift.result = select i1 %shift.overflow, i64 0, i64 %5, !dbg !3120
  %6 = mul i64 %4, %shift.result, !dbg !3124
  ret i64 %6, !dbg !3125

shift.throw:                                      ; preds = %entry
  call fastcc void @runtime.negativeShiftPanic(), !dbg !3120
  unreachable, !dbg !3120
}
