define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %key, i64 %capacity) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %key, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %capacity, !3037, !DIExpression(), !3041)
  %.not = icmp slt i64 %n, %capacity, !dbg !3042
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3043

for.loop.preheader:                               ; preds = %entry
  %0 = add i64 %n, -1, !dbg !3044
  %1 = icmp sgt i64 %0, -1, !dbg !3045
  br i1 %1, label %cond.true.preheader, label %for.done, !dbg !3043

cond.true.preheader:                              ; preds = %for.loop.preheader
  %.not3.first_iter = icmp ult i64 %0, %arr.len, !dbg !3046
  br label %cond.true, !dbg !3046

common.ret:                                       ; preds = %entry, %lookup.next12
  %common.ret.op = phi i64 [ %10, %lookup.next12 ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3043

cond.true:                                        ; preds = %cond.true.preheader, %lookup.next8
  %2 = phi i64 [ %7, %lookup.next8 ], [ %0, %cond.true.preheader ]
  %.in10 = phi i64 [ %2, %lookup.next8 ], [ %n, %cond.true.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3048)
  br i1 %.not3.first_iter, label %lookup.next, label %lookup.throw, !dbg !3046

lookup.next:                                      ; preds = %cond.true
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3046
  %4 = load i64, ptr %3, align 8, !dbg !3046
    #dbg_value(i64 %key, !3036, !DIExpression(), !3049)
  %5 = icmp sgt i64 %4, %key, !dbg !3050
  br i1 %5, label %lookup.next4, label %for.done, !dbg !3043

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3052)
  %.not6 = icmp ult i64 %.in10, %arr.len, !dbg !3053
  br i1 %.not6, label %lookup.next8, label %lookup.throw7, !dbg !3053

lookup.next8:                                     ; preds = %lookup.next4
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %.in10, !dbg !3053
  store i64 %4, ptr %6, align 8, !dbg !3053
    #dbg_value(i64 %2, !3038, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3054)
  %7 = add nsw i64 %2, -1, !dbg !3044
    #dbg_value(i64 %7, !3038, !DIExpression(), !3055)
  %8 = icmp sgt i64 %2, 0, !dbg !3045
  br i1 %8, label %cond.true, label %for.done, !dbg !3043

for.done:                                         ; preds = %lookup.next8, %lookup.next, %for.loop.preheader
  %.in.lcssa = phi i64 [ %n, %for.loop.preheader ], [ %.in10, %lookup.next ], [ 0, %lookup.next8 ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3056)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3057)
    #dbg_value(i64 %key, !3036, !DIExpression(), !3058)
  %.not4 = icmp ult i64 %.in.lcssa, %arr.len, !dbg !3059
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3059

lookup.next12:                                    ; preds = %for.done
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %.in.lcssa, !dbg !3059
  store i64 %key, ptr %9, align 8, !dbg !3059
    #dbg_value(i64 %n, !3035, !DIExpression(), !3060)
  %10 = add i64 %n, 1, !dbg !3061
  br label %common.ret, !dbg !3062

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw7:                                    ; preds = %lookup.next4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw11:                                   ; preds = %for.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3059
  unreachable, !dbg !3059
}
