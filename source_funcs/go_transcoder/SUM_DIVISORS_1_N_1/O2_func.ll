define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 0, !3031, !DIExpression(), !3034)
    #dbg_value(i64 1, !3032, !DIExpression(), !3035)
  %n.fr = freeze i64 %n, !dbg !3036
  %.not2 = icmp slt i64 %n.fr, 1, !dbg !3037
  br i1 %.not2, label %for.done, label %for.body, !dbg !3038

for.body:                                         ; preds = %entry, %divbyzero.next
  %0 = phi i64 [ %6, %divbyzero.next ], [ 1, %entry ]
  %1 = phi i64 [ %5, %divbyzero.next ], [ 0, %entry ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3039)
    #dbg_value(i64 %0, !3032, !DIExpression(), !3040)
  %2 = icmp eq i64 %0, 0, !dbg !3041
  br i1 %2, label %divbyzero.throw, label %divbyzero.next, !dbg !3041

divbyzero.next:                                   ; preds = %for.body
    #dbg_value(i64 %0, !3032, !DIExpression(), !3042)
  %3 = srem i64 %n.fr, %0, !dbg !3036
  %4 = sub nsw i64 %n.fr, %3, !dbg !3036
  %5 = add i64 %4, %1, !dbg !3043
    #dbg_value(i64 %5, !3031, !DIExpression(), !3043)
  %6 = add i64 %0, 1, !dbg !3044
    #dbg_value(i64 %6, !3032, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3046)
  %.not = icmp sgt i64 %6, %n.fr, !dbg !3037
  br i1 %.not, label %for.done, label %for.body, !dbg !3038

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %5, %divbyzero.next ], !dbg !3034
    #dbg_value(i64 %.lcssa, !3031, !DIExpression(), !3047)
  ret i64 %.lcssa, !dbg !3048

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3041
  unreachable, !dbg !3041
}
