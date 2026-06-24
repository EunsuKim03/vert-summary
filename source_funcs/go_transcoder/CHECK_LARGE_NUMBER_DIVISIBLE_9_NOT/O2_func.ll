define range(i64 -8, 9) i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3036)
    #dbg_value(i64 0, !3032, !DIExpression(), !3037)
    #dbg_value(i64 0, !3033, !DIExpression(), !3038)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3039
  br i1 %0, label %lookup.next, label %for.done, !dbg !3040

lookup.next:                                      ; preds = %entry, %lookup.next
  %1 = phi i64 [ %8, %lookup.next ], [ 0, %entry ]
  %2 = phi i64 [ %7, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3041)
    #dbg_value(i64 %1, !3033, !DIExpression(), !3042)
  %3 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3043
  %4 = load i8, ptr %3, align 1, !dbg !3043
  %5 = add i8 %4, -48, !dbg !3044
  %6 = zext i8 %5 to i64, !dbg !3045
  %7 = add i64 %2, %6, !dbg !3046
    #dbg_value(i64 %7, !3032, !DIExpression(), !3046)
  %8 = add nuw nsw i64 %1, 1, !dbg !3047
    #dbg_value(i64 %8, !3033, !DIExpression(), !3048)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %8, %str.len, !dbg !3039
  br i1 %exitcond.not, label %for.done.loopexit, label %lookup.next, !dbg !3040

for.done.loopexit:                                ; preds = %lookup.next
  %9 = srem i64 %7, 9, !dbg !3050
  br label %for.done, !dbg !3050

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %for.done.loopexit ], !dbg !3037
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3051)
  ret i64 %.lcssa, !dbg !3052
}
