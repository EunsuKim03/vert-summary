define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 0, !3027, !DIExpression(), !3031)
    #dbg_value(i64 0, !3029, !DIExpression(), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
  br label %for.loop, !dbg !3034

for.loop:                                         ; preds = %for.loop, %entry
  %0 = phi i64 [ 0, %entry ], [ %3, %for.loop ], !dbg !3035
    #dbg_value(i64 %0, !3028, !DIExpression(), !3036)
  %1 = mul i64 %0, %0, !dbg !3037
    #dbg_value(i64 %n, !3026, !DIExpression(), !3038)
  %2 = icmp slt i64 %1, %n, !dbg !3039
  %3 = add i64 %0, 1, !dbg !3040
    #dbg_value(i64 %3, !3028, !DIExpression(), !3040)
  br i1 %2, label %for.loop, label %for.loop1.preheader, !dbg !3034

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 %0, !3028, !DIExpression(), !3041)
  %.not7 = icmp eq i64 %0, 0, !dbg !3042
  br i1 %.not7, label %for.done, label %for.body2, !dbg !3034

for.body2:                                        ; preds = %cond.true, %for.loop1.preheader
  %4 = phi i64 [ 0, %for.loop1.preheader ], [ %7, %cond.true ]
  %5 = phi i64 [ %0, %for.loop1.preheader ], [ %10, %cond.true ]
  %6 = phi i64 [ 0, %for.loop1.preheader ], [ %8, %cond.true ]
    #dbg_value(i64 %5, !3028, !DIExpression(), !3043)
  %7 = add i64 %4, %5, !dbg !3044
    #dbg_value(i64 %7, !3029, !DIExpression(), !3044)
  %8 = add i64 %6, 1, !dbg !3045
    #dbg_value(i64 %8, !3027, !DIExpression(), !3045)
  %9 = mul i64 %8, %8, !dbg !3046
  br label %for.loop3, !dbg !3034

for.loop3:                                        ; preds = %cond.true, %for.body2
  %10 = phi i64 [ %5, %for.body2 ], [ %11, %cond.true ], !dbg !3035
    #dbg_value(i64 %10, !3028, !DIExpression(), !3047)
  %.not2 = icmp eq i64 %10, 0, !dbg !3048
  br i1 %.not2, label %for.done, label %cond.true, !dbg !3034

cond.true:                                        ; preds = %for.loop3
    #dbg_value(i64 %8, !3027, !DIExpression(), !3049)
    #dbg_value(i64 %10, !3028, !DIExpression(), !3050)
  %11 = add i64 %10, -1, !dbg !3051
  %12 = mul i64 %11, %11, !dbg !3052
  %13 = add i64 %12, %9, !dbg !3053
    #dbg_value(i64 %n, !3026, !DIExpression(), !3054)
  %.not3 = icmp slt i64 %13, %n, !dbg !3055
  br i1 %.not3, label %for.body2, label %for.loop3, !dbg !3034

for.done:                                         ; preds = %for.loop3, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %7, %for.loop3 ], !dbg !3032
    #dbg_value(i64 %.lcssa, !3029, !DIExpression(), !3056)
  ret i64 %.lcssa, !dbg !3057
}
