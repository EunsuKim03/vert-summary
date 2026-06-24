define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3113)
  %0 = icmp slt i64 %k, 1, !dbg !3114
  br i1 %0, label %common.ret, label %shift.next, !dbg !3115

common.ret:                                       ; preds = %entry, %shift.next
  %common.ret.op = phi i64 [ %5, %shift.next ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3115

shift.next:                                       ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
    #dbg_value(i64 %k, !3111, !DIExpression(), !3117)
  %1 = add nsw i64 %k, -1, !dbg !3118
  %shift.overflow = icmp ugt i64 %1, 63, !dbg !3119
  %2 = shl nuw i64 1, %1, !dbg !3119
  %3 = xor i64 %2, -1, !dbg !3120
  %4 = select i1 %shift.overflow, i64 -1, i64 %3, !dbg !3119
  %5 = and i64 %4, %n, !dbg !3121
  br label %common.ret, !dbg !3122
}
