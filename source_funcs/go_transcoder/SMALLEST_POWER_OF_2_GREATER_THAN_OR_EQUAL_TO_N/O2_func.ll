define range(i64 0, -9223372036854775807) i64 @f_gold(i64 %n) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 0, !3027, !DIExpression(), !3028)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
  %.not = icmp eq i64 %n, 0, !dbg !3030
  br i1 %.not, label %common.ret, label %cond.true, !dbg !3031

cond.true:                                        ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3032)
  %0 = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %n), !dbg !3033
  %1 = icmp samesign ult i64 %0, 2, !dbg !3033
  br i1 %1, label %common.ret, label %for.done, !dbg !3031

common.ret:                                       ; preds = %for.done, %entry, %cond.true
  %common.ret.op = phi i64 [ %n, %cond.true ], [ 1, %entry ], [ %spec.select, %for.done ]
  ret i64 %common.ret.op, !dbg !3031

for.done:                                         ; preds = %cond.true
    #dbg_value(i64 %n, !3026, !DIExpression(), !3034)
  %2 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %n, i1 true), !dbg !3035
  %.fr = freeze i64 %2, !dbg !3036
  %3 = sub nuw nsw i64 64, %.fr, !dbg !3035
    #dbg_value(i64 poison, !3026, !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value), !3035)
    #dbg_value(i64 %3, !3027, !DIExpression(), !3037)
  %shift.overflow = icmp eq i64 %.fr, 0, !dbg !3036
  %4 = shl nuw i64 1, %3, !dbg !3036
  %spec.select = select i1 %shift.overflow, i64 0, i64 %4, !dbg !3036
  br label %common.ret, !dbg !3036
}
