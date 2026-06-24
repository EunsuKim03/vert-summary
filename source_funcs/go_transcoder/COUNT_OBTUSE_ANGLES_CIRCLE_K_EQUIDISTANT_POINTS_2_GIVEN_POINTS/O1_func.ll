define i64 @f_gold(i64 %a, i64 %b, i64 %k) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
    #dbg_value(i64 %k, !3112, !DIExpression(), !3115)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
  %0 = xor i64 %a, -1, !dbg !3118
  %1 = add i64 %b, %0, !dbg !3118
    #dbg_value(i64 %1, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %k, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
  %2 = sub i64 %k, %b, !dbg !3122
    #dbg_value(i64 %a, !3110, !DIExpression(), !3123)
  %3 = add i64 %a, -1, !dbg !3124
  %4 = add i64 %3, %2, !dbg !3125
    #dbg_value(i64 %4, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3113, !DIExpression(), !3127)
    #dbg_value(i64 %4, !3114, !DIExpression(), !3128)
  %5 = icmp eq i64 %1, %4, !dbg !3129
  %x.y.i = call i64 @llvm.smin.i64(i64 %1, i64 %4)
  %spec.select = select i1 %5, i64 0, i64 %x.y.i, !dbg !3130
  ret i64 %spec.select, !dbg !3130
}
