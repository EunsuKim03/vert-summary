define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3029)
  %0 = icmp slt i64 %k, 1, !dbg !3030
  br i1 %0, label %common.ret, label %shift.next, !dbg !3031

common.ret:                                       ; preds = %entry, %shift.next
  %common.ret.op = phi i64 [ %5, %shift.next ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3031

shift.next:                                       ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
    #dbg_value(i64 %k, !3027, !DIExpression(), !3033)
  %1 = add nsw i64 %k, -1, !dbg !3034
  %shift.overflow = icmp samesign ugt i64 %1, 63, !dbg !3035
  %2 = shl nuw i64 1, %1, !dbg !3035
  %3 = xor i64 %2, -1, !dbg !3036
  %4 = select i1 %shift.overflow, i64 -1, i64 %3, !dbg !3035
  %5 = and i64 %4, %n, !dbg !3037
  br label %common.ret, !dbg !3038
}
