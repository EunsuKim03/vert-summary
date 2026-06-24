define range(i64 0, 11) i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3035)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3035)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3035)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3036)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3037)
    #dbg_value(i64 0, !3032, !DIExpression(), !3038)
    #dbg_value(i64 0, !3033, !DIExpression(), !3039)
    #dbg_value(i64 0, !3034, !DIExpression(), !3040)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3041
  br i1 %0, label %lookup.next, label %for.done, !dbg !3042

lookup.next:                                      ; preds = %entry, %lookup.next
  %1 = phi i64 [ %10, %lookup.next ], [ 0, %entry ]
  %2 = phi i64 [ %9, %lookup.next ], [ 0, %entry ]
    #dbg_value(i64 %2, !3033, !DIExpression(), !3043)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3044)
    #dbg_value(i64 %1, !3034, !DIExpression(), !3045)
  %3 = mul nuw nsw i64 %2, 10, !dbg !3046
  %4 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3047
  %5 = load i8, ptr %4, align 1, !dbg !3047
  %6 = add i8 %5, -48, !dbg !3048
  %7 = zext i8 %6 to i64, !dbg !3049
  %8 = add nuw nsw i64 %3, %7, !dbg !3050
    #dbg_value(i64 %8, !3032, !DIExpression(), !3051)
  %9 = urem i64 %8, 11, !dbg !3052
    #dbg_value(i64 %9, !3033, !DIExpression(), !3053)
  %10 = add nuw nsw i64 %1, 1, !dbg !3054
    #dbg_value(i64 %10, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %10, %str.len, !dbg !3041
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3042

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %lookup.next ], !dbg !3039
    #dbg_value(i64 %.lcssa, !3033, !DIExpression(), !3057)
  ret i64 %.lcssa, !dbg !3058
}
