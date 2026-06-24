define range(i64 0, -1) i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %0 = icmp eq i64 %n, 1, !dbg !3029
  br i1 %0, label %common.ret1, label %if.done, !dbg !3030

common.ret1:                                      ; preds = %entry, %if.done
  %common.ret1.op = phi i64 [ %3, %if.done ], [ 2, %entry ]
  ret i64 %common.ret1.op, !dbg !3030

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3031)
  %1 = add i64 %n, -1, !dbg !3032
  %2 = tail call i64 @f_gold(i64 %1), !dbg !3033
  %3 = shl i64 %2, 1, !dbg !3034
  br label %common.ret1, !dbg !3030
}
