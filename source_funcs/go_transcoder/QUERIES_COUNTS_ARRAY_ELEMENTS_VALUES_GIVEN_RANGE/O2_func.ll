define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3040)
    #dbg_value(i64 %y, !3037, !DIExpression(), !3040)
    #dbg_value(i64 0, !3038, !DIExpression(), !3041)
    #dbg_value(i64 0, !3039, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3044

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3045
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3045
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3045

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %6, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %2, !3039, !DIExpression(), !3047)
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3045
  %5 = load i64, ptr %4, align 8, !dbg !3045
    #dbg_value(i64 %x, !3036, !DIExpression(), !3048)
  %.not1 = icmp sge i64 %5, %x, !dbg !3049
  %.not3 = icmp sle i64 %5, %y, !dbg !3044
  %narrow = select i1 %.not1, i1 %.not3, i1 false, !dbg !3044
  %spec.select = zext i1 %narrow to i64, !dbg !3044
  %6 = add i64 %3, %spec.select, !dbg !3044
  %7 = add nuw nsw i64 %2, 1, !dbg !3050
    #dbg_value(i64 %7, !3039, !DIExpression(), !3051)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3052)
  %exitcond.not = icmp eq i64 %7, %n, !dbg !3043
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3044

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3053)
  ret i64 %.lcssa, !dbg !3054

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3045
  unreachable, !dbg !3045
}
