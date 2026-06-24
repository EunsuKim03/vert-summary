define range(i64 0, 2) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
  %invariant.gep = getelementptr i8, ptr %arr.data, i64 -16
  br label %tailrecurse

tailrecurse:                                      ; preds = %lookup.next, %entry
  %n.tr = phi i64 [ %n, %entry ], [ %0, %lookup.next ]
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3036)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3036)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3036)
    #dbg_value(i64 %n.tr, !3035, !DIExpression(), !3036)
    #dbg_value(i64 %n.tr, !3035, !DIExpression(), !3037)
  %switch = icmp ult i64 %n.tr, 2, !dbg !3038
  br i1 %switch, label %common.ret, label %if.done, !dbg !3038

common.ret:                                       ; preds = %tailrecurse, %lookup.next
  %common.ret.op = phi i64 [ 1, %tailrecurse ], [ 0, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3038

if.done:                                          ; preds = %tailrecurse
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3039)
    #dbg_value(i64 %n.tr, !3035, !DIExpression(), !3040)
  %0 = add i64 %n.tr, -1, !dbg !3041
  %.not = icmp ult i64 %0, %arr.len, !dbg !3042
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3042

lookup.next:                                      ; preds = %if.done
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3043)
    #dbg_value(i64 %n.tr, !3035, !DIExpression(), !3044)
  %1 = getelementptr inbounds i64, ptr %arr.data, i64 %0, !dbg !3042
  %2 = load i64, ptr %1, align 8, !dbg !3042
  %gep = getelementptr i64, ptr %invariant.gep, i64 %n.tr, !dbg !3045
  %3 = load i64, ptr %gep, align 8, !dbg !3045
  %4 = icmp slt i64 %2, %3, !dbg !3046
  br i1 %4, label %common.ret, label %tailrecurse, !dbg !3038

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042
}
