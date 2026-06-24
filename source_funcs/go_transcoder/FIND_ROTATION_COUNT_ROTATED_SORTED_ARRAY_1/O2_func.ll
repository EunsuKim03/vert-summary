define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3040)
  %0 = icmp slt i64 %high, %low, !dbg !3041
  br i1 %0, label %common.ret, label %if.done.lr.ph, !dbg !3042

if.done.lr.ph:                                    ; preds = %entry, %if.done9
  %high.tr.ph31 = phi i64 [ %high.tr25, %if.done9 ], [ %high, %entry ]
  %low.tr.ph30 = phi i64 [ %26, %if.done9 ], [ %low, %entry ]
    #dbg_value(i64 %high.tr.ph31, !3036, !DIExpression(), !3038)
    #dbg_value(i64 %low.tr.ph30, !3035, !DIExpression(), !3038)
  br label %if.done, !dbg !3042

common.ret:                                       ; preds = %if.done9, %if.then8, %if.done, %lookup.next21, %lookup.next13, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ %6, %lookup.next13 ], [ %4, %lookup.next21 ], [ %low.tr.ph30, %if.done ], [ 0, %if.then8 ], [ 0, %if.done9 ]
  ret i64 %common.ret.op, !dbg !3042

if.done:                                          ; preds = %if.done.lr.ph, %if.then8
  %high.tr25 = phi i64 [ %high.tr.ph31, %if.done.lr.ph ], [ %24, %if.then8 ]
    #dbg_value(i64 %high.tr25, !3036, !DIExpression(), !3043)
    #dbg_value(i64 %low.tr.ph30, !3035, !DIExpression(), !3044)
  %1 = icmp eq i64 %high.tr25, %low.tr.ph30, !dbg !3045
  br i1 %1, label %common.ret, label %if.done2, !dbg !3042

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %high.tr25, !3036, !DIExpression(), !3046)
    #dbg_value(i64 %low.tr.ph30, !3035, !DIExpression(), !3047)
  %2 = sub i64 %high.tr25, %low.tr.ph30, !dbg !3048
  %3 = sdiv i64 %2, 2, !dbg !3049
  %4 = add i64 %3, %low.tr.ph30, !dbg !3050
    #dbg_value(i64 %4, !3037, !DIExpression(), !3051)
  %5 = icmp slt i64 %4, %high.tr25, !dbg !3052
  br i1 %5, label %cond.true, label %if.done4, !dbg !3042

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3054)
  %6 = add nsw i64 %4, 1, !dbg !3055
  %.not = icmp ult i64 %6, %arr.len, !dbg !3056
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3056

lookup.next:                                      ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3057)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3058)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3059
  br i1 %.not3, label %lookup.next13, label %lookup.throw12, !dbg !3059

lookup.next13:                                    ; preds = %lookup.next
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3056
  %8 = load i64, ptr %7, align 8, !dbg !3056
  %9 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3059
  %10 = load i64, ptr %9, align 8, !dbg !3059
  %11 = icmp slt i64 %8, %10, !dbg !3060
  br i1 %11, label %common.ret, label %if.done4, !dbg !3042

if.done4:                                         ; preds = %lookup.next13, %if.done2
    #dbg_value(i64 %4, !3037, !DIExpression(), !3061)
    #dbg_value(i64 %low.tr.ph30, !3035, !DIExpression(), !3062)
  %12 = icmp sgt i64 %4, %low.tr.ph30, !dbg !3063
  br i1 %12, label %cond.true5, label %if.done7, !dbg !3042

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3064)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3065)
  %.not4 = icmp ult i64 %4, %arr.len, !dbg !3066
  br i1 %.not4, label %lookup.next17, label %lookup.throw16, !dbg !3066

lookup.next17:                                    ; preds = %cond.true5
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3067)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3068)
  %13 = add i64 %4, -1, !dbg !3069
  %.not5 = icmp ult i64 %13, %arr.len, !dbg !3070
  br i1 %.not5, label %lookup.next21, label %lookup.throw20, !dbg !3070

lookup.next21:                                    ; preds = %lookup.next17
  %14 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3066
  %15 = load i64, ptr %14, align 8, !dbg !3066
  %16 = getelementptr inbounds i64, ptr %arr.data, i64 %13, !dbg !3070
  %17 = load i64, ptr %16, align 8, !dbg !3070
  %18 = icmp slt i64 %15, %17, !dbg !3071
  br i1 %18, label %common.ret, label %if.done7, !dbg !3042

if.done7:                                         ; preds = %lookup.next21, %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3072)
    #dbg_value(i64 %high.tr25, !3036, !DIExpression(), !3073)
  %.not6 = icmp ult i64 %high.tr25, %arr.len, !dbg !3074
  br i1 %.not6, label %lookup.next25, label %lookup.throw24, !dbg !3074

lookup.next25:                                    ; preds = %if.done7
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3075)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3076)
  %.not7 = icmp ult i64 %4, %arr.len, !dbg !3077
  br i1 %.not7, label %lookup.next29, label %lookup.throw28, !dbg !3077

lookup.next29:                                    ; preds = %lookup.next25
  %19 = getelementptr inbounds i64, ptr %arr.data, i64 %high.tr25, !dbg !3074
  %20 = load i64, ptr %19, align 8, !dbg !3074
  %21 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3077
  %22 = load i64, ptr %21, align 8, !dbg !3077
  %23 = icmp sgt i64 %20, %22, !dbg !3078
  br i1 %23, label %if.then8, label %if.done9, !dbg !3042

if.then8:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3079)
    #dbg_value(i64 %low.tr.ph30, !3035, !DIExpression(), !3080)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3081)
  %24 = add i64 %4, -1, !dbg !3082
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %24, !3036, !DIExpression(), !3039)
  %25 = icmp slt i64 %24, %low.tr.ph30, !dbg !3041
  br i1 %25, label %common.ret, label %if.done, !dbg !3042

if.done9:                                         ; preds = %lookup.next29
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3083)
    #dbg_value(i64 %4, !3037, !DIExpression(), !3084)
  %26 = add nuw i64 %4, 1, !dbg !3085
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %high.tr25, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %26, !3035, !DIExpression(), !3040)
  %27 = icmp slt i64 %high.tr25, %26, !dbg !3041
  br i1 %27, label %common.ret, label %if.done.lr.ph, !dbg !3042

lookup.throw:                                     ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056

lookup.throw12:                                   ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3059
  unreachable, !dbg !3059

lookup.throw16:                                   ; preds = %cond.true5
  tail call fastcc void @runtime.lookupPanic(), !dbg !3066
  unreachable, !dbg !3066

lookup.throw20:                                   ; preds = %lookup.next17
  tail call fastcc void @runtime.lookupPanic(), !dbg !3070
  unreachable, !dbg !3070

lookup.throw24:                                   ; preds = %if.done7
  tail call fastcc void @runtime.lookupPanic(), !dbg !3074
  unreachable, !dbg !3074

lookup.throw28:                                   ; preds = %lookup.next25
  tail call fastcc void @runtime.lookupPanic(), !dbg !3077
  unreachable, !dbg !3077
}
