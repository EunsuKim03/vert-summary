define i64 @f_gold(ptr nocapture readonly %weight.data, i64 %weight.len, i64 %weight.cap, i64 %n, i64 %c) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %weight.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %weight.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %weight.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 %c, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 %c, !3120, !DIExpression(), !3126)
    #dbg_value(i64 %c, !3122, !DIExpression(), !3127)
    #dbg_value(i64 0, !3123, !DIExpression(), !3128)
  %0 = icmp sgt i64 %n, 0, !dbg !3129
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3130

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3131
  %.not.not = icmp ugt i64 %weight.len, %1, !dbg !3131
  br label %for.body, !dbg !3131

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %10, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %9, %lookup.next ], [ %c, %for.body.preheader ]
  %4 = phi i64 [ %spec.select, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3123, !DIExpression(), !3132)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %2, !3123, !DIExpression(), !3134)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3131

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %weight.data, i64 %2, !dbg !3131
  %6 = load i64, ptr %5, align 8, !dbg !3131
    #dbg_value(i64 %3, !3122, !DIExpression(), !3135)
  %7 = icmp sgt i64 %6, %3, !dbg !3136
  %8 = zext i1 %7 to i64, !dbg !3130
  %spec.select = add i64 %4, %8, !dbg !3130
  %spec.select7 = select i1 %7, i64 %c, i64 %3, !dbg !3130
  %9 = sub i64 %spec.select7, %6, !dbg !3130
  %10 = add nuw nsw i64 %2, 1, !dbg !3137
    #dbg_value(i64 %10, !3123, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3138)
  %exitcond.not = icmp eq i64 %10, %n, !dbg !3129
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3130

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %lookup.next ], !dbg !3125
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3139)
  ret i64 %.lcssa, !dbg !3140

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131
}
