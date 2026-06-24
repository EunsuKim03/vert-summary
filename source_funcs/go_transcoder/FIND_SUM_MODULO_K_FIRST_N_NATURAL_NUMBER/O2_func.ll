define i64 @f_gold(i64 %N, i64 %K) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %N, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3034)
    #dbg_value(i64 0, !3032, !DIExpression(), !3035)
    #dbg_value(i64 1, !3033, !DIExpression(), !3036)
  %.not2 = icmp slt i64 %N, 1, !dbg !3037
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3038

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %K, 0
  %1 = icmp eq i64 %K, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3039

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %for.body.lr.ph ]
  %3 = phi i64 [ %8, %for.body ], [ 0, %for.body.lr.ph ]
    #dbg_value(i64 %2, !3033, !DIExpression(), !3040)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3041)
  %4 = icmp eq i64 %2, -9223372036854775808, !dbg !3039
  %5 = and i1 %1, %4, !dbg !3039
  %6 = select i1 %5, i64 1, i64 %K, !dbg !3039
  %7 = srem i64 %2, %6, !dbg !3039
  %8 = add i64 %7, %3, !dbg !3042
    #dbg_value(i64 %8, !3032, !DIExpression(), !3042)
  %9 = add i64 %2, 1, !dbg !3043
    #dbg_value(i64 %9, !3033, !DIExpression(), !3044)
    #dbg_value(i64 %N, !3030, !DIExpression(), !3045)
  %.not = icmp sgt i64 %9, %N, !dbg !3037
  br i1 %.not, label %for.done, label %for.body, !dbg !3038

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3046)
  ret i64 %.lcssa, !dbg !3047

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3039
  unreachable, !dbg !3039
}
