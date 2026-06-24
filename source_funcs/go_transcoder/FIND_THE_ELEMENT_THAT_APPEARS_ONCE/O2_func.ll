define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
    #dbg_value(i64 0, !3038, !DIExpression(), !3043)
    #dbg_value(i64 0, !3039, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3046

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3047
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3047
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3047

for.body:                                         ; preds = %for.body.preheader, %for.body
  %2 = phi i64 [ %13, %for.body ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %12, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %11, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_or, DW_OP_stack_value), !3048)
    #dbg_value(i64 %4, !3036, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %2, !3039, !DIExpression(), !3051)
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3047
  %6 = load i64, ptr %5, align 8, !dbg !3047
    #dbg_value(!DIArgList(i64 %3, i64 %4, i64 %6), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_or, DW_OP_stack_value), !3048)
  %7 = and i64 %6, %4, !dbg !3052
    #dbg_value(!DIArgList(i64 %3, i64 %7), !3037, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3048)
  %8 = or i64 %7, %3, !dbg !3053
    #dbg_value(i64 %8, !3037, !DIExpression(), !3048)
  %9 = xor i64 %6, %4, !dbg !3054
    #dbg_value(i64 %9, !3036, !DIExpression(), !3055)
  %10 = and i64 %9, %3, !dbg !3056
    #dbg_value(i64 %10, !3038, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3057)
  %11 = xor i64 %10, %9, !dbg !3058
    #dbg_value(i64 %11, !3036, !DIExpression(), !3058)
  %12 = xor i64 %10, %8, !dbg !3059
    #dbg_value(i64 %12, !3037, !DIExpression(), !3059)
  %13 = add nuw nsw i64 %2, 1, !dbg !3060
    #dbg_value(i64 %13, !3039, !DIExpression(), !3061)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3062)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3045
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3046

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %11, %for.body ], !dbg !3041
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3063)
  ret i64 %.lcssa, !dbg !3064

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047
}
