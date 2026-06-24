define noundef i1 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %num, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3114)
  %0 = icmp slt i64 %num, 0, !dbg !3115
  br i1 %0, label %common.ret, label %for.body, !dbg !3116

common.ret:                                       ; preds = %for.body, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ %4, %for.body ]
  ret i1 %common.ret.op, !dbg !3116

for.body:                                         ; preds = %for.body, %entry
  %1 = phi i64 [ 1, %entry ], [ %5, %for.body ]
  %2 = phi i64 [ 0, %entry ], [ %3, %for.body ]
    #dbg_value(i64 %2, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %2, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3119)
  %3 = add i64 %1, %2, !dbg !3120
    #dbg_value(i64 %3, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3122)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3123)
  %4 = icmp eq i64 %3, %num, !dbg !3124
    #dbg_value(i64 %1, !3112, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3125)
  %5 = add i64 %1, 1
    #dbg_value(i64 %5, !3112, !DIExpression(), !3125)
    #dbg_value(i64 %3, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3126)
  %or.cond.not = icmp slt i64 %3, %num, !dbg !3116
  br i1 %or.cond.not, label %for.body, label %common.ret, !dbg !3116
}
