define range(i64 0, -9223372036854775808) i64 @f_gold(i64 %s) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %s, !3110, !DIExpression(), !3115)
    #dbg_value(i64 0, !3111, !DIExpression(), !3116)
    #dbg_value(i64 1, !3112, !DIExpression(), !3117)
  %0 = add i64 %s, -2
    #dbg_value(i64 1, !3112, !DIExpression(), !3118)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3119)
  %.not8 = icmp slt i64 %0, 1, !dbg !3120
  br i1 %.not8, label %for.done3, label %for.loop1.preheader.lr.ph, !dbg !3121

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = add i64 %s, -1
  %.not27 = icmp slt i64 %1, 1
  br label %for.loop1.preheader, !dbg !3121

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %2 = phi i64 [ 1, %for.loop1.preheader.lr.ph ], [ %11, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa, %for.done ]
    #dbg_value(i64 %2, !3112, !DIExpression(), !3118)
    #dbg_value(i64 1, !3113, !DIExpression(), !3122)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3123)
  br i1 %.not27, label %for.done, label %for.body2, !dbg !3121

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %4 = phi i64 [ %10, %for.body2 ], [ 1, %for.loop1.preheader ]
  %5 = phi i64 [ %x.y.i, %for.body2 ], [ %3, %for.loop1.preheader ]
    #dbg_value(i64 %s, !3110, !DIExpression(), !3124)
    #dbg_value(i64 %2, !3112, !DIExpression(), !3125)
    #dbg_value(i64 %4, !3113, !DIExpression(), !3126)
  %6 = add i64 %2, %4, !dbg !3127
  %7 = sub i64 %s, %6, !dbg !3127
    #dbg_value(i64 %7, !3114, !DIExpression(), !3128)
    #dbg_value(i64 %5, !3111, !DIExpression(), !3129)
  %8 = mul i64 %4, %2, !dbg !3130
  %9 = mul i64 %8, %7, !dbg !3131
    #dbg_value(i64 %5, !3132, !DIExpression(), !3138)
    #dbg_value(i64 %9, !3137, !DIExpression(), !3140)
  %x.y.i = call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 range(i64 0, -9223372036854775808) %5, i64 %9), !dbg !3141
    #dbg_value(i64 %x.y.i, !3111, !DIExpression(), !3142)
  %10 = add i64 %4, 1, !dbg !3143
    #dbg_value(i64 %10, !3113, !DIExpression(), !3122)
  %.not2 = icmp sgt i64 %10, %1, !dbg !3144
  br i1 %.not2, label %for.done, label %for.body2, !dbg !3121

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %x.y.i, %for.body2 ], !dbg !3116
  %11 = add i64 %2, 1, !dbg !3145
    #dbg_value(i64 %11, !3112, !DIExpression(), !3118)
    #dbg_value(i64 %s, !3110, !DIExpression(), !3119)
  %.not = icmp sgt i64 %11, %0, !dbg !3120
  br i1 %.not, label %for.done3, label %for.loop1.preheader, !dbg !3121

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa6 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3116
    #dbg_value(i64 %.lcssa6, !3111, !DIExpression(), !3146)
  ret i64 %.lcssa6, !dbg !3147
}
