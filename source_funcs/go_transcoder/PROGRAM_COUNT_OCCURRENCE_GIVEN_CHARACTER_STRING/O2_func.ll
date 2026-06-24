define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i8 %c) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %s.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %s.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %s.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value(i8 %c, !3031, !DIExpression(), !3034)
    #dbg_value(i64 0, !3032, !DIExpression(), !3035)
    #dbg_value(i64 0, !3033, !DIExpression(), !3036)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3037)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3038
  br i1 %0, label %lookup.next, label %for.done, !dbg !3039

lookup.next:                                      ; preds = %entry, %lookup.next
  %1 = phi i64 [ %7, %lookup.next ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %1, !3033, !DIExpression(), !3041)
  %3 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3042
  %4 = load i8, ptr %3, align 1, !dbg !3042
    #dbg_value(i8 %c, !3031, !DIExpression(), !3043)
  %5 = icmp eq i8 %4, %c, !dbg !3044
  %6 = zext i1 %5 to i64, !dbg !3039
  %spec.select = add i64 %2, %6, !dbg !3039
  %7 = add nuw nsw i64 %1, 1, !dbg !3045
    #dbg_value(i64 %7, !3033, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %7, %s.len, !dbg !3038
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3039

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %lookup.next ], !dbg !3035
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3047)
  ret i64 %.lcssa, !dbg !3048
}
