define i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3116)
  %0 = icmp eq i64 %n, 0, !dbg !3117
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3117

divbyzero.next:                                   ; preds = %entry
  %1 = srem i64 1162261467, %n, !dbg !3117
  %2 = icmp eq i64 %1, 0, !dbg !3118
  ret i1 %2, !dbg !3119

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3117
  unreachable, !dbg !3117
}
