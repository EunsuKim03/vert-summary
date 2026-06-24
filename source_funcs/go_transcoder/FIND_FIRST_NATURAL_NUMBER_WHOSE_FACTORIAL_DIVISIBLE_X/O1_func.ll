define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3113)
    #dbg_value(i64 1, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
    #dbg_value(i64 1, !3111, !DIExpression(), !3116)
  %0 = icmp sgt i64 %x, 1, !dbg !3117
  br i1 %0, label %for.body, label %for.done, !dbg !3118

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %3, %if.done ], [ 1, %entry ]
  %2 = phi i64 [ %6, %if.done ], [ 1, %entry ]
    #dbg_value(i64 %2, !3111, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %2, !3111, !DIExpression(), !3121)
  %3 = mul i64 %1, %2, !dbg !3122
    #dbg_value(i64 %3, !3112, !DIExpression(), !3123)
    #dbg_value(i64 %3, !3112, !DIExpression(), !3124)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3125)
  %4 = srem i64 %3, %x, !dbg !3126
  %5 = icmp eq i64 %4, 0, !dbg !3127
  br i1 %5, label %for.done, label %if.done, !dbg !3118

if.done:                                          ; preds = %for.body
  %6 = add nuw nsw i64 %2, 1, !dbg !3128
    #dbg_value(i64 %6, !3111, !DIExpression(), !3119)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3129)
  %exitcond.not = icmp eq i64 %6, %x, !dbg !3117
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3118

for.done:                                         ; preds = %if.done, %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %x, %if.done ], [ %2, %for.body ], !dbg !3114
    #dbg_value(i64 %.lcssa, !3111, !DIExpression(), !3130)
  ret i64 %.lcssa, !dbg !3131
}
