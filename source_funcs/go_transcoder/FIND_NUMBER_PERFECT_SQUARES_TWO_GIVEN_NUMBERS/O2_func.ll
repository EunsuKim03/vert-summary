define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
    #dbg_value(i64 0, !3028, !DIExpression(), !3032)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %a, !3029, !DIExpression(), !3034)
  %.not5 = icmp sgt i64 %a, %b, !dbg !3035
  br i1 %.not5, label %for.done3, label %for.loop1.preheader, !dbg !3036

for.loop1.preheader:                              ; preds = %entry, %for.done
  %0 = phi i64 [ %9, %for.done ], [ %a, %entry ]
  %1 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %0, !3029, !DIExpression(), !3037)
    #dbg_value(i64 1, !3030, !DIExpression(), !3038)
  %.not14 = icmp slt i64 %0, 1, !dbg !3039
  br i1 %.not14, label %for.done, label %for.body2, !dbg !3036

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %2 = phi i64 [ %8, %for.body2 ], [ 1, %for.loop1.preheader ]
  %3 = phi i64 [ %7, %for.body2 ], [ 1, %for.loop1.preheader ]
  %4 = phi i64 [ %spec.select, %for.body2 ], [ %1, %for.loop1.preheader ]
    #dbg_value(i64 %3, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %0, !3029, !DIExpression(), !3041)
  %5 = icmp eq i64 %2, %0, !dbg !3042
  %6 = zext i1 %5 to i64, !dbg !3036
  %spec.select = add i64 %4, %6, !dbg !3036
  %7 = add i64 %3, 1, !dbg !3043
    #dbg_value(i64 %7, !3030, !DIExpression(), !3038)
  %8 = mul i64 %7, %7, !dbg !3044
  %.not1 = icmp sgt i64 %8, %0, !dbg !3039
  br i1 %.not1, label %for.done, label %for.body2, !dbg !3036

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %1, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3032
  %9 = add nsw i64 %0, 1, !dbg !3045
    #dbg_value(i64 %9, !3029, !DIExpression(), !3037)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %0, %b, !dbg !3035
  br i1 %exitcond.not, label %for.done3, label %for.loop1.preheader, !dbg !3036

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa3 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3032
    #dbg_value(i64 %.lcssa3, !3028, !DIExpression(), !3047)
  ret i64 %.lcssa3, !dbg !3048
}
