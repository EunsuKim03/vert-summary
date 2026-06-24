define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %s.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3117)
    #dbg_value(i64 %s.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3117)
    #dbg_value(i64 %s.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3117)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %s.len, !3115, !DIExpression(), !3119)
    #dbg_value(i64 1, !3116, !DIExpression(), !3120)
  %0 = icmp slt i64 %s.len, 2, !dbg !3121
  br i1 %0, label %common.ret, label %for.body, !dbg !3122

for.body:                                         ; preds = %for.body, %entry
  %1 = phi i64 [ 1, %entry ], [ %5, %for.body ]
    #dbg_value(i64 %1, !3116, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %1, !3116, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3126)
  %2 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3127
  %3 = load i8, ptr %2, align 1, !dbg !3127
  %4 = load i8, ptr %s.data, align 1, !dbg !3128
  %.not1 = icmp eq i8 %3, %4, !dbg !3129
    #dbg_value(i64 %1, !3116, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3130)
  %5 = add nuw nsw i64 %1, 1
    #dbg_value(i64 %5, !3116, !DIExpression(), !3130)
    #dbg_value(i64 %5, !3116, !DIExpression(), !3123)
    #dbg_value(i64 %s.len, !3115, !DIExpression(), !3131)
  %exitcond.not = icmp ne i64 %5, %s.len
  %or.cond.not = select i1 %.not1, i1 %exitcond.not, i1 false, !dbg !3122
  br i1 %or.cond.not, label %for.body, label %common.ret, !dbg !3122

common.ret:                                       ; preds = %for.body, %entry
  %.lcssa = phi i1 [ true, %entry ], [ %.not1, %for.body ], !dbg !3121
  ret i1 %.lcssa, !dbg !3122
}
