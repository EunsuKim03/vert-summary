define noundef range(i64 -1, 2) i64 @f_gold(i64 %x1, i64 %y1, i64 %x2, i64 %y2, i64 %r1, i64 %r2) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3118)
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %x2, !3112, !DIExpression(), !3118)
    #dbg_value(i64 %y2, !3113, !DIExpression(), !3118)
    #dbg_value(i64 %r1, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %r2, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %x2, !3112, !DIExpression(), !3120)
  %0 = sub i64 %x1, %x2, !dbg !3121
    #dbg_value(i64 %x1, !3110, !DIExpression(), !3122)
    #dbg_value(i64 %x2, !3112, !DIExpression(), !3123)
  %1 = mul i64 %0, %0, !dbg !3124
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %y2, !3113, !DIExpression(), !3126)
  %2 = sub i64 %y1, %y2, !dbg !3127
    #dbg_value(i64 %y1, !3111, !DIExpression(), !3128)
    #dbg_value(i64 %y2, !3113, !DIExpression(), !3129)
  %3 = mul i64 %2, %2, !dbg !3130
  %4 = add i64 %3, %1, !dbg !3131
    #dbg_value(i64 %4, !3116, !DIExpression(), !3132)
    #dbg_value(i64 %r1, !3114, !DIExpression(), !3133)
    #dbg_value(i64 %r2, !3115, !DIExpression(), !3134)
  %5 = add i64 %r2, %r1, !dbg !3135
    #dbg_value(i64 %r1, !3114, !DIExpression(), !3136)
    #dbg_value(i64 %r2, !3115, !DIExpression(), !3137)
  %6 = mul i64 %5, %5, !dbg !3138
    #dbg_value(i64 %6, !3117, !DIExpression(), !3139)
    #dbg_value(i64 %4, !3116, !DIExpression(), !3140)
    #dbg_value(i64 %6, !3117, !DIExpression(), !3141)
  %7 = icmp eq i64 %4, %6, !dbg !3142
  %8 = icmp sgt i64 %4, %6, !dbg !3143
  %. = sext i1 %8 to i64, !dbg !3143
  %common.ret.op = select i1 %7, i64 1, i64 %., !dbg !3143
  ret i64 %common.ret.op, !dbg !3143
}
