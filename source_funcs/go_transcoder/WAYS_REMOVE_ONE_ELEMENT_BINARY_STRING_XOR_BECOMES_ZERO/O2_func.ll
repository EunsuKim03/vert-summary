define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3035)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3035)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3035)
    #dbg_value(i64 0, !3031, !DIExpression(), !3036)
    #dbg_value(i64 0, !3032, !DIExpression(), !3037)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3038)
    #dbg_value(i64 %str.len, !3033, !DIExpression(), !3039)
    #dbg_value(i64 0, !3034, !DIExpression(), !3040)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3041
  br i1 %0, label %lookup.next, label %for.done, !dbg !3042

lookup.next:                                      ; preds = %entry, %lookup.next
  %1 = phi i64 [ %11, %lookup.next ], [ 0, %entry ]
  %2 = phi i64 [ %10, %lookup.next ], [ 0, %entry ]
  %3 = phi i64 [ %8, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3034, !DIExpression(), !3044)
  %4 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3045
  %5 = load i8, ptr %4, align 1, !dbg !3045
  %6 = icmp eq i8 %5, 49, !dbg !3046
  %7 = zext i1 %6 to i64, !dbg !3042
  %8 = add i64 %3, %7, !dbg !3042
  %not. = xor i1 %6, true, !dbg !3042
  %9 = zext i1 %not. to i64, !dbg !3042
  %10 = add i64 %2, %9, !dbg !3042
  %11 = add nuw nsw i64 %1, 1, !dbg !3047
    #dbg_value(i64 %11, !3034, !DIExpression(), !3048)
    #dbg_value(i64 %str.len, !3033, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %11, %str.len, !dbg !3041
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3042

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa2 = phi i64 [ 0, %entry ], [ %8, %lookup.next ], !dbg !3036
  %.lcssa = phi i64 [ 0, %entry ], [ %10, %lookup.next ], !dbg !3037
    #dbg_value(i64 %.lcssa2, !3031, !DIExpression(), !3050)
  %12 = and i64 %.lcssa2, 1, !dbg !3051
  %13 = icmp eq i64 %12, 0, !dbg !3051
  %. = select i1 %13, i64 %.lcssa, i64 %.lcssa2, !dbg !3042
  ret i64 %., !dbg !3042
}
