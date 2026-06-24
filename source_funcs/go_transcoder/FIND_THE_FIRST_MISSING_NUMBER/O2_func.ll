define i64 @f_gold(ptr nocapture readonly %array.data, i64 %array.len, i64 %array.cap, i64 %start, i64 %end) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %array.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %array.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %array.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %start, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %end, !3036, !DIExpression(), !3040)
  %0 = icmp sgt i64 %start, %end, !dbg !3041
  br i1 %0, label %if.then, label %if.done, !dbg !3042

common.ret:                                       ; preds = %lookup.next, %if.then
  %common.ret.op = phi i64 [ %1, %if.then ], [ %start.tr10, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3042

if.then:                                          ; preds = %lookup.next8, %entry
  %end.tr.lcssa = phi i64 [ %end, %entry ], [ %spec.select3, %lookup.next8 ]
    #dbg_value(i64 %end.tr.lcssa, !3036, !DIExpression(), !3043)
  %1 = add nsw i64 %end.tr.lcssa, 1, !dbg !3044
  br label %common.ret, !dbg !3045

if.done:                                          ; preds = %entry, %lookup.next8
  %end.tr11 = phi i64 [ %spec.select3, %lookup.next8 ], [ %end, %entry ]
  %start.tr10 = phi i64 [ %spec.select, %lookup.next8 ], [ %start, %entry ]
    #dbg_value(i64 %end.tr11, !3036, !DIExpression(), !3038)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3046)
    #dbg_value(i64 %start.tr10, !3035, !DIExpression(), !3047)
  %.not = icmp ult i64 %start.tr10, %array.len, !dbg !3048
  br i1 %.not, label %lookup.next, label %lookup.throw, !dbg !3048

lookup.next:                                      ; preds = %if.done
  %2 = getelementptr inbounds i64, ptr %array.data, i64 %start.tr10, !dbg !3048
  %3 = load i64, ptr %2, align 8, !dbg !3048
  %.not1 = icmp eq i64 %start.tr10, %3, !dbg !3049
  br i1 %.not1, label %if.done2, label %common.ret, !dbg !3042

if.done2:                                         ; preds = %lookup.next
    #dbg_value(i64 %start.tr10, !3035, !DIExpression(), !3050)
    #dbg_value(i64 %end.tr11, !3036, !DIExpression(), !3051)
  %4 = add i64 %end.tr11, %start.tr10, !dbg !3052
  %5 = sdiv i64 %4, 2, !dbg !3053
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %5, !3037, !DIExpression(), !3055)
  %.not2 = icmp ult i64 %5, %array.len, !dbg !3056
  br i1 %.not2, label %lookup.next8, label %lookup.throw7, !dbg !3056

lookup.next8:                                     ; preds = %if.done2
  %6 = getelementptr inbounds i64, ptr %array.data, i64 %5, !dbg !3056
  %7 = load i64, ptr %6, align 8, !dbg !3056
    #dbg_value(i64 %5, !3037, !DIExpression(), !3057)
  %8 = icmp eq i64 %7, %5, !dbg !3058
  %9 = add nsw i64 %5, 1
  %spec.select = select i1 %8, i64 %9, i64 %start.tr10, !dbg !3042
  %spec.select3 = select i1 %8, i64 %end.tr11, i64 %5, !dbg !3042
    #dbg_value(ptr %array.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %array.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %array.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %spec.select, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %spec.select3, !3036, !DIExpression(), !3040)
  %10 = icmp sgt i64 %spec.select, %spec.select3, !dbg !3041
  br i1 %10, label %if.then, label %if.done, !dbg !3042

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw7:                                    ; preds = %if.done2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056
}
