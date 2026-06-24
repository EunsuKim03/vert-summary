define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %i, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3037)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3037)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3039)
  %0 = add i64 %n, -2, !dbg !3040
  %1 = sdiv i64 %0, 2, !dbg !3041
  %2 = icmp sgt i64 %i, %1, !dbg !3042
  br i1 %2, label %common.ret, label %if.done, !dbg !3043

common.ret:                                       ; preds = %cond.true2, %entry, %if.done4
  %common.ret.op = phi i1 [ false, %if.done4 ], [ true, %entry ], [ true, %cond.true2 ]
  ret i1 %common.ret.op, !dbg !3043

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3044)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3045)
  %.not = icmp ult i64 %i, %arr.len, !dbg !3046
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3046

lookup.next:                                      ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3048)
  %3 = shl i64 %i, 1, !dbg !3049
  %4 = or disjoint i64 %3, 1, !dbg !3050
  %.not2 = icmp ult i64 %4, %arr.len, !dbg !3051
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3051

lookup.next8:                                     ; preds = %lookup.next
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %i, !dbg !3046
  %6 = load i64, ptr %5, align 8, !dbg !3046
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3051
  %8 = load i64, ptr %7, align 8, !dbg !3051
  %.not3 = icmp slt i64 %6, %8, !dbg !3052
  br i1 %.not3, label %if.done4, label %lookup.next12, !dbg !3043

lookup.next12:                                    ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3054)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3056)
  %9 = add nuw i64 %3, 2, !dbg !3057
  %.not5 = icmp ult i64 %9, %arr.len, !dbg !3058
  br i1 %.not5, label %lookup.next16, label %lookup.throw15, !dbg !3058

lookup.next16:                                    ; preds = %lookup.next12
  %10 = getelementptr inbounds i64, ptr %arr.data, i64 %9, !dbg !3058
  %11 = load i64, ptr %10, align 8, !dbg !3058
  %.not6 = icmp slt i64 %6, %11, !dbg !3059
  br i1 %.not6, label %if.done4, label %cond.true1, !dbg !3043

cond.true1:                                       ; preds = %lookup.next16
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3061)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3062)
  %12 = tail call i1 @f_gold(ptr nonnull %arr.data, i64 %arr.len, i64 %arr.cap, i64 %4, i64 %n), !dbg !3063
  br i1 %12, label %cond.true2, label %if.done4, !dbg !3043

cond.true2:                                       ; preds = %cond.true1
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3064)
    #dbg_value(i64 %i, !3035, !DIExpression(), !3065)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3066)
  %13 = tail call i1 @f_gold(ptr nonnull %arr.data, i64 %arr.len, i64 %arr.cap, i64 %9, i64 %n), !dbg !3067
  br i1 %13, label %common.ret, label %if.done4, !dbg !3043

if.done4:                                         ; preds = %cond.true2, %cond.true1, %lookup.next16, %lookup.next8
  br label %common.ret, !dbg !3068

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046

lookup.throw7:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw15:                                   ; preds = %lookup.next12
  tail call fastcc void @runtime.lookupPanic(), !dbg !3058
  unreachable, !dbg !3058
}
