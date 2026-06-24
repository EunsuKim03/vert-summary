define range(i64 -9223372036854775808, 9223372036854775807) i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
    #dbg_value(i64 0, !3038, !DIExpression(), !3043)
  %0 = icmp sgt i64 %n, 0, !dbg !3044
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3045

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3046
  %.not.not = icmp ugt i64 %a.len, %1, !dbg !3046
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3046

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %11, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %spec.select2, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %spec.select, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3048)
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3046
  %6 = load i64, ptr %5, align 8, !dbg !3046
  %7 = icmp eq i64 %6, 0, !dbg !3049
  %8 = zext i1 %7 to i64, !dbg !3045
  %spec.select = add i64 %4, %8, !dbg !3045
  %9 = icmp eq i64 %6, 2, !dbg !3050
  %10 = zext i1 %9 to i64, !dbg !3045
  %spec.select2 = add i64 %3, %10, !dbg !3045
  %11 = add nuw nsw i64 %2, 1, !dbg !3051
    #dbg_value(i64 %11, !3038, !DIExpression(), !3052)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3053)
  %exitcond.not = icmp eq i64 %11, %n, !dbg !3044
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3045

for.done:                                         ; preds = %for.body, %entry
  %.lcssa4 = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3041
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select2, %for.body ], !dbg !3042
    #dbg_value(i64 %.lcssa4, !3036, !DIExpression(), !3054)
  %12 = add i64 %.lcssa4, -1, !dbg !3055
  %13 = mul i64 %12, %.lcssa4, !dbg !3056
  %14 = sdiv i64 %13, 2, !dbg !3057
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3058)
  %15 = add i64 %.lcssa, -1, !dbg !3059
  %16 = mul i64 %15, %.lcssa, !dbg !3060
  %17 = sdiv i64 %16, 2, !dbg !3061
  %18 = add nsw i64 %17, %14, !dbg !3062
    #dbg_value(i64 %18, !3039, !DIExpression(), !3063)
  ret i64 %18, !dbg !3064

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3046
  unreachable, !dbg !3046
}
