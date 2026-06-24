define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3039)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3040)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3041)
  %.not = icmp ult i64 %low, %arr.len, !dbg !3042
  br i1 %.not, label %for.loop.preheader, label %lookup.throw, !dbg !3042

for.loop.preheader:                               ; preds = %entry
  %0 = add i64 %arr.len, -1, !dbg !3043
  %.in.phi.trans.insert = getelementptr inbounds i64, ptr %arr.data, i64 %low
  %.pre = load i64, ptr %.in.phi.trans.insert, align 8, !dbg !3043
  br label %for.loop, !dbg !3043

for.loop:                                         ; preds = %for.loop.preheader, %lookup.next4
  %1 = phi i64 [ %4, %lookup.next4 ], [ %.pre, %for.loop.preheader ], !dbg !3043
  %.in1 = phi i64 [ %2, %lookup.next4 ], [ %low, %for.loop.preheader ]
  %2 = add nuw i64 %.in1, 1, !dbg !3044
    #dbg_value(i64 %2, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3046)
  %.not2 = icmp sgt i64 %2, %high, !dbg !3047
  br i1 %.not2, label %for.done, label %for.body, !dbg !3043

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %.in1, %0, !dbg !3050
  br i1 %exitcond.not, label %lookup.throw3, label %lookup.next4, !dbg !3050

lookup.next4:                                     ; preds = %for.body
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3050
  %4 = load i64, ptr %3, align 8, !dbg !3050
    #dbg_value(i64 %1, !3037, !DIExpression(), !3051)
  %5 = icmp sgt i64 %4, %1, !dbg !3052
  br i1 %5, label %for.loop, label %for.done, !dbg !3043

for.done:                                         ; preds = %lookup.next4, %for.loop
    #dbg_value(i64 %1, !3037, !DIExpression(), !3053)
  ret i64 %1, !dbg !3054

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042

lookup.throw3:                                    ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050
}
