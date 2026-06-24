define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
    #dbg_value(i64 1, !3029, !DIExpression(), !3034)
    #dbg_value(i64 %n, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3036)
  %.not1 = icmp eq i64 %n, 0, !dbg !3037
  br i1 %.not1, label %for.done, label %for.body, !dbg !3038

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ %4, %for.body ], [ %n, %entry ]
  %1 = phi i64 [ %7, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %6, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %0, !3030, !DIExpression(), !3039)
  %3 = srem i64 %0, 10, !dbg !3040
    #dbg_value(i64 %3, !3031, !DIExpression(), !3041)
  %4 = sdiv i64 %0, 10, !dbg !3042
    #dbg_value(i64 %4, !3030, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3029, !DIExpression(), !3044)
  %5 = mul i64 %3, %1, !dbg !3045
  %6 = add i64 %5, %2, !dbg !3046
    #dbg_value(i64 %6, !3028, !DIExpression(), !3046)
  %7 = shl i64 %1, 1, !dbg !3047
    #dbg_value(i64 %7, !3029, !DIExpression(), !3048)
  %.off = add i64 %0, 9, !dbg !3037
  %.not = icmp ult i64 %.off, 19, !dbg !3037
  br i1 %.not, label %for.done, label %for.body, !dbg !3038

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %for.body ], !dbg !3033
    #dbg_value(i64 %.lcssa, !3028, !DIExpression(), !3049)
  ret i64 %.lcssa, !dbg !3050
}
