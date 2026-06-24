define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %X) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %X, !3036, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
  %0 = icmp eq i64 %arr.len, 0, !dbg !3042
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3042

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %arr.data, align 8, !dbg !3042
  %2 = icmp slt i64 %X, %1, !dbg !3043
  br i1 %2, label %common.ret, label %if.else, !dbg !3044

common.ret:                                       ; preds = %lookup.next16, %for.body4, %for.loop2.preheader, %lookup.next8, %lookup.next
  %common.ret.op = phi i64 [ 0, %lookup.next ], [ %n, %lookup.next8 ], [ %.lcssa10, %for.loop2.preheader ], [ %16, %lookup.next16 ], [ %n, %for.body4 ]
  ret i64 %common.ret.op, !dbg !3044

if.else:                                          ; preds = %lookup.next
    #dbg_value(i64 %X, !3036, !DIExpression(), !3045)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %3 = add i64 %n, -1, !dbg !3048
  %.not = icmp ult i64 %3, %arr.len, !dbg !3049
  br i1 %.not, label %lookup.next8, label %lookup.throw7, !dbg !3049

lookup.next8:                                     ; preds = %if.else
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3049
  %5 = load i64, ptr %4, align 8, !dbg !3049
  %6 = icmp sgt i64 %X, %5, !dbg !3050
  br i1 %6, label %common.ret, label %for.loop.preheader, !dbg !3044

for.loop.preheader:                               ; preds = %lookup.next8
    #dbg_value(i64 1, !3038, !DIExpression(), !3051)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3052)
  %7 = icmp sgt i64 %n, 1, !dbg !3053
  br i1 %7, label %cond.true, label %for.loop2.preheader, !dbg !3044

for.loop:                                         ; preds = %lookup.next12
  %8 = shl i64 %10, 1, !dbg !3054
    #dbg_value(i64 %8, !3038, !DIExpression(), !3051)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3052)
  %9 = icmp slt i64 %8, %n, !dbg !3053
  br i1 %9, label %cond.true, label %for.loop2.preheader, !dbg !3044

cond.true:                                        ; preds = %for.loop.preheader, %for.loop
  %10 = phi i64 [ %8, %for.loop ], [ 1, %for.loop.preheader ]
  %11 = phi i64 [ %10, %for.loop ], [ 0, %for.loop.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %10, !3038, !DIExpression(), !3056)
  %.not3 = icmp ult i64 %10, %arr.len, !dbg !3057
  br i1 %.not3, label %lookup.next12, label %lookup.throw11, !dbg !3057

lookup.next12:                                    ; preds = %cond.true
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3057
  %13 = load i64, ptr %12, align 8, !dbg !3057
    #dbg_value(i64 %X, !3036, !DIExpression(), !3058)
  %14 = icmp slt i64 %13, %X, !dbg !3059
    #dbg_value(i64 %10, !3037, !DIExpression(), !3060)
    #dbg_value(i64 %10, !3038, !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value), !3061)
  br i1 %14, label %for.loop, label %for.loop2.preheader, !dbg !3044

for.loop2.preheader:                              ; preds = %lookup.next12, %for.loop, %for.loop.preheader
  %.lcssa10 = phi i64 [ 0, %for.loop.preheader ], [ %10, %for.loop ], [ %11, %lookup.next12 ], !dbg !3062
    #dbg_value(i64 %.lcssa10, !3037, !DIExpression(), !3063)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3064)
  %15 = icmp slt i64 %.lcssa10, %n, !dbg !3065
  br i1 %15, label %cond.true3.preheader, label %common.ret, !dbg !3044

cond.true3.preheader:                             ; preds = %for.loop2.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa10, i64 %arr.len), !dbg !3066
  br label %cond.true3, !dbg !3066

cond.true3:                                       ; preds = %cond.true3.preheader, %for.body4
  %16 = phi i64 [ %20, %for.body4 ], [ %.lcssa10, %cond.true3.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3067)
    #dbg_value(i64 %16, !3037, !DIExpression(), !3068)
  %exitcond.not = icmp eq i64 %16, %umax, !dbg !3066
  br i1 %exitcond.not, label %lookup.throw15, label %lookup.next16, !dbg !3066

lookup.next16:                                    ; preds = %cond.true3
  %17 = getelementptr inbounds i64, ptr %arr.data, i64 %16, !dbg !3066
  %18 = load i64, ptr %17, align 8, !dbg !3066
    #dbg_value(i64 %X, !3036, !DIExpression(), !3069)
  %19 = icmp slt i64 %18, %X, !dbg !3070
  br i1 %19, label %for.body4, label %common.ret, !dbg !3044

for.body4:                                        ; preds = %lookup.next16
  %20 = add nsw i64 %16, 1, !dbg !3071
    #dbg_value(i64 %20, !3037, !DIExpression(), !3063)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3064)
  %exitcond15.not = icmp eq i64 %20, %n, !dbg !3065
  br i1 %exitcond15.not, label %common.ret, label %cond.true3, !dbg !3044

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042

lookup.throw7:                                    ; preds = %if.else
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw11:                                   ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

lookup.throw15:                                   ; preds = %cond.true3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3066
  unreachable, !dbg !3066
}
