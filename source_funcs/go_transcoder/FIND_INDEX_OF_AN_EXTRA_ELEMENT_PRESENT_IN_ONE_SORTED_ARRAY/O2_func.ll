define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr1.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr1.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr1.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(ptr %arr2.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3038)
    #dbg_value(i64 %arr2.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3038)
    #dbg_value(i64 %arr2.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3038)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3038)
    #dbg_value(i64 0, !3037, !DIExpression(), !3039)
  %0 = icmp sgt i64 %n, 0, !dbg !3040
  br i1 %0, label %for.body, label %common.ret, !dbg !3041

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %6, %if.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3042)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3043)
  %exitcond.not = icmp eq i64 %1, %arr1.len, !dbg !3044
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3044

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3045)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3046)
  %exitcond4.not = icmp eq i64 %1, %arr2.len, !dbg !3047
  br i1 %exitcond4.not, label %lookup.throw3, label %lookup.next4, !dbg !3047

lookup.next4:                                     ; preds = %lookup.next
  %2 = getelementptr inbounds nuw i64, ptr %arr1.data, i64 %1, !dbg !3044
  %3 = load i64, ptr %2, align 8, !dbg !3044
  %4 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %1, !dbg !3047
  %5 = load i64, ptr %4, align 8, !dbg !3047
  %.not2 = icmp eq i64 %3, %5, !dbg !3048
  br i1 %.not2, label %if.done, label %common.ret, !dbg !3041

common.ret:                                       ; preds = %lookup.next4, %if.done, %entry
  %common.ret.op = phi i64 [ %n, %entry ], [ %n, %if.done ], [ %1, %lookup.next4 ]
  ret i64 %common.ret.op, !dbg !3041

if.done:                                          ; preds = %lookup.next4
  %6 = add nuw nsw i64 %1, 1, !dbg !3049
    #dbg_value(i64 %6, !3037, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3051)
  %exitcond5.not = icmp eq i64 %6, %n, !dbg !3040
  br i1 %exitcond5.not, label %common.ret, label %for.body, !dbg !3041

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3044
  unreachable, !dbg !3044

lookup.throw3:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047
}
