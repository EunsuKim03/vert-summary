define range(i64 0, -9223372036854775807) i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
  %0 = add i64 %n, -1, !dbg !3117
  %1 = icmp slt i64 %0, 0, !dbg !3118
  br i1 %1, label %shift.throw, label %shift.next, !dbg !3118

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp ugt i64 %0, 63, !dbg !3118
  %2 = shl nuw i64 1, %0, !dbg !3118
  %shift.result = select i1 %shift.overflow, i64 0, i64 %2, !dbg !3118
  ret i64 %shift.result, !dbg !3119

shift.throw:                                      ; preds = %entry
  call fastcc void @runtime.negativeShiftPanic(), !dbg !3118
  unreachable, !dbg !3118
}
