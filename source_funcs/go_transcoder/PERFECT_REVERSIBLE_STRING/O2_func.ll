define noundef i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %str.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %str.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %str.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 0, !3035, !DIExpression(), !3038)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3039)
    #dbg_value(i64 %str.len, !3036, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3040)
  %0 = add i64 %str.len, -1, !dbg !3041
  %1 = icmp slt i64 %0, 1, !dbg !3042
  br i1 %1, label %common.ret, label %for.body, !dbg !3041

for.loop:                                         ; preds = %lookup.next4
  %2 = add nuw nsw i64 %5, 1, !dbg !3043
    #dbg_value(i64 %2, !3035, !DIExpression(), !3043)
  %3 = add nsw i64 %4, -1, !dbg !3041
    #dbg_value(i64 %3, !3036, !DIExpression(), !3044)
  %.not9 = icmp slt i64 %2, %3, !dbg !3042
  br i1 %.not9, label %for.body, label %common.ret, !dbg !3041

for.body:                                         ; preds = %entry, %for.loop
  %4 = phi i64 [ %3, %for.loop ], [ %0, %entry ]
  %5 = phi i64 [ %2, %for.loop ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %5, !3035, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %5, %str.len, !dbg !3047
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3047

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %4, !3036, !DIExpression(), !3049)
  %.not2 = icmp ult i64 %4, %str.len, !dbg !3050
  br i1 %.not2, label %lookup.next4, label %lookup.throw3, !dbg !3050

lookup.next4:                                     ; preds = %lookup.next
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %5, !dbg !3047
  %7 = load i8, ptr %6, align 1, !dbg !3047
  %8 = getelementptr inbounds i8, ptr %str.data, i64 %4, !dbg !3050
  %9 = load i8, ptr %8, align 1, !dbg !3050
  %.not3 = icmp eq i8 %7, %9, !dbg !3051
    #dbg_value(i64 %5, !3035, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3043)
    #dbg_value(i64 %4, !3036, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3052)
  br i1 %.not3, label %for.loop, label %common.ret, !dbg !3041

common.ret:                                       ; preds = %lookup.next4, %for.loop, %entry
  %.lcssa = phi i1 [ true, %entry ], [ false, %lookup.next4 ], [ true, %for.loop ], !dbg !3042
  ret i1 %.lcssa, !dbg !3041

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050
}
