define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
  %0 = icmp eq i64 %a, 0, !dbg !3114
  br i1 %0, label %common.ret, label %divbyzero.next, !dbg !3115

common.ret:                                       ; preds = %entry, %divbyzero.next
  %common.ret.op = phi i64 [ %6, %divbyzero.next ], [ %b, %entry ]
  ret i64 %common.ret.op, !dbg !3115

divbyzero.next:                                   ; preds = %entry
    #dbg_value(i64 %b, !3111, !DIExpression(), !3116)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
  %1 = icmp eq i64 %a, -1, !dbg !3118
  %2 = icmp eq i64 %b, -9223372036854775808, !dbg !3118
  %3 = and i1 %1, %2, !dbg !3118
  %4 = select i1 %3, i64 1, i64 %a, !dbg !3118
  %5 = srem i64 %b, %4, !dbg !3118
    #dbg_value(i64 %a, !3110, !DIExpression(), !3119)
  %6 = call i64 @f_gold(i64 %5, i64 %a), !dbg !3120
  br label %common.ret, !dbg !3121
}
