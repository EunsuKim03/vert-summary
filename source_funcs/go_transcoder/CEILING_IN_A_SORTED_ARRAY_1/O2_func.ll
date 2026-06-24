define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %if.else6, %entry
  %low.tr.ph = phi i64 [ %11, %if.else6 ], [ %low, %entry ]
  %high.tr.ph = phi i64 [ %high.tr26, %if.else6 ], [ %high, %entry ]
  %.not = icmp ult i64 %low.tr.ph, %arr.len
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %high.tr.ph, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3038, !DIExpression(), !3040)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3041)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
    #dbg_value(i64 %low.tr.ph, !3035, !DIExpression(), !3043)
  br i1 %.not, label %lookup.next.lr.ph, label %lookup.throw, !dbg !3044

lookup.next.lr.ph:                                ; preds = %tailrecurse.outer
  %0 = getelementptr inbounds i64, ptr %arr.data, i64 %low.tr.ph
  %1 = load i64, ptr %0, align 8
  %.not3 = icmp sgt i64 %x, %1
  br i1 %.not3, label %lookup.next, label %common.ret, !dbg !3045

lookup.next:                                      ; preds = %lookup.next.lr.ph, %if.else10
  %high.tr26 = phi i64 [ %14, %if.else10 ], [ %high.tr.ph, %lookup.next.lr.ph ]
    #dbg_value(i64 %x, !3037, !DIExpression(), !3046)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %high.tr26, !3036, !DIExpression(), !3048)
  %.not4 = icmp ult i64 %high.tr26, %arr.len, !dbg !3049
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3049

common.ret:                                       ; preds = %lookup.next26, %lookup.next.lr.ph, %lookup.next14, %lookup.next18, %lookup.next30
  %common.ret.op = phi i64 [ %6, %lookup.next30 ], [ %6, %lookup.next18 ], [ -1, %lookup.next14 ], [ %low.tr.ph, %lookup.next.lr.ph ], [ %11, %lookup.next26 ]
  ret i64 %common.ret.op, !dbg !3045

lookup.next14:                                    ; preds = %lookup.next
  %2 = getelementptr inbounds i64, ptr %arr.data, i64 %high.tr26, !dbg !3049
  %3 = load i64, ptr %2, align 8, !dbg !3049
  %4 = icmp sgt i64 %x, %3, !dbg !3050
  br i1 %4, label %common.ret, label %if.done2, !dbg !3045

if.done2:                                         ; preds = %lookup.next14
    #dbg_value(i64 %low.tr.ph, !3035, !DIExpression(), !3051)
    #dbg_value(i64 %high.tr26, !3036, !DIExpression(), !3052)
  %5 = add i64 %high.tr26, %low.tr.ph, !dbg !3053
  %6 = sdiv i64 %5, 2, !dbg !3054
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3056)
  %.not5 = icmp ult i64 %6, %arr.len, !dbg !3057
  br i1 %.not5, label %lookup.next18, label %lookup.throw17, !dbg !3057

lookup.next18:                                    ; preds = %if.done2
  %7 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3057
  %8 = load i64, ptr %7, align 8, !dbg !3057
    #dbg_value(i64 %x, !3037, !DIExpression(), !3058)
  %9 = icmp eq i64 %8, %x, !dbg !3059
  br i1 %9, label %common.ret, label %lookup.next22, !dbg !3045

lookup.next22:                                    ; preds = %lookup.next18
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3061)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3062)
  %10 = icmp slt i64 %8, %x, !dbg !3063
  br i1 %10, label %if.then4, label %if.else7, !dbg !3045

if.then4:                                         ; preds = %lookup.next22
    #dbg_value(i64 %6, !3038, !DIExpression(), !3064)
    #dbg_value(i64 %high.tr26, !3036, !DIExpression(), !3065)
  %.not9.not = icmp slt i64 %6, %high.tr26, !dbg !3066
  %11 = add nuw nsw i64 %6, 1, !dbg !3045
  br i1 %.not9.not, label %cond.true, label %if.else6, !dbg !3045

cond.true:                                        ; preds = %if.then4
    #dbg_value(i64 %x, !3037, !DIExpression(), !3067)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3068)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3069)
  %.not10 = icmp ult i64 %11, %arr.len, !dbg !3070
  br i1 %.not10, label %lookup.next26, label %lookup.throw25, !dbg !3070

lookup.next26:                                    ; preds = %cond.true
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %11, !dbg !3070
  %13 = load i64, ptr %12, align 8, !dbg !3070
  %.not11 = icmp sgt i64 %x, %13, !dbg !3071
  br i1 %.not11, label %if.else6, label %common.ret, !dbg !3045

if.else6:                                         ; preds = %if.then4, %lookup.next26
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3072)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3073)
    #dbg_value(i64 %high.tr26, !3036, !DIExpression(), !3074)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3075)
  br label %tailrecurse.outer, !dbg !3076

if.else7:                                         ; preds = %lookup.next22
    #dbg_value(i64 %6, !3038, !DIExpression(), !3077)
    #dbg_value(i64 %low.tr.ph, !3035, !DIExpression(), !3078)
  %.not7.not = icmp sgt i64 %6, %low.tr.ph, !dbg !3079
  %14 = add nsw i64 %6, -1, !dbg !3045
  br i1 %.not7.not, label %cond.true8, label %if.else10, !dbg !3045

cond.true8:                                       ; preds = %if.else7
    #dbg_value(i64 %x, !3037, !DIExpression(), !3080)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3081)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3082)
  %.not8 = icmp ult i64 %14, %arr.len, !dbg !3083
  br i1 %.not8, label %lookup.next30, label %lookup.throw29, !dbg !3083

lookup.next30:                                    ; preds = %cond.true8
  %15 = getelementptr inbounds i64, ptr %arr.data, i64 %14, !dbg !3083
  %16 = load i64, ptr %15, align 8, !dbg !3083
  %17 = icmp sgt i64 %x, %16, !dbg !3084
  br i1 %17, label %common.ret, label %if.else10, !dbg !3045

if.else10:                                        ; preds = %if.else7, %lookup.next30
    #dbg_value(i64 %low.tr.ph, !3035, !DIExpression(), !3085)
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %14, !3036, !DIExpression(), !3039)
    #dbg_value(i64 0, !3038, !DIExpression(), !3040)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3041)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
  br label %lookup.next, !dbg !3044

lookup.throw:                                     ; preds = %tailrecurse.outer
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw13:                                   ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw17:                                   ; preds = %if.done2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

lookup.throw25:                                   ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3070
  unreachable, !dbg !3070

lookup.throw29:                                   ; preds = %cond.true8
  tail call fastcc void @runtime.lookupPanic(), !dbg !3083
  unreachable, !dbg !3083
}
