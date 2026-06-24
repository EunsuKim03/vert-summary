define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3042)
  %0 = add i64 %n, -1, !dbg !3043
  %.not = icmp slt i64 %k, %0, !dbg !3044
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3045

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 0, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %1 = icmp sgt i64 %n, 0, !dbg !3048
  br i1 %1, label %for.body.preheader, label %common.ret, !dbg !3045

for.body.preheader:                               ; preds = %for.loop.preheader
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 0, !3039, !DIExpression(), !3050)
  %exitcond.peel.not = icmp eq i64 %a.len, 0, !dbg !3051
  br i1 %exitcond.peel.not, label %lookup.throw, label %lookup.next.peel, !dbg !3051

lookup.next.peel:                                 ; preds = %for.body.preheader
  %2 = load i64, ptr %a.data, align 8, !dbg !3051
    #dbg_value(i64 0, !3037, !DIExpression(), !3052)
  %3 = icmp slt i64 %2, 1, !dbg !3053
  %4 = tail call i64 @llvm.smax.i64(i64 %2, i64 0), !dbg !3045
  %5 = zext i1 %3 to i64, !dbg !3045
    #dbg_value(i64 %5, !3038, !DIExpression(), !3054)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3055)
  %.not6.peel = icmp sle i64 %k, %5, !dbg !3056
    #dbg_value(i64 0, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3057)
    #dbg_value(i64 1, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond13.peel.not = icmp eq i64 %n, 1
  %or.cond = or i1 %.not6.peel, %exitcond13.peel.not, !dbg !3045
  br i1 %or.cond, label %common.ret, label %for.body, !dbg !3045

common.ret:                                       ; preds = %lookup.next, %lookup.next.peel, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ 0, %for.loop.preheader ], [ %4, %lookup.next.peel ], [ %13, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3045

for.body:                                         ; preds = %lookup.next, %lookup.next.peel
  %6 = phi i64 [ 1, %lookup.next.peel ], [ %15, %lookup.next ]
  %7 = phi i64 [ %5, %lookup.next.peel ], [ %14, %lookup.next ]
  %8 = phi i64 [ %4, %lookup.next.peel ], [ %13, %lookup.next ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %6, !3039, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %6, %a.len, !dbg !3051
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3051

lookup.next:                                      ; preds = %for.body
  %9 = getelementptr inbounds nuw i64, ptr %a.data, i64 %6, !dbg !3051
  %10 = load i64, ptr %9, align 8, !dbg !3051
    #dbg_value(i64 %8, !3037, !DIExpression(), !3052)
  %11 = icmp sgt i64 %10, %8, !dbg !3053
  %12 = add i64 %7, 1, !dbg !3045
  %13 = tail call i64 @llvm.smax.i64(i64 %10, i64 %8), !dbg !3045
  %14 = select i1 %11, i64 1, i64 %12, !dbg !3045
    #dbg_value(i64 %14, !3038, !DIExpression(), !3054)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3055)
  %.not6 = icmp sge i64 %14, %k, !dbg !3056
    #dbg_value(i64 %6, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3057)
  %15 = add nuw nsw i64 %6, 1
    #dbg_value(i64 %15, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond13.not = icmp eq i64 %15, %n
  %or.cond15 = select i1 %.not6, i1 true, i1 %exitcond13.not, !dbg !3045
  br i1 %or.cond15, label %common.ret, label %for.body, !dbg !3045, !llvm.loop !3058

lookup.throw:                                     ; preds = %for.body, %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051
}
