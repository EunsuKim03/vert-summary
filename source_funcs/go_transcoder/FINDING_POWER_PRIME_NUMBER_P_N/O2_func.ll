define i64 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 0, !3032, !DIExpression(), !3035)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3036)
    #dbg_value(i64 %p, !3033, !DIExpression(), !3037)
  %.not2 = icmp sgt i64 %p, %n, !dbg !3038
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3039

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %n, -9223372036854775808
  br label %for.body, !dbg !3039

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next
  %1 = phi i64 [ %p, %for.body.lr.ph ], [ %9, %divbyzero.next ]
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %8, %divbyzero.next ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %1, !3033, !DIExpression(), !3041)
  %3 = icmp eq i64 %1, 0, !dbg !3042
  br i1 %3, label %divbyzero.throw, label %divbyzero.next, !dbg !3042

divbyzero.next:                                   ; preds = %for.body
  %4 = icmp eq i64 %1, -1, !dbg !3042
  %5 = and i1 %0, %4, !dbg !3042
  %6 = select i1 %5, i64 1, i64 %1, !dbg !3042
  %7 = sdiv i64 %n, %6, !dbg !3042
  %8 = add i64 %7, %2, !dbg !3043
    #dbg_value(i64 %8, !3032, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3033, !DIExpression(), !3044)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3045)
  %9 = mul i64 %1, %p, !dbg !3046
    #dbg_value(i64 %9, !3033, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3048)
  %.not = icmp sgt i64 %9, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body, !dbg !3039

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %divbyzero.next ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3049)
  ret i64 %.lcssa, !dbg !3050

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3042
  unreachable, !dbg !3042
}
