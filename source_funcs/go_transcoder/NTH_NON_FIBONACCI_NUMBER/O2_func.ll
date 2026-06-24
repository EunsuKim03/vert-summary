define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
    #dbg_value(i64 1, !3027, !DIExpression(), !3031)
    #dbg_value(i64 2, !3028, !DIExpression(), !3032)
    #dbg_value(i64 3, !3029, !DIExpression(), !3033)
  %0 = icmp sgt i64 %n, 0, !dbg !3034
  br i1 %0, label %for.body, label %for.done, !dbg !3035

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 3, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 2, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %3, !3026, !DIExpression(), !3036)
    #dbg_value(i64 %1, !3029, !DIExpression(), !3037)
    #dbg_value(i64 %2, !3027, !DIExpression(), !3038)
    #dbg_value(i64 %1, !3028, !DIExpression(), !3039)
  %4 = add i64 %1, %2, !dbg !3040
    #dbg_value(i64 %4, !3029, !DIExpression(), !3041)
  %.neg1 = add nuw i64 %3, 1, !dbg !3042
  %5 = sub i64 %.neg1, %2, !dbg !3043
    #dbg_value(i64 %5, !3026, !DIExpression(), !3036)
  %6 = icmp sgt i64 %5, 0, !dbg !3034
  br i1 %6, label %for.body, label %for.done, !dbg !3035

for.done:                                         ; preds = %for.body, %entry
  %.lcssa2 = phi i64 [ %n, %entry ], [ %5, %for.body ], !dbg !3044
  %.lcssa = phi i64 [ 3, %entry ], [ %4, %for.body ], !dbg !3033
    #dbg_value(i64 %.lcssa, !3029, !DIExpression(), !3045)
    #dbg_value(i64 poison, !3028, !DIExpression(), !3046)
    #dbg_value(i64 poison, !3026, !DIExpression(), !3047)
  %7 = add i64 %.lcssa2, -1, !dbg !3048
  %8 = add i64 %7, %.lcssa, !dbg !3049
  ret i64 %8, !dbg !3050
}
