define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3029)
    #dbg_value(i64 0, !3027, !DIExpression(), !3030)
    #dbg_value(i64 1, !3028, !DIExpression(), !3031)
  %0 = icmp sgt i64 %n, 0, !dbg !3032
  br i1 %0, label %for.body, label %common.ret, !dbg !3033

for.loop:                                         ; preds = %for.body
  %1 = add i64 %3, 2, !dbg !3034
    #dbg_value(i64 %1, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %5, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3036)
  %2 = icmp slt i64 %5, %n, !dbg !3032
  br i1 %2, label %for.body, label %common.ret, !dbg !3033

for.body:                                         ; preds = %entry, %for.loop
  %3 = phi i64 [ %1, %for.loop ], [ 1, %entry ]
  %4 = phi i64 [ %5, %for.loop ], [ 0, %entry ]
    #dbg_value(i64 %4, !3027, !DIExpression(), !3035)
    #dbg_value(i64 %3, !3028, !DIExpression(), !3037)
  %5 = add i64 %3, %4, !dbg !3038
    #dbg_value(i64 %5, !3027, !DIExpression(), !3039)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3040)
  %6 = icmp eq i64 %5, %n, !dbg !3041
    #dbg_value(i64 %3, !3028, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !3034)
  br i1 %6, label %common.ret, label %for.loop, !dbg !3033

common.ret:                                       ; preds = %for.body, %for.loop, %entry
  %.lcssa = phi i1 [ false, %entry ], [ true, %for.body ], [ false, %for.loop ], !dbg !3032
  ret i1 %.lcssa, !dbg !3033
}
