define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 1, !3036, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
  %0 = icmp sgt i64 %n, 1
  br i1 %0, label %for.body.preheader, label %common.ret, !dbg !3040

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %arr.len, 1, !dbg !3041
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 1), !dbg !3041
  %invariant.gep = getelementptr i8, ptr %arr.data, i64 -8, !dbg !3041
  br label %for.body, !dbg !3041

common.ret:                                       ; preds = %lookup.next6, %for.loop, %entry
  %common.ret.op = phi i1 [ true, %entry ], [ false, %lookup.next6 ], [ true, %for.loop ]
  ret i1 %common.ret.op, !dbg !3040

for.loop:                                         ; preds = %lookup.next6
  %2 = add nuw nsw i64 %3, 1, !dbg !3042
    #dbg_value(i64 %2, !3036, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
  %exitcond7.not = icmp eq i64 %2, %n, !dbg !3043
  br i1 %exitcond7.not, label %common.ret, label %for.body, !dbg !3040

for.body:                                         ; preds = %for.body.preheader, %for.loop
  %3 = phi i64 [ %2, %for.loop ], [ 1, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3044)
    #dbg_value(i64 %3, !3036, !DIExpression(), !3045)
  %exitcond.not = icmp eq i64 %3, %1, !dbg !3041
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3041

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %3, !3036, !DIExpression(), !3047)
  %exitcond6.not = icmp eq i64 %3, %umax, !dbg !3048
  br i1 %exitcond6.not, label %lookup.throw5, label %lookup.next6, !dbg !3048

lookup.next6:                                     ; preds = %lookup.next
  %gep = getelementptr i64, ptr %invariant.gep, i64 %3, !dbg !3041
  %4 = load i64, ptr %gep, align 8, !dbg !3041
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3048
  %6 = load i64, ptr %5, align 8, !dbg !3048
  %.not = icmp sgt i64 %4, %6, !dbg !3049
    #dbg_value(i64 %3, !3036, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3042)
  br i1 %.not, label %common.ret, label %for.loop, !dbg !3040

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3041
  unreachable, !dbg !3041

lookup.throw5:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048
}
