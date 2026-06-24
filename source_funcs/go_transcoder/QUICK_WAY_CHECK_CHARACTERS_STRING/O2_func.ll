define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %s.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3033)
    #dbg_value(i64 %s.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3033)
    #dbg_value(i64 %s.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3033)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %s.len, !3031, !DIExpression(), !3035)
    #dbg_value(i64 1, !3032, !DIExpression(), !3036)
  %0 = icmp slt i64 %s.len, 2, !dbg !3037
  br i1 %0, label %common.ret, label %for.body.preheader, !dbg !3038

for.body.preheader:                               ; preds = %entry
  %1 = load i8, ptr %s.data, align 1
  br label %lookup.next4, !dbg !3039

for.loop:                                         ; preds = %lookup.next4
  %2 = add nuw nsw i64 %3, 1, !dbg !3040
    #dbg_value(i64 %2, !3032, !DIExpression(), !3041)
    #dbg_value(i64 %s.len, !3031, !DIExpression(), !3042)
  %exitcond.not = icmp eq i64 %2, %s.len, !dbg !3037
  br i1 %exitcond.not, label %common.ret, label %lookup.next4, !dbg !3038

lookup.next4:                                     ; preds = %for.loop, %for.body.preheader
  %3 = phi i64 [ %2, %for.loop ], [ 1, %for.body.preheader ]
    #dbg_value(i64 %3, !3032, !DIExpression(), !3043)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3044)
  %4 = getelementptr inbounds nuw i8, ptr %s.data, i64 %3, !dbg !3039
  %5 = load i8, ptr %4, align 1, !dbg !3039
  %.not1 = icmp eq i8 %5, %1, !dbg !3045
    #dbg_value(i64 %3, !3032, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3040)
  br i1 %.not1, label %for.loop, label %common.ret, !dbg !3038

common.ret:                                       ; preds = %lookup.next4, %for.loop, %entry
  %.lcssa = phi i1 [ true, %entry ], [ false, %lookup.next4 ], [ true, %for.loop ], !dbg !3037
  ret i1 %.lcssa, !dbg !3038
}
