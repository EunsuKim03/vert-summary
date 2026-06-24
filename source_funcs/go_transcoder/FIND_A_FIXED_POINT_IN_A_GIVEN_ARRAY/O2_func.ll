define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3037)
    #dbg_value(i64 0, !3036, !DIExpression(), !3038)
  %0 = icmp sgt i64 %n, 0, !dbg !3039
  br i1 %0, label %for.body, label %common.ret, !dbg !3040

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %5, %if.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
    #dbg_value(i64 %1, !3036, !DIExpression(), !3042)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3043
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3043

lookup.next:                                      ; preds = %for.body
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3043
  %3 = load i64, ptr %2, align 8, !dbg !3043
    #dbg_value(i64 %1, !3036, !DIExpression(), !3044)
  %4 = icmp eq i64 %3, %1, !dbg !3045
  br i1 %4, label %common.ret, label %if.done, !dbg !3040

common.ret:                                       ; preds = %lookup.next, %if.done, %entry
  %common.ret.op = phi i64 [ -1, %entry ], [ -1, %if.done ], [ %1, %lookup.next ]
  ret i64 %common.ret.op, !dbg !3040

if.done:                                          ; preds = %lookup.next
  %5 = add nuw nsw i64 %1, 1, !dbg !3046
    #dbg_value(i64 %5, !3036, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3048)
  %exitcond2.not = icmp eq i64 %5, %n, !dbg !3039
  br i1 %exitcond2.not, label %common.ret, label %for.body, !dbg !3040

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043
}
