define i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3120)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3121)
  switch i64 %str.len, label %lookup.next10 [
    i64 0, label %common.ret
    i64 1, label %lookup.next
  ], !dbg !3122

common.ret:                                       ; preds = %entry, %lookup.next10, %lookup.next
  %common.ret.op = phi i1 [ %2, %lookup.next ], [ %13, %lookup.next10 ], [ false, %entry ]
  ret i1 %common.ret.op, !dbg !3122

lookup.next:                                      ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3123)
  %0 = load i8, ptr %str.data, align 1, !dbg !3124
  %1 = and i8 %0, 3, !dbg !3125
  %2 = icmp eq i8 %1, 0, !dbg !3126
  br label %common.ret, !dbg !3127

lookup.next10:                                    ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3128)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3129)
    #dbg_value(i8 poison, !3116, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3132)
  %3 = getelementptr i8, ptr %str.data, i64 %str.len, !dbg !3133
  %4 = getelementptr i8, ptr %3, i64 -1, !dbg !3133
  %5 = load i8, ptr %4, align 1, !dbg !3133
    #dbg_value(i8 %5, !3116, !DIExpression(DW_OP_constu, 48, DW_OP_minus, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3130)
    #dbg_value(i8 %5, !3116, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3130)
  %6 = zext i8 %5 to i64, !dbg !3134
    #dbg_value(i8 %5, !3116, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3130)
  %7 = getelementptr i8, ptr %3, i64 -2, !dbg !3135
  %8 = load i8, ptr %7, align 1, !dbg !3135
  %9 = zext i8 %8 to i64, !dbg !3136
    #dbg_value(i8 %8, !3117, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3137)
    #dbg_value(i8 %8, !3117, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3138)
  %10 = shl nuw nsw i64 %9, 1, !dbg !3139
    #dbg_value(i8 %5, !3116, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !3140)
  %11 = add nuw nsw i64 %10, %6, !dbg !3141
  %12 = and i64 %11, 3, !dbg !3142
  %13 = icmp eq i64 %12, 0, !dbg !3143
  br label %common.ret, !dbg !3144
}
