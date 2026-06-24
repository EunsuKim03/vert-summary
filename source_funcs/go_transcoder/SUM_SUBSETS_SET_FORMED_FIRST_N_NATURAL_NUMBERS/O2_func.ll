define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3032)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
  %0 = add i64 %n, -1, !dbg !3035
  %1 = icmp slt i64 %0, 0, !dbg !3036
  br i1 %1, label %shift.throw, label %shift.next, !dbg !3036

shift.next:                                       ; preds = %entry
  %2 = add nuw i64 %n, 1, !dbg !3037
  %3 = mul i64 %2, %n, !dbg !3038
  %4 = sdiv i64 %3, 2, !dbg !3039
  %shift.overflow = icmp samesign ugt i64 %0, 63, !dbg !3036
  %5 = shl nuw i64 1, %0, !dbg !3036
  %shift.result = select i1 %shift.overflow, i64 0, i64 %5, !dbg !3036
  %6 = mul i64 %4, %shift.result, !dbg !3040
  ret i64 %6, !dbg !3041

shift.throw:                                      ; preds = %entry
  tail call fastcc void @runtime.negativeShiftPanic(), !dbg !3036
  unreachable, !dbg !3036
}
