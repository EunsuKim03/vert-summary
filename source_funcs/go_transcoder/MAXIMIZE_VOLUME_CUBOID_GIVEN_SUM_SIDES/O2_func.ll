define range(i64 0, -9223372036854775808) i64 @f_gold(i64 %s) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %s, !3026, !DIExpression(), !3031)
    #dbg_value(i64 0, !3027, !DIExpression(), !3032)
    #dbg_value(i64 1, !3028, !DIExpression(), !3033)
  %0 = add i64 %s, -2
  %.not8 = icmp slt i64 %0, 1, !dbg !3034
  br i1 %.not8, label %for.done3, label %for.loop1.preheader.lr.ph, !dbg !3035

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = add i64 %s, -1
  %.not27 = icmp slt i64 %1, 1
  br label %for.loop1.preheader, !dbg !3035

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %2 = phi i64 [ 1, %for.loop1.preheader.lr.ph ], [ %11, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa, %for.done ]
    #dbg_value(i64 %2, !3028, !DIExpression(), !3036)
    #dbg_value(i64 1, !3029, !DIExpression(), !3037)
    #dbg_value(i64 %s, !3026, !DIExpression(), !3038)
  br i1 %.not27, label %for.done, label %for.body2, !dbg !3035

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %4 = phi i64 [ %10, %for.body2 ], [ 1, %for.loop1.preheader ]
  %5 = phi i64 [ %x.y.i, %for.body2 ], [ %3, %for.loop1.preheader ]
    #dbg_value(i64 %s, !3026, !DIExpression(), !3039)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3040)
    #dbg_value(i64 %4, !3029, !DIExpression(), !3041)
  %6 = add i64 %2, %4, !dbg !3042
  %7 = sub i64 %s, %6, !dbg !3042
    #dbg_value(i64 %7, !3030, !DIExpression(), !3043)
    #dbg_value(i64 %5, !3027, !DIExpression(), !3044)
  %8 = mul i64 %4, %2, !dbg !3045
  %9 = mul i64 %8, %7, !dbg !3046
    #dbg_value(i64 %5, !3047, !DIExpression(), !3053)
    #dbg_value(i64 %9, !3052, !DIExpression(), !3055)
  %x.y.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %5, i64 %9), !dbg !3056
    #dbg_value(i64 %x.y.i, !3027, !DIExpression(), !3057)
  %10 = add i64 %4, 1, !dbg !3058
    #dbg_value(i64 %10, !3029, !DIExpression(), !3037)
  %.not2 = icmp sgt i64 %10, %1, !dbg !3059
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3035

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %x.y.i, %for.body2 ], !dbg !3032
  %11 = add i64 %2, 1, !dbg !3060
    #dbg_value(i64 %11, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %s, !3026, !DIExpression(), !3061)
  %.not = icmp sgt i64 %11, %0, !dbg !3034
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3035

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa6 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3032
    #dbg_value(i64 %.lcssa6, !3027, !DIExpression(), !3062)
  ret i64 %.lcssa6, !dbg !3063
}
