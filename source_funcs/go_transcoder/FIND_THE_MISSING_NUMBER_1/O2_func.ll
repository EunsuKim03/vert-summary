define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3038)
    #dbg_value(i64 1, !3037, !DIExpression(), !3039)
    #dbg_value(i64 2, !3036, !DIExpression(), !3040)
  %0 = add i64 %n, 1
  %.not6 = icmp slt i64 %0, 2, !dbg !3041
  br i1 %.not6, label %for.done, label %for.body.preheader, !dbg !3042

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %a.len, 2, !dbg !3043
  %invariant.gep = getelementptr i8, ptr %a.data, i64 -16, !dbg !3043
  br label %for.body, !dbg !3043

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %6, %lookup.next ], [ 1, %for.body.preheader ]
  %3 = phi i64 [ %7, %lookup.next ], [ 2, %for.body.preheader ]
    #dbg_value(!DIArgList(i64 %2, i64 %3), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3044)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %3, !3036, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %3, %1, !dbg !3043
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3043

lookup.next:                                      ; preds = %for.body
  %4 = add i64 %2, %3, !dbg !3044
    #dbg_value(i64 %4, !3037, !DIExpression(), !3044)
  %gep = getelementptr i64, ptr %invariant.gep, i64 %3, !dbg !3043
  %5 = load i64, ptr %gep, align 8, !dbg !3043
  %6 = sub i64 %4, %5, !dbg !3047
    #dbg_value(i64 %6, !3037, !DIExpression(), !3047)
  %7 = add i64 %3, 1, !dbg !3048
    #dbg_value(i64 %7, !3036, !DIExpression(), !3049)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  %.not = icmp sgt i64 %7, %0, !dbg !3041
  br i1 %.not, label %for.done, label %for.body, !dbg !3042

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %6, %lookup.next ], !dbg !3039
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3051)
  ret i64 %.lcssa, !dbg !3052

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043
}
