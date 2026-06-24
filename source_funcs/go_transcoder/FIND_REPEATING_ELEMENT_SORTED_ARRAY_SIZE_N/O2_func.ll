define range(i64 -1, 4611686018427387904) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %low, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %high, !3036, !DIExpression(), !3040)
  %0 = icmp sgt i64 %low, %high, !dbg !3041
  br i1 %0, label %common.ret, label %if.done.lr.ph, !dbg !3042

tailrecurse.outer.loopexit:                       ; preds = %lookup.next
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %4, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %high.tr13, !3036, !DIExpression(), !3040)
  %.not20 = icmp slt i64 %2, %high.tr13, !dbg !3041
  br i1 %.not20, label %if.done.lr.ph, label %common.ret, !dbg !3042

if.done.lr.ph:                                    ; preds = %entry, %tailrecurse.outer.loopexit
  %high.tr.ph17 = phi i64 [ %high.tr13, %tailrecurse.outer.loopexit ], [ %high, %entry ]
  %low.tr.ph16 = phi i64 [ %4, %tailrecurse.outer.loopexit ], [ %low, %entry ]
    #dbg_value(i64 %high.tr.ph17, !3036, !DIExpression(), !3038)
    #dbg_value(i64 %low.tr.ph16, !3035, !DIExpression(), !3038)
  br label %if.done, !dbg !3042

common.ret:                                       ; preds = %tailrecurse.outer.loopexit, %if.done3, %lookup.next12, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ %2, %lookup.next12 ], [ -1, %if.done3 ], [ -1, %tailrecurse.outer.loopexit ]
  ret i64 %common.ret.op, !dbg !3042

if.done:                                          ; preds = %if.done.lr.ph, %if.done3
  %high.tr13 = phi i64 [ %high.tr.ph17, %if.done.lr.ph ], [ %7, %if.done3 ]
    #dbg_value(i64 %low.tr.ph16, !3035, !DIExpression(), !3043)
    #dbg_value(i64 %high.tr13, !3036, !DIExpression(), !3044)
  %1 = add i64 %high.tr13, %low.tr.ph16, !dbg !3045
  %2 = sdiv i64 %1, 2, !dbg !3046
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3048)
  %.not = icmp ult i64 %2, %arr.len, !dbg !3049
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3049

lookup.next:                                      ; preds = %if.done
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3049
  %4 = load i64, ptr %3, align 8, !dbg !3049
    #dbg_value(i64 %2, !3037, !DIExpression(), !3050)
  %5 = add nsw i64 %2, 1, !dbg !3051
  %.not2 = icmp eq i64 %4, %5, !dbg !3052
  br i1 %.not2, label %tailrecurse.outer.loopexit, label %if.then1, !dbg !3042

if.then1:                                         ; preds = %lookup.next
    #dbg_value(i64 %2, !3037, !DIExpression(), !3053)
  %6 = icmp sgt i64 %1, 1, !dbg !3054
  %7 = add nsw i64 %2, -1, !dbg !3042
  br i1 %6, label %lookup.next8, label %if.done3, !dbg !3042

lookup.next8:                                     ; preds = %if.then1
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3056)
  %.not4 = icmp ult i64 %7, %arr.len, !dbg !3057
  br i1 %.not4, label %lookup.next12, label %lookup.throw11, !dbg !3057

lookup.next12:                                    ; preds = %lookup.next8
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %7, !dbg !3057
  %9 = load i64, ptr %8, align 8, !dbg !3057
  %10 = icmp eq i64 %4, %9, !dbg !3058
  br i1 %10, label %common.ret, label %if.done3, !dbg !3042

if.done3:                                         ; preds = %if.then1, %lookup.next12
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3059)
    #dbg_value(i64 %low.tr.ph16, !3035, !DIExpression(), !3060)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3061)
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %7, !3036, !DIExpression(), !3040)
  %.not19 = icmp slt i64 %low.tr.ph16, %2, !dbg !3041
  br i1 %.not19, label %if.done, label %common.ret, !dbg !3042

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw11:                                   ; preds = %lookup.next8
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057
}
