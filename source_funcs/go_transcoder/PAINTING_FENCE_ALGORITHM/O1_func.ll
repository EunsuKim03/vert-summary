define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %k, !3112, !DIExpression(), !3119)
    #dbg_value(i64 1000000007, !3113, !DIExpression(), !3120)
    #dbg_value(i64 0, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3123)
    #dbg_value(i64 2, !3116, !DIExpression(), !3124)
  %.not1 = icmp slt i64 %n, 2, !dbg !3125
  br i1 %.not1, label %for.done, label %for.body.lr.ph, !dbg !3126

for.body.lr.ph:                                   ; preds = %entry
  %0 = add i64 %k, -1
  br label %for.body, !dbg !3126

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %1 = phi i64 [ 2, %for.body.lr.ph ], [ %8, %for.body ]
  %2 = phi i64 [ %k, %for.body.lr.ph ], [ %5, %for.body ]
  %3 = phi i64 [ %k, %for.body.lr.ph ], [ %7, %for.body ]
    #dbg_value(i64 %1, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3115, !DIExpression(), !3128)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %3, !3112, !DIExpression(), !3130)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3131)
  %4 = mul i64 %3, %0, !dbg !3132
    #dbg_value(i64 %4, !3115, !DIExpression(), !3133)
    #dbg_value(i64 1000000007, !3113, !DIExpression(), !3134)
  %5 = srem i64 %4, 1000000007, !dbg !3135
    #dbg_value(i64 %5, !3115, !DIExpression(), !3136)
  %6 = add i64 %5, %2, !dbg !3137
  %7 = srem i64 %6, 1000000007, !dbg !3138
    #dbg_value(i64 %7, !3112, !DIExpression(), !3139)
  %8 = add i64 %1, 1, !dbg !3140
    #dbg_value(i64 %8, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3141)
  %.not = icmp sgt i64 %8, %n, !dbg !3125
  br i1 %.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ %k, %entry ], [ %7, %for.body ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3142)
  ret i64 %.lcssa, !dbg !3143
}
