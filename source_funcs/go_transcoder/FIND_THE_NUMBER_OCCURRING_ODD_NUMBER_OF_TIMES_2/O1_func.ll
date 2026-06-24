define i64 @f_gold(ptr nocapture readonly %ar.data, i64 %ar.len, i64 %ar.cap, i64 %ar_size) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %ar.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %ar.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %ar.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %ar_size, !3119, !DIExpression(), !3122)
    #dbg_value(i64 0, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
  %0 = icmp sgt i64 %ar_size, 0, !dbg !3125
  br i1 %0, label %for.body.preheader, label %for.done, !dbg !3126

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %ar_size, -1, !dbg !3127
  %.not.not = icmp ugt i64 %ar.len, %1, !dbg !3127
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.preheader, %lookup.next
  %2 = phi i64 [ %7, %lookup.next ], [ 0, %for.body.preheader ]
  %3 = phi i64 [ %6, %lookup.next ], [ 0, %for.body.preheader ]
    #dbg_value(i64 %2, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %3, !3120, !DIExpression(), !3129)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3130)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3131)
  br i1 %.not.not, label %lookup.next, label %lookup.throw, !dbg !3127

lookup.next:                                      ; preds = %for.body
  %4 = getelementptr inbounds nuw i64, ptr %ar.data, i64 %2, !dbg !3127
  %5 = load i64, ptr %4, align 8, !dbg !3127
  %6 = xor i64 %5, %3, !dbg !3132
    #dbg_value(i64 %6, !3120, !DIExpression(), !3133)
  %7 = add nuw nsw i64 %2, 1, !dbg !3134
    #dbg_value(i64 %7, !3121, !DIExpression(), !3128)
    #dbg_value(i64 %ar_size, !3119, !DIExpression(), !3135)
  %exitcond.not = icmp eq i64 %7, %ar_size, !dbg !3125
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %lookup.next, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %6, %lookup.next ], !dbg !3123
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3136)
  ret i64 %.lcssa, !dbg !3137

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3127
  unreachable, !dbg !3127
}
