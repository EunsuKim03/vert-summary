define noundef i1 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 0, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3128

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3129
  %.not10.not = icmp ugt i64 %a.len, %1, !dbg !3129
  br label %for.body, !dbg !3129

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %10, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %9, %lookup.next ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %7, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3132)
  br i1 %.not10.not, label %lookup.next, label %lookup.throw, !dbg !3129

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %a.data, i64 %2, !dbg !3129
  %6 = load i64, ptr %5, align 8, !dbg !3129
  %7 = add i64 %6, %4, !dbg !3128
  %8 = xor i64 %6, 1, !dbg !3128
  %9 = add i64 %8, %3, !dbg !3128
  %10 = add nuw nsw i64 %2, 1, !dbg !3133
    #dbg_value(i64 %10, !3122, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %10, %n, !dbg !3127
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3128

for.done.loopexit:                                ; preds = %lookup.next
  %11 = and i64 %7, 1, !dbg !3135
  %12 = icmp eq i64 %11, 0, !dbg !3135
  %13 = and i64 %9, 1
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %12, i1 true, i1 %14, !dbg !3128
  br label %for.done, !dbg !3135

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa5 = phi i1 [ true, %entry ], [ %15, %for.done.loopexit ], !dbg !3124
    #dbg_value(i1 %.lcssa5, !3120, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3136)
    #dbg_value(i1 poison, !3121, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3137)
  ret i1 %.lcssa5, !dbg !3128

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129
}
