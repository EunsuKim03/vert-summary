define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3040)
  %0 = icmp slt i64 %high, %low, !dbg !3041
  br i1 %0, label %if.then, label %if.done.lr.ph, !dbg !3042

if.done.lr.ph:                                    ; preds = %entry, %if.done9
  %high.tr.ph45 = phi i64 [ %high.tr43, %if.done9 ], [ %high, %entry ]
  %low.tr.ph44 = phi i64 [ %30, %if.done9 ], [ %low, %entry ]
    #dbg_value(i64 %high.tr.ph45, !3036, !DIExpression(), !3038)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3038)
  br label %if.done, !dbg !3042

if.then:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3043)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3044
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3044

common.ret:                                       ; preds = %lookup.next33, %lookup.next21, %lookup.next13, %lookup.next
  %common.ret.op = phi i64 [ %2, %lookup.next ], [ %5, %lookup.next13 ], [ %19, %lookup.next33 ], [ %12, %lookup.next21 ]
  ret i64 %common.ret.op, !dbg !3042

lookup.next:                                      ; preds = %if.done9, %if.then8, %if.then
  %2 = load i64, ptr %arr.data, align 8, !dbg !3044
  br label %common.ret, !dbg !3045

if.done:                                          ; preds = %if.done.lr.ph, %if.then8
  %high.tr43 = phi i64 [ %high.tr.ph45, %if.done.lr.ph ], [ %28, %if.then8 ]
    #dbg_value(i64 %high.tr43, !3036, !DIExpression(), !3046)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3047)
  %3 = icmp eq i64 %high.tr43, %low.tr.ph44, !dbg !3048
  br i1 %3, label %if.then1, label %if.done2, !dbg !3042

if.then1:                                         ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3050)
  %.not11 = icmp ult i64 %low.tr.ph44, %arr.len, !dbg !3051
  br i1 %.not11, label %lookup.next13, label %lookup.throw12, !dbg !3051

lookup.next13:                                    ; preds = %if.then1
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %low.tr.ph44, !dbg !3051
  %5 = load i64, ptr %4, align 8, !dbg !3051
  br label %common.ret, !dbg !3052

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %high.tr43, !3036, !DIExpression(), !3053)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3054)
  %6 = sub i64 %high.tr43, %low.tr.ph44, !dbg !3055
  %7 = sdiv i64 %6, 2, !dbg !3056
  %8 = add i64 %7, %low.tr.ph44, !dbg !3057
    #dbg_value(i64 %8, !3037, !DIExpression(), !3058)
  %9 = icmp slt i64 %8, %high.tr43, !dbg !3059
  br i1 %9, label %cond.true, label %if.done4, !dbg !3042

cond.true:                                        ; preds = %if.done2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3061)
  %10 = add nsw i64 %8, 1, !dbg !3062
  %.not = icmp ult i64 %10, %arr.len, !dbg !3063
  br i1 %.not, label %lookup.next17, label %lookup.throw16, !dbg !3063

lookup.next17:                                    ; preds = %cond.true
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3064)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3065)
  %.not4 = icmp ult i64 %8, %arr.len, !dbg !3066
  br i1 %.not4, label %lookup.next21, label %lookup.throw20, !dbg !3066

lookup.next21:                                    ; preds = %lookup.next17
  %11 = getelementptr inbounds i64, ptr %arr.data, i64 %10, !dbg !3063
  %12 = load i64, ptr %11, align 8, !dbg !3063
  %13 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3066
  %14 = load i64, ptr %13, align 8, !dbg !3066
  %15 = icmp slt i64 %12, %14, !dbg !3067
  br i1 %15, label %common.ret, label %if.done4, !dbg !3042

if.done4:                                         ; preds = %lookup.next21, %if.done2
    #dbg_value(i64 %8, !3037, !DIExpression(), !3068)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3069)
  %16 = icmp sgt i64 %8, %low.tr.ph44, !dbg !3070
  br i1 %16, label %cond.true5, label %if.done7, !dbg !3042

cond.true5:                                       ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3071)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3072)
  %.not5 = icmp ult i64 %8, %arr.len, !dbg !3073
  br i1 %.not5, label %lookup.next29, label %lookup.throw28, !dbg !3073

lookup.next29:                                    ; preds = %cond.true5
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3074)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3075)
  %17 = add i64 %8, -1, !dbg !3076
  %.not6 = icmp ult i64 %17, %arr.len, !dbg !3077
  br i1 %.not6, label %lookup.next33, label %lookup.throw32, !dbg !3077

lookup.next33:                                    ; preds = %lookup.next29
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3073
  %19 = load i64, ptr %18, align 8, !dbg !3073
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3077
  %21 = load i64, ptr %20, align 8, !dbg !3077
  %22 = icmp slt i64 %19, %21, !dbg !3078
  br i1 %22, label %common.ret, label %if.done7, !dbg !3042

if.done7:                                         ; preds = %lookup.next33, %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3079)
    #dbg_value(i64 %high.tr43, !3036, !DIExpression(), !3080)
  %.not7 = icmp ult i64 %high.tr43, %arr.len, !dbg !3081
  br i1 %.not7, label %lookup.next41, label %lookup.throw40, !dbg !3081

lookup.next41:                                    ; preds = %if.done7
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3082)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3083)
  %.not8 = icmp ult i64 %8, %arr.len, !dbg !3084
  br i1 %.not8, label %lookup.next45, label %lookup.throw44, !dbg !3084

lookup.next45:                                    ; preds = %lookup.next41
  %23 = getelementptr inbounds i64, ptr %arr.data, i64 %high.tr43, !dbg !3081
  %24 = load i64, ptr %23, align 8, !dbg !3081
  %25 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3084
  %26 = load i64, ptr %25, align 8, !dbg !3084
  %27 = icmp sgt i64 %24, %26, !dbg !3085
  br i1 %27, label %if.then8, label %if.done9, !dbg !3042

if.then8:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3086)
    #dbg_value(i64 %low.tr.ph44, !3035, !DIExpression(), !3087)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3088)
  %28 = add i64 %8, -1, !dbg !3089
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %28, !3036, !DIExpression(), !3039)
  %29 = icmp slt i64 %28, %low.tr.ph44, !dbg !3041
  br i1 %29, label %lookup.next, label %if.done, !dbg !3042

if.done9:                                         ; preds = %lookup.next45
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3090)
    #dbg_value(i64 %8, !3037, !DIExpression(), !3091)
  %30 = add nuw i64 %8, 1, !dbg !3092
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %high.tr43, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %30, !3035, !DIExpression(), !3040)
  %31 = icmp slt i64 %high.tr43, %30, !dbg !3041
  br i1 %31, label %lookup.next, label %if.done.lr.ph, !dbg !3042

lookup.throw:                                     ; preds = %if.then
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw12:                                   ; preds = %if.then1
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw16:                                   ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3063
  unreachable, !dbg !3063

lookup.throw20:                                   ; preds = %lookup.next17
  tail call fastcc void @runtime.lookupPanic(), !dbg !3066
  unreachable, !dbg !3066

lookup.throw28:                                   ; preds = %cond.true5
  tail call fastcc void @runtime.lookupPanic(), !dbg !3073
  unreachable, !dbg !3073

lookup.throw32:                                   ; preds = %lookup.next29
  tail call fastcc void @runtime.lookupPanic(), !dbg !3077
  unreachable, !dbg !3077

lookup.throw40:                                   ; preds = %if.done7
  tail call fastcc void @runtime.lookupPanic(), !dbg !3081
  unreachable, !dbg !3081

lookup.throw44:                                   ; preds = %lookup.next41
  tail call fastcc void @runtime.lookupPanic(), !dbg !3084
  unreachable, !dbg !3084
}
