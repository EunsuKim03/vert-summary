define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i64 %K) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %s.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3037)
    #dbg_value(i64 %s.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3037)
    #dbg_value(i64 %s.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3037)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3037)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3038)
    #dbg_value(i64 %s.len, !3032, !DIExpression(), !3039)
    #dbg_value(i64 0, !3033, !DIExpression(), !3040)
    #dbg_value(i64 0, !3034, !DIExpression(), !3041)
    #dbg_value(i64 0, !3035, !DIExpression(), !3042)
    #dbg_value(i64 0, !3036, !DIExpression(), !3043)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3044
  br i1 %0, label %lookup.next, label %for.done, !dbg !3045

lookup.next:                                      ; preds = %entry, %lookup.next
  %1 = phi i64 [ %14, %lookup.next ], [ 0, %entry ]
  %2 = phi i64 [ %13, %lookup.next ], [ 0, %entry ]
  %3 = phi i64 [ %spec.select, %lookup.next ], [ 0, %entry ]
  %4 = phi i64 [ %11, %lookup.next ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3046)
    #dbg_value(i64 %1, !3036, !DIExpression(), !3047)
  %5 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3048
  %6 = load i8, ptr %5, align 1, !dbg !3048
  %7 = icmp eq i8 %6, 97, !dbg !3049
  %8 = zext i1 %7 to i64, !dbg !3045
  %spec.select = add i64 %3, %8, !dbg !3045
  %9 = icmp eq i8 %6, 98, !dbg !3050
  %10 = select i1 %9, i64 %3, i64 0, !dbg !3045
  %11 = add i64 %10, %4, !dbg !3045
  %12 = zext i1 %9 to i64, !dbg !3045
  %13 = add i64 %2, %12, !dbg !3045
  %14 = add nuw nsw i64 %1, 1, !dbg !3051
    #dbg_value(i64 %14, !3036, !DIExpression(), !3052)
    #dbg_value(i64 %s.len, !3032, !DIExpression(), !3053)
  %exitcond.not = icmp eq i64 %14, %s.len, !dbg !3044
  br i1 %exitcond.not, label %for.done, label %lookup.next, !dbg !3045

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %11, %lookup.next ], !dbg !3040
  %.lcssa3 = phi i64 [ 0, %entry ], [ %spec.select, %lookup.next ], !dbg !3041
  %.lcssa = phi i64 [ 0, %entry ], [ %13, %lookup.next ], !dbg !3042
    #dbg_value(i64 %.lcssa5, !3033, !DIExpression(), !3054)
    #dbg_value(i64 %K, !3031, !DIExpression(), !3055)
  %15 = mul i64 %.lcssa5, %K, !dbg !3056
  %16 = add i64 %K, -1, !dbg !3057
  %17 = mul i64 %16, %K, !dbg !3058
  %18 = sdiv i64 %17, 2, !dbg !3059
    #dbg_value(i64 %.lcssa3, !3034, !DIExpression(), !3060)
  %19 = mul i64 %.lcssa3, %18, !dbg !3061
    #dbg_value(i64 %.lcssa, !3035, !DIExpression(), !3062)
  %20 = mul i64 %19, %.lcssa, !dbg !3063
  %21 = add i64 %20, %15, !dbg !3064
  ret i64 %21, !dbg !3065
}
