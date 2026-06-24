define noundef i1 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3113)
    #dbg_value(i64 0, !3111, !DIExpression(), !3114)
    #dbg_value(i64 1, !3112, !DIExpression(), !3115)
  %0 = icmp sgt i64 %n, 0, !dbg !3116
  br i1 %0, label %for.body, label %common.ret, !dbg !3117

for.body:                                         ; preds = %for.body, %entry
  %1 = phi i64 [ 1, %entry ], [ %5, %for.body ]
  %2 = phi i64 [ 0, %entry ], [ %3, %for.body ]
    #dbg_value(i64 %2, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3119)
  %3 = add i64 %1, %2, !dbg !3120
    #dbg_value(i64 %3, !3111, !DIExpression(), !3120)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3122)
  %4 = icmp eq i64 %3, %n, !dbg !3123
    #dbg_value(i64 %1, !3112, !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value), !3124)
  %5 = add i64 %1, 2
    #dbg_value(i64 %5, !3112, !DIExpression(), !3124)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3125)
  %6 = icmp slt i64 %3, %n
  br i1 %6, label %for.body, label %common.ret, !dbg !3117

common.ret:                                       ; preds = %for.body, %entry
  %.lcssa = phi i1 [ false, %entry ], [ %4, %for.body ], !dbg !3116
  ret i1 %.lcssa, !dbg !3117
}
