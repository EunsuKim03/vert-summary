define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 0, !3111, !DIExpression(), !3116)
    #dbg_value(i64 0, !3112, !DIExpression(), !3117)
    #dbg_value(i64 0, !3113, !DIExpression(), !3118)
    #dbg_value(i64 1, !3114, !DIExpression(), !3119)
  %0 = icmp sgt i64 %n, 0
  br i1 %0, label %for.body, label %for.done3, !dbg !3120

for.body:                                         ; preds = %entry, %for.done
  %1 = phi i64 [ %13, %for.done ], [ 1, %entry ]
  %2 = phi i64 [ %.lcssa6, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %1, !3114, !DIExpression(), !3122)
  %3 = add i64 %1, -1, !dbg !3123
    #dbg_value(i64 %3, !3112, !DIExpression(), !3124)
    #dbg_value(i64 1, !3113, !DIExpression(), !3125)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3126)
  %4 = icmp slt i64 %3, %n, !dbg !3127
  br i1 %4, label %for.body2, label %for.done, !dbg !3120

for.body2:                                        ; preds = %for.body, %for.body2
  %5 = phi i64 [ %11, %for.body2 ], [ 1, %for.body ]
  %6 = phi i64 [ %8, %for.body2 ], [ %3, %for.body ]
  %7 = phi i64 [ %10, %for.body2 ], [ %2, %for.body ]
    #dbg_value(i64 %6, !3112, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3114, !DIExpression(), !3129)
  %8 = add i64 %6, %1, !dbg !3130
    #dbg_value(i64 %n, !3110, !DIExpression(), !3131)
  %.not2 = icmp sgt i64 %8, %n, !dbg !3132
  %9 = sub i64 %n, %6, !dbg !3120
  %.pn3 = select i1 %.not2, i64 %9, i64 %1, !dbg !3120
  %.pn = mul i64 %.pn3, %5, !dbg !3120
  %10 = add i64 %.pn, %7, !dbg !3120
    #dbg_value(i64 %8, !3112, !DIExpression(), !3133)
  %11 = add i64 %5, 1, !dbg !3134
    #dbg_value(i64 %11, !3113, !DIExpression(), !3134)
  %12 = icmp slt i64 %8, %n, !dbg !3127
  br i1 %12, label %for.body2, label %for.done, !dbg !3120

for.done:                                         ; preds = %for.body2, %for.body
  %.lcssa6 = phi i64 [ %2, %for.body ], [ %10, %for.body2 ], !dbg !3116
  %.lcssa = phi i64 [ %3, %for.body ], [ %8, %for.body2 ], !dbg !3117
  %13 = add i64 %1, 1, !dbg !3135
    #dbg_value(i64 %13, !3114, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3136)
  %.not = icmp sle i64 %13, %n, !dbg !3137
    #dbg_value(i64 %.lcssa, !3112, !DIExpression(), !3138)
  %14 = icmp slt i64 %.lcssa, %n
  %or.cond = and i1 %14, %.not, !dbg !3120
  br i1 %or.cond, label %for.body, label %for.done3, !dbg !3120

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa6, %for.done ], !dbg !3116
    #dbg_value(i64 %.lcssa7, !3111, !DIExpression(), !3139)
  ret i64 %.lcssa7, !dbg !3140
}
