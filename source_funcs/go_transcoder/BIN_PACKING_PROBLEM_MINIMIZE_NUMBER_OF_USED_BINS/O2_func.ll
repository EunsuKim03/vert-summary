define i64 @f_gold(ptr nocapture readonly %weight.data, i64 %weight.len, i64 %weight.cap, i64 %n, i64 %c) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %weight.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %weight.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %weight.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 %c, !3036, !DIExpression(), !3042)
    #dbg_value(i64 %c, !3038, !DIExpression(), !3043)
    #dbg_value(i64 0, !3039, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3046

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3047
  %.not.not = icmp ugt i64 %weight.len, %1, !dbg !3047
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3047

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %10, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %9, %for.body ], [ %c, %for.body.preheader ]
  %4 = phi i64 [ %spec.select, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3039, !DIExpression(), !3049)
  %5 = getelementptr inbounds nuw i64, ptr %weight.data, i64 %2, !dbg !3047
  %6 = load i64, ptr %5, align 8, !dbg !3047
    #dbg_value(i64 %3, !3038, !DIExpression(), !3050)
  %7 = icmp sgt i64 %6, %3, !dbg !3051
  %8 = zext i1 %7 to i64, !dbg !3046
  %spec.select = add i64 %4, %8, !dbg !3046
  %spec.select7 = select i1 %7, i64 %c, i64 %3, !dbg !3046
  %9 = sub i64 %spec.select7, %6, !dbg !3046
  %10 = add nuw nsw i64 %2, 1, !dbg !3052
    #dbg_value(i64 %10, !3039, !DIExpression(), !3053)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3054)
  %exitcond.not = icmp eq i64 %10, %n, !dbg !3045
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3046

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3055)
  ret i64 %.lcssa, !dbg !3056

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047
}
