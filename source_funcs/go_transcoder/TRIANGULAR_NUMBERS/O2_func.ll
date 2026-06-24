define noundef i1 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %num, !3026, !DIExpression(), !3029)
  %0 = icmp slt i64 %num, 0, !dbg !3030
  br i1 %0, label %common.ret, label %for.body, !dbg !3031

common.ret:                                       ; preds = %for.loop, %for.body, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ false, %for.loop ], [ true, %for.body ]
  ret i1 %common.ret.op, !dbg !3031

for.loop:                                         ; preds = %for.body
  %1 = add i64 %2, 1, !dbg !3032
    #dbg_value(i64 %1, !3028, !DIExpression(), !3032)
    #dbg_value(i64 %4, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %num, !3026, !DIExpression(), !3034)
  %.not = icmp sgt i64 %4, %num, !dbg !3035
  br i1 %.not, label %common.ret, label %for.body, !dbg !3031

for.body:                                         ; preds = %entry, %for.loop
  %2 = phi i64 [ %1, %for.loop ], [ 1, %entry ]
  %3 = phi i64 [ %4, %for.loop ], [ 0, %entry ]
    #dbg_value(i64 %3, !3027, !DIExpression(), !3036)
    #dbg_value(i64 %2, !3028, !DIExpression(), !3037)
  %4 = add i64 %2, %3, !dbg !3038
    #dbg_value(i64 %4, !3027, !DIExpression(), !3039)
    #dbg_value(i64 %num, !3026, !DIExpression(), !3040)
  %5 = icmp eq i64 %4, %num, !dbg !3041
    #dbg_value(i64 %2, !3028, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3032)
  br i1 %5, label %common.ret, label %for.loop, !dbg !3031
}
