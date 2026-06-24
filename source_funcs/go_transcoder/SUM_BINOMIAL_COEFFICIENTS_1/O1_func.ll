define range(i64 0, -9223372036854775807) i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
  %0 = icmp slt i64 %n, 0, !dbg !3117
  br i1 %0, label %shift.throw, label %shift.next, !dbg !3117

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp ugt i64 %n, 63, !dbg !3117
  %1 = shl nuw i64 1, %n, !dbg !3117
  %shift.result = select i1 %shift.overflow, i64 0, i64 %1, !dbg !3117
  ret i64 %shift.result, !dbg !3118

shift.throw:                                      ; preds = %entry
  call fastcc void @runtime.negativeShiftPanic(), !dbg !3117
  unreachable, !dbg !3117
}
