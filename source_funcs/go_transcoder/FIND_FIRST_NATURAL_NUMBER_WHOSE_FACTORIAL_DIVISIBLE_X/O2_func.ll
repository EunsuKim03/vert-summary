define range(i64 1, 0) i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 1, !3028, !DIExpression(), !3029)
    #dbg_value(i64 1, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3031)
  %0 = icmp sgt i64 %x, 1, !dbg !3032
  br i1 %0, label %for.body, label %for.done, !dbg !3033

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %3, %if.done ], [ 1, %entry ]
  %2 = phi i64 [ %6, %if.done ], [ 1, %entry ]
    #dbg_value(i64 %1, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %2, !3027, !DIExpression(), !3035)
  %3 = mul i64 %1, %2, !dbg !3036
    #dbg_value(i64 %3, !3028, !DIExpression(), !3037)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3038)
  %4 = srem i64 %3, %x, !dbg !3039
  %5 = icmp eq i64 %4, 0, !dbg !3040
  br i1 %5, label %for.done, label %if.done, !dbg !3033

if.done:                                          ; preds = %for.body
  %6 = add nuw nsw i64 %2, 1, !dbg !3041
    #dbg_value(i64 %6, !3027, !DIExpression(), !3030)
    #dbg_value(i64 %x, !3026, !DIExpression(), !3031)
  %exitcond.not = icmp eq i64 %6, %x, !dbg !3032
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3033

for.done:                                         ; preds = %if.done, %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %2, %for.body ], [ %x, %if.done ], !dbg !3042
    #dbg_value(i64 %.lcssa, !3027, !DIExpression(), !3043)
  ret i64 %.lcssa, !dbg !3044
}
