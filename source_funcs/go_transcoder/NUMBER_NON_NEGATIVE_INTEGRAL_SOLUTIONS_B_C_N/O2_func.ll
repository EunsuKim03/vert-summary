define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
    #dbg_value(i64 0, !3027, !DIExpression(), !3032)
    #dbg_value(i64 0, !3028, !DIExpression(), !3033)
  %.not12 = icmp slt i64 %n, 0, !dbg !3034
  br i1 %.not12, label %for.done6, label %for.loop1.preheader, !dbg !3035

for.loop1.preheader:                              ; preds = %entry, %for.done5
  %0 = phi i64 [ %14, %for.done5 ], [ 0, %entry ]
  %1 = phi i64 [ %.lcssa7, %for.done5 ], [ 0, %entry ]
    #dbg_value(i64 %0, !3028, !DIExpression(), !3036)
  %2 = sub i64 %n, %0
    #dbg_value(i64 0, !3029, !DIExpression(), !3037)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3038)
  %.not310 = icmp slt i64 %2, 0, !dbg !3039
  br i1 %.not310, label %for.done5, label %for.loop3.preheader, !dbg !3035

for.loop3.preheader:                              ; preds = %for.loop1.preheader, %for.done
  %3 = phi i64 [ %13, %for.done ], [ 0, %for.loop1.preheader ]
  %4 = phi i64 [ %.lcssa, %for.done ], [ %1, %for.loop1.preheader ]
    #dbg_value(i64 %3, !3029, !DIExpression(), !3037)
  %5 = add i64 %3, %0
  %6 = sub i64 %n, %5
    #dbg_value(i64 0, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3041)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3042)
  %.not49 = icmp slt i64 %6, 0, !dbg !3043
  br i1 %.not49, label %for.done, label %for.body4, !dbg !3035

for.body4:                                        ; preds = %for.loop3.preheader, %for.body4
  %7 = phi i64 [ %12, %for.body4 ], [ 0, %for.loop3.preheader ]
  %8 = phi i64 [ %spec.select, %for.body4 ], [ %4, %for.loop3.preheader ]
    #dbg_value(i64 %0, !3028, !DIExpression(), !3044)
    #dbg_value(i64 %3, !3029, !DIExpression(), !3045)
    #dbg_value(i64 %7, !3030, !DIExpression(), !3046)
  %9 = add i64 %7, %5, !dbg !3047
    #dbg_value(i64 %n, !3026, !DIExpression(), !3048)
  %10 = icmp eq i64 %9, %n, !dbg !3049
  %11 = zext i1 %10 to i64, !dbg !3035
  %spec.select = add i64 %8, %11, !dbg !3035
  %12 = add i64 %7, 1, !dbg !3050
    #dbg_value(i64 %12, !3030, !DIExpression(), !3040)
  %.not4 = icmp sgt i64 %12, %6, !dbg !3043
  br i1 %.not4, label %for.done, label %for.body4, !dbg !3035

for.done:                                         ; preds = %for.body4, %for.loop3.preheader
  %.lcssa = phi i64 [ %4, %for.loop3.preheader ], [ %spec.select, %for.body4 ], !dbg !3032
  %13 = add i64 %3, 1, !dbg !3051
    #dbg_value(i64 %13, !3029, !DIExpression(), !3037)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3038)
    #dbg_value(i64 %0, !3028, !DIExpression(), !3052)
  %.not3 = icmp sgt i64 %13, %2, !dbg !3039
  br i1 %.not3, label %for.done5, label %for.loop3.preheader, !dbg !3035

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa7 = phi i64 [ %1, %for.loop1.preheader ], [ %.lcssa, %for.done ], !dbg !3032
  %14 = add i64 %0, 1, !dbg !3053
    #dbg_value(i64 %14, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3054)
  %.not = icmp sgt i64 %14, %n, !dbg !3034
  br i1 %.not, label %for.done6, label %for.loop1.preheader, !dbg !3035

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa8 = phi i64 [ 0, %entry ], [ %.lcssa7, %for.done5 ], !dbg !3032
    #dbg_value(i64 %.lcssa8, !3027, !DIExpression(), !3055)
  ret i64 %.lcssa8, !dbg !3056
}
