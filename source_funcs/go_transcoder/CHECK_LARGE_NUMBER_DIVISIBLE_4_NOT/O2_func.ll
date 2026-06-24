define i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %str.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3034)
    #dbg_value(i64 %str.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3034)
    #dbg_value(i64 %str.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3034)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3036)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3037)
  switch i64 %str.len, label %lookup.next10 [
    i64 0, label %common.ret
    i64 1, label %lookup.next
  ], !dbg !3038

common.ret:                                       ; preds = %entry, %lookup.next10, %lookup.next
  %common.ret.op = phi i1 [ %2, %lookup.next ], [ %13, %lookup.next10 ], [ false, %entry ]
  ret i1 %common.ret.op, !dbg !3038

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3039)
  %0 = load i8, ptr %str.data, align 1, !dbg !3040
  %1 = and i8 %0, 3, !dbg !3041
  %2 = icmp eq i8 %1, 0, !dbg !3042
  br label %common.ret, !dbg !3043

lookup.next10:                                    ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3044)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3045)
    #dbg_value(i8 poison, !3032, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3046)
    #dbg_value({ ptr, i64, i64 } poison, !3030, !DIExpression(), !3047)
    #dbg_value(i64 %str.len, !3031, !DIExpression(), !3048)
  %3 = getelementptr i8, ptr %str.data, i64 %str.len, !dbg !3049
  %4 = getelementptr i8, ptr %3, i64 -1, !dbg !3049
  %5 = load i8, ptr %4, align 1, !dbg !3049
    #dbg_value(i8 %5, !3032, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3046)
    #dbg_value(i8 %5, !3032, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3046)
  %6 = zext i8 %5 to i64, !dbg !3050
    #dbg_value(i8 %5, !3032, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3046)
  %7 = getelementptr i8, ptr %3, i64 -2, !dbg !3051
  %8 = load i8, ptr %7, align 1, !dbg !3051
  %9 = zext i8 %8 to i64, !dbg !3052
    #dbg_value(i8 %8, !3033, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3053)
    #dbg_value(i8 %8, !3033, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3054)
  %10 = shl nuw nsw i64 %9, 1, !dbg !3055
    #dbg_value(i8 %5, !3032, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3056)
  %11 = add nuw nsw i64 %10, %6, !dbg !3057
  %12 = and i64 %11, 3, !dbg !3058
  %13 = icmp eq i64 %12, 0, !dbg !3059
  br label %common.ret, !dbg !3060
}
