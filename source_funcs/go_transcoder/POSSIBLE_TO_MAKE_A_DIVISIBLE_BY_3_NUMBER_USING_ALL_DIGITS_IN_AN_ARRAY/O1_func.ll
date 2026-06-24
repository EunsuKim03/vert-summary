define i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
  %0 = icmp sgt i64 %n, 0, !dbg !3125
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3126

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3127
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3127
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %8, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %7, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3131)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3127

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3127
  %5 = load i64, ptr %4, align 8, !dbg !3127
  %6 = add i64 %5, %3, !dbg !3132
  %7 = srem i64 %6, 3, !dbg !3133
    #dbg_value(i64 %7, !3120, !DIExpression(), !3134)
  %8 = add nuw nsw i64 %2, 1, !dbg !3135
    #dbg_value(i64 %8, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3125
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3126

for.done.loopexit:                                ; preds = %lookup.next
  %9 = icmp eq i64 %7, 0, !dbg !3137
  br label %for.done, !dbg !3137

for.done:                                         ; preds = %for.done.loopexit, %entry
  %.lcssa = phi i1 [ true, %entry ], [ %9, %for.done.loopexit ], !dbg !3123
    #dbg_value(i1 %.lcssa, !3120, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3138)
  ret i1 %.lcssa, !dbg !3139

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3127
  unreachable, !dbg !3127
}
