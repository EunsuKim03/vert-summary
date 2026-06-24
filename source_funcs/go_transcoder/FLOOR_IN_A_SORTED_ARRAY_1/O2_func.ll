define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3041)
  %0 = icmp sgt i64 %low, %high, !dbg !3042
  br i1 %0, label %common.ret, label %if.done.lr.ph, !dbg !3043

if.done.lr.ph:                                    ; preds = %entry, %if.done9
  %high.tr.ph23 = phi i64 [ %high.tr17, %if.done9 ], [ %high, %entry ]
  %low.tr.ph22 = phi i64 [ %15, %if.done9 ], [ %low, %entry ]
    #dbg_value(i64 %high.tr.ph23, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %low.tr.ph22, !3035, !DIExpression(), !3039)
  br label %if.done, !dbg !3043

common.ret:                                       ; preds = %if.done9, %if.then8, %lookup.next, %lookup.next13, %lookup.next17, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %9, %lookup.next17 ], [ %4, %lookup.next13 ], [ %high.tr17, %lookup.next ], [ -1, %if.then8 ], [ -1, %if.done9 ]
  ret i64 %common.ret.op, !dbg !3043

if.done:                                          ; preds = %if.done.lr.ph, %if.then8
  %high.tr17 = phi i64 [ %high.tr.ph23, %if.done.lr.ph ], [ %14, %if.then8 ]
    #dbg_value(i64 %x, !3037, !DIExpression(), !3044)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3045)
    #dbg_value(i64 %high.tr17, !3036, !DIExpression(), !3046)
  %.not = icmp ult i64 %high.tr17, %arr.len, !dbg !3047
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3047

lookup.next:                                      ; preds = %if.done
  %1 = getelementptr inbounds i64, ptr %arr.data, i64 %high.tr17, !dbg !3047
  %2 = load i64, ptr %1, align 8, !dbg !3047
  %.not2 = icmp slt i64 %x, %2, !dbg !3048
  br i1 %.not2, label %if.done2, label %common.ret, !dbg !3043

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %low.tr.ph22, !3035, !DIExpression(), !3049)
    #dbg_value(i64 %high.tr17, !3036, !DIExpression(), !3050)
  %3 = add i64 %high.tr17, %low.tr.ph22, !dbg !3051
  %4 = sdiv i64 %3, 2, !dbg !3052
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3054)
  %.not3 = icmp ult i64 %4, %arr.len, !dbg !3055
  br i1 %.not3, label %lookup.next13, label %lookup.throw12, !dbg !3055

lookup.next13:                                    ; preds = %if.done2
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %4, !dbg !3055
  %6 = load i64, ptr %5, align 8, !dbg !3055
    #dbg_value(i64 %x, !3037, !DIExpression(), !3056)
  %7 = icmp eq i64 %6, %x, !dbg !3057
  br i1 %7, label %common.ret, label %if.done4, !dbg !3043

if.done4:                                         ; preds = %lookup.next13
    #dbg_value(i64 %4, !3038, !DIExpression(), !3058)
  %8 = icmp sgt i64 %3, 1, !dbg !3059
  br i1 %8, label %cond.true, label %lookup.next25, !dbg !3043

cond.true:                                        ; preds = %if.done4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3061)
  %9 = add nsw i64 %4, -1, !dbg !3062
  %.not4 = icmp ult i64 %9, %arr.len, !dbg !3063
  br i1 %.not4, label %lookup.next17, label %lookup.throw16, !dbg !3063

lookup.next17:                                    ; preds = %cond.true
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3063
  %11 = load i64, ptr %10, align 8, !dbg !3063
    #dbg_value(i64 %x, !3037, !DIExpression(), !3064)
  %.not5 = icmp sle i64 %11, %x, !dbg !3065
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3066)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3067)
  %12 = icmp slt i64 %x, %6
  %or.cond = and i1 %12, %.not5, !dbg !3043
  br i1 %or.cond, label %common.ret, label %lookup.next25, !dbg !3043

lookup.next25:                                    ; preds = %if.done4, %lookup.next17
    #dbg_value(i64 %x, !3037, !DIExpression(), !3068)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3069)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3070)
  %13 = icmp slt i64 %x, %6, !dbg !3071
  br i1 %13, label %if.then8, label %if.done9, !dbg !3043

if.then8:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3072)
    #dbg_value(i64 %low.tr.ph22, !3035, !DIExpression(), !3073)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3074)
  %14 = add nsw i64 %4, -1, !dbg !3075
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %14, !3036, !DIExpression(), !3041)
  %.not26 = icmp slt i64 %low.tr.ph22, %4, !dbg !3042
  br i1 %.not26, label %if.done, label %common.ret, !dbg !3043

if.done9:                                         ; preds = %lookup.next25
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3076)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3077)
  %15 = add nsw i64 %4, 1, !dbg !3078
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %x, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %15, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %high.tr17, !3036, !DIExpression(), !3041)
  %.not25 = icmp slt i64 %4, %high.tr17, !dbg !3042
  br i1 %.not25, label %if.done.lr.ph, label %common.ret, !dbg !3043

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047

lookup.throw12:                                   ; preds = %if.done2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3055
  unreachable, !dbg !3055

lookup.throw16:                                   ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3063
  unreachable, !dbg !3063
}
