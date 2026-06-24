define noundef i1 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3113)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
  %0 = add i64 %b, %a, !dbg !3116
    #dbg_value(i64 %c, !3112, !DIExpression(), !3117)
  %.not = icmp sgt i64 %0, %c, !dbg !3118
    #dbg_value(i64 %a, !3110, !DIExpression(), !3119)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3120)
  %1 = add i64 %c, %a
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
  %.not1 = icmp sgt i64 %1, %b
  %or.cond = and i1 %.not, %.not1, !dbg !3122
    #dbg_value(i64 %b, !3111, !DIExpression(), !3123)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3124)
  %2 = add i64 %c, %b
    #dbg_value(i64 %a, !3110, !DIExpression(), !3125)
  %.not2 = icmp sgt i64 %2, %a
  %or.cond3 = and i1 %.not2, %or.cond, !dbg !3122
  ret i1 %or.cond3, !dbg !3122
}
