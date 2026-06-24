define range(i64 -4611686018427387904, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high, i64 %key) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %key, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3040)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3041)
  %0 = icmp slt i64 %high, %low, !dbg !3042
  br i1 %0, label %common.ret, label %if.done.lr.ph, !dbg !3043

if.done.lr.ph:                                    ; preds = %entry, %if.then3
  %high.tr.ph10 = phi i64 [ %high.tr6, %if.then3 ], [ %high, %entry ]
  %low.tr.ph9 = phi i64 [ %7, %if.then3 ], [ %low, %entry ]
    #dbg_value(i64 %high.tr.ph10, !3036, !DIExpression(), !3039)
    #dbg_value(i64 %low.tr.ph9, !3035, !DIExpression(), !3039)
  br label %if.done, !dbg !3043

common.ret:                                       ; preds = %if.then3, %if.done4, %lookup.next, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %2, %lookup.next ], [ -1, %if.done4 ], [ -1, %if.then3 ]
  ret i64 %common.ret.op, !dbg !3043

if.done:                                          ; preds = %if.done.lr.ph, %if.done4
  %high.tr6 = phi i64 [ %high.tr.ph10, %if.done.lr.ph ], [ %8, %if.done4 ]
    #dbg_value(i64 %low.tr.ph9, !3035, !DIExpression(), !3044)
    #dbg_value(i64 %high.tr6, !3036, !DIExpression(), !3045)
  %1 = add i64 %high.tr6, %low.tr.ph9, !dbg !3046
  %2 = sdiv i64 %1, 2, !dbg !3047
    #dbg_value(i64 %key, !3037, !DIExpression(), !3048)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3050)
  %.not = icmp ult i64 %2, %arr.len, !dbg !3051
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3051

lookup.next:                                      ; preds = %if.done
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3051
  %4 = load i64, ptr %3, align 8, !dbg !3051
  %5 = icmp eq i64 %key, %4, !dbg !3052
  br i1 %5, label %common.ret, label %lookup.next8, !dbg !3043

lookup.next8:                                     ; preds = %lookup.next
    #dbg_value(i64 %key, !3037, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3055)
  %6 = icmp sgt i64 %key, %4, !dbg !3056
  br i1 %6, label %if.then3, label %if.done4, !dbg !3043

if.then3:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3057)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3058)
  %7 = add nsw i64 %2, 1, !dbg !3059
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %key, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %high.tr6, !3036, !DIExpression(), !3040)
    #dbg_value(i64 %7, !3035, !DIExpression(), !3041)
  %.not13 = icmp sgt i64 %high.tr6, %2, !dbg !3042
  br i1 %.not13, label %if.done.lr.ph, label %common.ret, !dbg !3043

if.done4:                                         ; preds = %lookup.next8
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3060)
    #dbg_value(i64 %low.tr.ph9, !3035, !DIExpression(), !3061)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3062)
  %8 = add nsw i64 %2, -1, !dbg !3063
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %key, !3037, !DIExpression(), !3039)
    #dbg_value(i64 %8, !3036, !DIExpression(), !3040)
  %.not12 = icmp sgt i64 %2, %low.tr.ph9, !dbg !3042
  br i1 %.not12, label %if.done, label %common.ret, !dbg !3043

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051
}
