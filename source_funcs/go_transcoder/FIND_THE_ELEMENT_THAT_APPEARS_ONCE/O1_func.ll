define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 0, !3122, !DIExpression(), !3127)
    #dbg_value(i64 0, !3123, !DIExpression(), !3128)
  %0 = icmp sgt i64 %n, 0, !dbg !3129
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3130

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3131
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3131
  br label %for.body, !dbg !3131

for.body:                                         ; preds = %for.body.preheader, %lookup.next4
  %2 = phi i64 [ %13, %lookup.next4 ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %12, %lookup.next4 ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %11, %lookup.next4 ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3123, !DIExpression(), !3132)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3133)
    #dbg_value(i64 %4, !3120, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %2, !3123, !DIExpression(), !3136)
  br i1 %.not.not, label %lookup.next4, label %lookup.throw, !dbg !3131

lookup.next4:                                     ; preds = %for.body
    #dbg_value(!DIArgList(i64 poison, i64 poison, i64 poison), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_or, DW_OP_stack_value), !3137)
    #dbg_value(i64 %4, !3120, !DIExpression(), !3138)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3139)
    #dbg_value(i64 %2, !3123, !DIExpression(), !3140)
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3131
  %6 = load i64, ptr %5, align 8, !dbg !3131
    #dbg_value(!DIArgList(i64 %3, i64 %4, i64 %6), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_and, DW_OP_or, DW_OP_stack_value), !3137)
  %7 = and i64 %6, %4, !dbg !3141
    #dbg_value(!DIArgList(i64 %3, i64 %7), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value), !3137)
  %8 = or i64 %7, %3, !dbg !3142
    #dbg_value(i64 %8, !3121, !DIExpression(), !3137)
  %9 = xor i64 %6, %4, !dbg !3143
    #dbg_value(i64 %9, !3120, !DIExpression(), !3144)
  %10 = and i64 %9, %3, !dbg !3145
    #dbg_value(i64 %10, !3122, !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value), !3146)
  %11 = xor i64 %10, %9, !dbg !3147
    #dbg_value(i64 %11, !3120, !DIExpression(), !3147)
  %12 = xor i64 %10, %8, !dbg !3148
    #dbg_value(i64 %12, !3121, !DIExpression(), !3148)
  %13 = add nuw nsw i64 %2, 1, !dbg !3149
    #dbg_value(i64 %13, !3123, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3150)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3129
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3130

for.done:                                         ; preds = %lookup.next4, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %11, %lookup.next4 ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3151)
  ret i64 %.lcssa, !dbg !3152

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131
}
