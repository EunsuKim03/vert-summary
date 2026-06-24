define i64 @f_gold(ptr nocapture readonly %ar.data, i64 %ar.len, i64 %ar.cap, i64 %ar_size) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %ar.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %ar.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %ar.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %ar_size, !3035, !DIExpression(), !3038)
    #dbg_value(i64 0, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3037, !DIExpression(), !3040)
  %0 = icmp sgt i64 %ar_size, 0, !dbg !3041
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3042

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %ar_size, -1, !dbg !3043
  %.not.not = icmp ugt i64 %ar.len, %1, !dbg !3043
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3043

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %6, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %3, !3036, !DIExpression(), !3044)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3046)
  %4 = getelementptr inbounds nuw i64, ptr %ar.data, i64 %2, !dbg !3043
  %5 = load i64, ptr %4, align 8, !dbg !3043
  %6 = xor i64 %5, %3, !dbg !3047
    #dbg_value(i64 %6, !3036, !DIExpression(), !3048)
  %7 = add nuw nsw i64 %2, 1, !dbg !3049
    #dbg_value(i64 %7, !3037, !DIExpression(), !3050)
    #dbg_value(i64 %ar_size, !3035, !DIExpression(), !3051)
  %exitcond.not = icmp eq i64 %7, %ar_size, !dbg !3041
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3042

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %for.body ], !dbg !3039
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3052)
  ret i64 %.lcssa, !dbg !3053

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043
}
