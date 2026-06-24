define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3124)
    #dbg_value(i64 %y, !3121, !DIExpression(), !3124)
    #dbg_value(i64 0, !3122, !DIExpression(), !3125)
    #dbg_value(i64 0, !3123, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3128

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3129
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3129
  br label %for.body, !dbg !3129

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %7, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %6, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3123, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3123, !DIExpression(), !3132)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3129

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3129
  %5 = load i64, ptr %4, align 8, !dbg !3129
    #dbg_value(i64 %x, !3120, !DIExpression(), !3133)
  %.not1 = icmp sge i64 %5, %x, !dbg !3134
  %.not3 = icmp sle i64 %5, %y, !dbg !3128
  %narrow = select i1 %.not1, i1 %.not3, i1 false, !dbg !3128
  %spec.select = zext i1 %narrow to i64, !dbg !3128
  %6 = add i64 %3, %spec.select, !dbg !3128
  %7 = add nuw nsw i64 %2, 1, !dbg !3135
    #dbg_value(i64 %7, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %7, %n, !dbg !3127
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3128

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %lookup.next ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3137)
  ret i64 %.lcssa, !dbg !3138

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3129
  unreachable, !dbg !3129
}
