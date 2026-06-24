define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n, i64 %l, i64 %r) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %r, !3037, !DIExpression(), !3040)
    #dbg_value(i64 0, !3038, !DIExpression(), !3041)
    #dbg_value(i64 %l, !3036, !DIExpression(), !3042)
    #dbg_value(i64 %l, !3039, !DIExpression(), !3043)
  %0 = icmp slt i64 %l, %r, !dbg !3044
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3045

for.body.preheader:                               ; preds = %entry
  %1 = call i64 @llvm.usub.sat.i64(i64 %a.len, i64 %l), !dbg !3046
  %2 = xor i64 %l, -1, !dbg !3046
  %3 = add i64 %r, %2, !dbg !3046
  %4 = add nsw i64 %l, 1, !dbg !3046
  %umax7 = call i64 @llvm.umax.i64(i64 %a.len, i64 %4), !dbg !3046
  %5 = xor i64 %l, -1, !dbg !3046
  %6 = add i64 %umax7, %5, !dbg !3046
  %umin = call i64 @llvm.umin.i64(i64 %3, i64 %6), !dbg !3046
  %.not.not = icmp ugt i64 %1, %umin, !dbg !3046
  br i1 %.not.not, label %for.body.preheader.split, label %lookup.throw, !dbg !3046

for.body.preheader.split:                         ; preds = %for.body.preheader
  %.not.not9 = icmp ugt i64 %6, %3, !dbg !3046
  br i1 %.not.not9, label %for.body.preheader.split.split, label %lookup.throw3, !dbg !3047

for.body.preheader.split.split:                   ; preds = %for.body.preheader.split
  %.phi.trans.insert = getelementptr inbounds i64, ptr %a.data, i64 %l
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !3046
  br label %for.body, !dbg !3046

for.body:                                         ; preds = %for.body.preheader.split.split, %for.body
  %7 = phi i64 [ %12, %for.body ], [ %.pre, %for.body.preheader.split.split ], !dbg !3046
  %8 = phi i64 [ %10, %for.body ], [ %l, %for.body.preheader.split.split ]
  %9 = phi i64 [ %spec.select, %for.body ], [ 0, %for.body.preheader.split.split ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %8, !3039, !DIExpression(), !3049)
  %10 = add nsw i64 %8, 1, !dbg !3050
  %11 = getelementptr inbounds i64, ptr %a.data, i64 %10, !dbg !3047
  %12 = load i64, ptr %11, align 8, !dbg !3047
  %13 = icmp eq i64 %7, %12, !dbg !3051
  %14 = zext i1 %13 to i64, !dbg !3045
  %spec.select = add i64 %9, %14, !dbg !3045
    #dbg_value(i64 %10, !3039, !DIExpression(), !3052)
    #dbg_value(i64 %r, !3037, !DIExpression(), !3053)
  %exitcond.not = icmp eq i64 %10, %r, !dbg !3044
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3045

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3054)
  ret i64 %.lcssa, !dbg !3055

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw3:                                    ; preds = %for.body.preheader.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047
}
