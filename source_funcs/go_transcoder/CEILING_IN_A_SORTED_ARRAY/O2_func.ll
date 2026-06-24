define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3038, !DIExpression(), !3040)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3041)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3043)
  %.not = icmp ult i64 %low, %arr.len, !dbg !3044
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3044

lookup.next:                                      ; preds = %entry
  %0 = getelementptr inbounds i64, ptr %arr.data, i64 %low, !dbg !3044
  %1 = load i64, ptr %0, align 8, !dbg !3044
  %.not2 = icmp sgt i64 %x, %1, !dbg !3045
  br i1 %.not2, label %for.loop.preheader, label %common.ret, !dbg !3046

for.loop.preheader:                               ; preds = %lookup.next
    #dbg_value(i64 %low, !3038, !DIExpression(), !3047)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3048)
  %2 = icmp slt i64 %low, %high, !dbg !3049
  br i1 %2, label %for.body.preheader, label %common.ret, !dbg !3046

for.body.preheader:                               ; preds = %for.loop.preheader
  %umax = call i64 @llvm.umax.i64(i64 %low, i64 %arr.len), !dbg !3050
  br label %for.body, !dbg !3050

common.ret:                                       ; preds = %lookup.next8, %if.done4, %lookup.next16, %for.loop.preheader, %lookup.next
  %common.ret.op = phi i64 [ %low, %lookup.next ], [ -1, %for.loop.preheader ], [ %3, %lookup.next8 ], [ -1, %if.done4 ], [ %8, %lookup.next16 ]
  ret i64 %common.ret.op, !dbg !3046

for.body:                                         ; preds = %for.body.preheader, %if.done4
  %3 = phi i64 [ %8, %if.done4 ], [ %low, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %3, !3038, !DIExpression(), !3052)
  %exitcond.not = icmp eq i64 %3, %umax, !dbg !3050
  br i1 %exitcond.not, label %lookup.throw7, label %lookup.next8, !dbg !3050

lookup.next8:                                     ; preds = %for.body
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3050
  %5 = load i64, ptr %4, align 8, !dbg !3050
    #dbg_value(i64 %x, !3037, !DIExpression(), !3053)
  %6 = icmp eq i64 %5, %x, !dbg !3054
  br i1 %6, label %common.ret, label %lookup.next12, !dbg !3046

lookup.next12:                                    ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %3, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3057)
  %7 = icmp slt i64 %5, %x, !dbg !3058
  %8 = add nsw i64 %3, 1, !dbg !3046
  br i1 %7, label %cond.true, label %if.done4, !dbg !3046

cond.true:                                        ; preds = %lookup.next12
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3059)
    #dbg_value(i64 %3, !3038, !DIExpression(), !3060)
  %.not5 = icmp ult i64 %8, %arr.len, !dbg !3061
  br i1 %.not5, label %lookup.next16, label %lookup.throw15, !dbg !3061

lookup.next16:                                    ; preds = %cond.true
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3061
  %10 = load i64, ptr %9, align 8, !dbg !3061
    #dbg_value(i64 %x, !3037, !DIExpression(), !3062)
  %.not6 = icmp slt i64 %10, %x, !dbg !3063
  br i1 %.not6, label %if.done4, label %common.ret, !dbg !3046

if.done4:                                         ; preds = %lookup.next12, %lookup.next16
    #dbg_value(i64 %8, !3038, !DIExpression(), !3047)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3048)
  %exitcond12.not = icmp eq i64 %8, %high, !dbg !3049
  br i1 %exitcond12.not, label %common.ret, label %for.body, !dbg !3046

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw7:                                    ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw15:                                   ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3061
  unreachable, !dbg !3061
}
