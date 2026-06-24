define range(i64 0, -9223372036854775807) i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3032)
  %0 = icmp slt i64 %n, 0, !dbg !3033
  br i1 %0, label %shift.throw, label %shift.next, !dbg !3033

shift.next:                                       ; preds = %entry
  %shift.overflow = icmp samesign ugt i64 %n, 63, !dbg !3033
  %1 = shl nuw i64 1, %n, !dbg !3033
  %shift.result = select i1 %shift.overflow, i64 0, i64 %1, !dbg !3033
  ret i64 %shift.result, !dbg !3034

shift.throw:                                      ; preds = %entry
  tail call fastcc void @runtime.negativeShiftPanic(), !dbg !3033
  unreachable, !dbg !3033
}
