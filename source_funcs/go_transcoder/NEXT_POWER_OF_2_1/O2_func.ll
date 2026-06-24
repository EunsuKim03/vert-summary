define range(i64 0, -1) i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 1, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %0 = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %n)
  %or.cond = icmp eq i64 %0, 1, !dbg !3030
  br i1 %or.cond, label %common.ret, label %for.loop, !dbg !3030

common.ret:                                       ; preds = %for.loop, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %1, %for.loop ]
  ret i64 %common.ret.op, !dbg !3030

for.loop:                                         ; preds = %entry, %for.loop
  %1 = phi i64 [ %3, %for.loop ], [ 1, %entry ], !dbg !3028
    #dbg_value(i64 %1, !3027, !DIExpression(), !3031)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %2 = icmp ult i64 %1, %n, !dbg !3033
  %3 = shl i64 %1, 1, !dbg !3034
    #dbg_value(i64 %3, !3027, !DIExpression(), !3034)
  br i1 %2, label %for.loop, label %common.ret, !dbg !3030
}
