define range(i64 -10, 11) i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
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
  br i1 %0, label %for.body, label %for.done, !dbg !3042

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %14, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %13, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %11, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3034, !DIExpression(), !3043)
  %4 = and i64 %1, 1, !dbg !3044
  %5 = icmp eq i64 %4, 0, !dbg !3044
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3045)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3046)
    #dbg_value(i64 %1, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %1, !3034, !DIExpression(), !3048)
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3042
  %7 = load i8, ptr %6, align 1, !dbg !3042
  %8 = add i8 %7, -48, !dbg !3042
  %9 = zext i8 %8 to i64, !dbg !3042
  %10 = select i1 %5, i64 %9, i64 0, !dbg !3042
  %11 = add i64 %3, %10, !dbg !3042
  %12 = select i1 %5, i64 0, i64 %9, !dbg !3042
  %13 = add i64 %2, %12, !dbg !3042
  %14 = add nuw nsw i64 %1, 1, !dbg !3049
    #dbg_value(i64 %14, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3051)
  %exitcond.not = icmp eq i64 %14, %str.len, !dbg !3041
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3042

for.done.loopexit:                                ; preds = %for.body
  %15 = sub i64 %11, %13, !dbg !3052
  %16 = srem i64 %15, 11, !dbg !3053
  br label %for.done, !dbg !3052

for.done:                                         ; preds = %for.done.loopexit, %entry
  %17 = phi i64 [ 0, %entry ], [ %16, %for.done.loopexit ], !dbg !3052
    #dbg_value(i64 poison, !3032, !DIExpression(), !3054)
    #dbg_value(i64 poison, !3033, !DIExpression(), !3055)
  ret i64 %17, !dbg !3056
}
