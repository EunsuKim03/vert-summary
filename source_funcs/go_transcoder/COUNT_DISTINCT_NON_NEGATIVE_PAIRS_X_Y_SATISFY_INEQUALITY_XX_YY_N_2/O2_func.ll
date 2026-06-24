define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 0, !3027, !DIExpression(), !3031)
    #dbg_value(i64 0, !3028, !DIExpression(), !3032)
  %0 = icmp sgt i64 %n, 0, !dbg !3033
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3034

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %12, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %11, %for.done ], [ 0, %entry ]
  %3 = phi i64 [ %6, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
    #dbg_value(i64 0, !3029, !DIExpression(), !3036)
  br label %for.body2, !dbg !3034

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %4 = phi i64 [ 0, %for.loop1.preheader ], [ %7, %for.body2 ]
  %5 = phi i64 [ %3, %for.loop1.preheader ], [ %6, %for.body2 ]
    #dbg_value(i64 %4, !3029, !DIExpression(), !3037)
  %6 = add i64 %5, 1, !dbg !3038
    #dbg_value(i64 %6, !3027, !DIExpression(), !3038)
  %7 = add i64 %4, 1, !dbg !3039
    #dbg_value(i64 %2, !3028, !DIExpression(), !3035)
    #dbg_value(i64 %7, !3029, !DIExpression(), !3036)
  %8 = mul i64 %7, %7, !dbg !3040
  %9 = add i64 %8, %1, !dbg !3041
    #dbg_value(i64 %n, !3026, !DIExpression(), !3042)
  %10 = icmp slt i64 %9, %n, !dbg !3043
  br i1 %10, label %for.body2, label %for.done, !dbg !3034

for.done:                                         ; preds = %for.body2
  %11 = add i64 %2, 1, !dbg !3044
    #dbg_value(i64 %11, !3028, !DIExpression(), !3045)
  %12 = mul i64 %11, %11, !dbg !3046
    #dbg_value(i64 %n, !3026, !DIExpression(), !3047)
  %13 = icmp slt i64 %12, %n, !dbg !3033
  br i1 %13, label %for.loop1.preheader, label %for.done3, !dbg !3034

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa1 = phi i64 [ 0, %entry ], [ %6, %for.done ], !dbg !3031
    #dbg_value(i64 %.lcssa1, !3027, !DIExpression(), !3048)
  ret i64 %.lcssa1, !dbg !3049
}
