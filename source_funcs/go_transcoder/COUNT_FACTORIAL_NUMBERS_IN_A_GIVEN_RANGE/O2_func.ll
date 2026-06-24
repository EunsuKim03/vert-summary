define i64 @f_gold(i64 %low, i64 %high) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %low, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %high, !3027, !DIExpression(), !3031)
    #dbg_value(i64 1, !3028, !DIExpression(), !3032)
    #dbg_value(i64 1, !3029, !DIExpression(), !3033)
  %0 = icmp sgt i64 %low, 1, !dbg !3034
  br i1 %0, label %for.body, label %for.loop1.preheader, !dbg !3035

for.loop1.preheader:                              ; preds = %for.body, %entry
  %.lcssa5 = phi i64 [ 1, %entry ], [ %3, %for.body ], !dbg !3032
  %.lcssa4 = phi i64 [ 1, %entry ], [ %4, %for.body ], !dbg !3033
    #dbg_value(i64 %.lcssa5, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %high, !3027, !DIExpression(), !3037)
  %.not7 = icmp sgt i64 %.lcssa5, %high, !dbg !3038
  br i1 %.not7, label %for.done3, label %for.body2, !dbg !3035

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 1, %entry ]
  %2 = phi i64 [ %3, %for.body ], [ 1, %entry ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3039)
    #dbg_value(i64 %1, !3029, !DIExpression(), !3040)
  %3 = mul i64 %1, %2, !dbg !3041
    #dbg_value(i64 %3, !3028, !DIExpression(), !3042)
  %4 = add i64 %1, 1, !dbg !3043
    #dbg_value(i64 %4, !3029, !DIExpression(), !3043)
    #dbg_value(i64 %low, !3026, !DIExpression(), !3044)
  %5 = icmp slt i64 %3, %low, !dbg !3034
  br i1 %5, label %for.body, label %for.loop1.preheader, !dbg !3035

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %6 = phi i64 [ %9, %for.body2 ], [ 0, %for.loop1.preheader ]
  %7 = phi i64 [ %11, %for.body2 ], [ %.lcssa4, %for.loop1.preheader ]
  %8 = phi i64 [ %10, %for.body2 ], [ %.lcssa5, %for.loop1.preheader ]
    #dbg_value(i64 %8, !3028, !DIExpression(), !3036)
  %9 = add i64 %6, 1, !dbg !3045
    #dbg_value(i64 %9, !3030, !DIExpression(), !3045)
    #dbg_value(i64 %7, !3029, !DIExpression(), !3046)
  %10 = mul i64 %7, %8, !dbg !3047
    #dbg_value(i64 %10, !3028, !DIExpression(), !3048)
  %11 = add i64 %7, 1, !dbg !3049
    #dbg_value(i64 %11, !3029, !DIExpression(), !3049)
    #dbg_value(i64 %high, !3027, !DIExpression(), !3037)
  %.not = icmp sgt i64 %10, %high, !dbg !3038
  br i1 %.not, label %for.done3, label %for.body2, !dbg !3035

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %9, %for.body2 ], !dbg !3050
    #dbg_value(i64 %.lcssa, !3030, !DIExpression(), !3051)
  ret i64 %.lcssa, !dbg !3052
}
