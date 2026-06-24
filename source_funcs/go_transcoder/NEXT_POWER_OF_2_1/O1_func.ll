define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
    #dbg_value(i64 1, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3116)
  %0 = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %n)
  %or.cond = icmp eq i64 %0, 1, !dbg !3117
  br i1 %or.cond, label %common.ret, label %for.loop, !dbg !3117

common.ret:                                       ; preds = %for.loop, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %1, %for.loop ]
  ret i64 %common.ret.op, !dbg !3117

for.loop:                                         ; preds = %entry, %for.loop
  %1 = phi i64 [ %3, %for.loop ], [ 1, %entry ], !dbg !3113
    #dbg_value(i64 %1, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3119)
  %2 = icmp ult i64 %1, %n, !dbg !3120
  %3 = shl i64 %1, 1, !dbg !3121
    #dbg_value(i64 %3, !3111, !DIExpression(), !3121)
  br i1 %2, label %for.loop, label %common.ret, !dbg !3117
}
