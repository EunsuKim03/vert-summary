define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 1, !3111, !DIExpression(), !3115)
    #dbg_value(i64 2, !3112, !DIExpression(), !3116)
    #dbg_value(i64 3, !3113, !DIExpression(), !3117)
  %0 = icmp sgt i64 %n, 0, !dbg !3118
  br i1 %0, label %for.body, label %for.done, !dbg !3119

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %4, %for.body ], [ 3, %entry ]
  %2 = phi i64 [ %1, %for.body ], [ 2, %entry ]
  %3 = phi i64 [ %5, %for.body ], [ %n, %entry ]
    #dbg_value(i64 %3, !3110, !DIExpression(), !3120)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3121)
    #dbg_value(i64 %2, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3123)
  %4 = add i64 %1, %2, !dbg !3124
    #dbg_value(i64 %4, !3113, !DIExpression(), !3125)
  %.neg1 = add nuw i64 %3, 1, !dbg !3126
  %5 = sub i64 %.neg1, %2, !dbg !3127
    #dbg_value(i64 %5, !3110, !DIExpression(), !3120)
  %6 = icmp sgt i64 %5, 0, !dbg !3118
  br i1 %6, label %for.body, label %for.done, !dbg !3119

for.done:                                         ; preds = %for.body, %entry
  %.lcssa2 = phi i64 [ %n, %entry ], [ %5, %for.body ], !dbg !3128
  %.lcssa = phi i64 [ 3, %entry ], [ %4, %for.body ], !dbg !3117
    #dbg_value(i64 %.lcssa2, !3110, !DIExpression(), !3129)
    #dbg_value(i64 %.lcssa, !3113, !DIExpression(), !3130)
    #dbg_value(i64 poison, !3112, !DIExpression(), !3131)
    #dbg_value(i64 poison, !3110, !DIExpression(), !3132)
    #dbg_value(i64 poison, !3112, !DIExpression(), !3133)
    #dbg_value(i64 poison, !3110, !DIExpression(), !3134)
  %7 = add i64 %.lcssa2, -1, !dbg !3135
  %8 = add i64 %7, %.lcssa, !dbg !3136
  ret i64 %8, !dbg !3137
}
