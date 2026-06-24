define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %a.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %a.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %a.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 1, !3121, !DIExpression(), !3124)
    #dbg_value(i64 2, !3120, !DIExpression(), !3125)
  %0 = add i64 %n, 1
    #dbg_value(i64 2, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
  %.not6 = icmp slt i64 %0, 2, !dbg !3128
  br i1 %.not6, label %for.done, label %for.body.preheader, !dbg !3129

for.body.preheader:                               ; preds = %entry
  %1 = add i64 %a.len, 2, !dbg !3130
  br label %for.body, !dbg !3130

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %8, %lookup.next ], [ 1, %for.body.preheader ]
  %3 = phi i64 [ %9, %lookup.next ], [ 2, %for.body.preheader ]
    #dbg_value(i64 %3, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3131)
    #dbg_value(!DIArgList(i64 %2, i64 %3), !3121, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3134)
  %exitcond.not = icmp eq i64 %3, %1, !dbg !3130
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3130

lookup.next:                                      ; preds = %for.body
  %4 = add i64 %2, %3, !dbg !3132
    #dbg_value(i64 %4, !3121, !DIExpression(), !3132)
  %5 = getelementptr i64, ptr %a.data, i64 %3, !dbg !3130
  %6 = getelementptr i8, ptr %5, i64 -16, !dbg !3130
  %7 = load i64, ptr %6, align 8, !dbg !3130
  %8 = sub i64 %4, %7, !dbg !3135
    #dbg_value(i64 %8, !3121, !DIExpression(), !3135)
  %9 = add i64 %3, 1, !dbg !3136
    #dbg_value(i64 %9, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
  %.not = icmp sgt i64 %9, %0, !dbg !3128
  br i1 %.not, label %for.done, label %for.body, !dbg !3129

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %8, %lookup.next ], !dbg !3124
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3137)
  ret i64 %.lcssa, !dbg !3138

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130
}
