define i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3032)
  %0 = icmp eq i64 %n, 0, !dbg !3033
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3033

divbyzero.next:                                   ; preds = %entry
  %1 = srem i64 1162261467, %n, !dbg !3033
  %2 = icmp eq i64 %1, 0, !dbg !3034
  ret i1 %2, !dbg !3035

divbyzero.throw:                                  ; preds = %entry
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3033
  unreachable, !dbg !3033
}
