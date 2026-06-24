define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %idx) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %idx, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
    #dbg_value(i64 0, !3122, !DIExpression(), !3125)
  %0 = icmp sgt i64 %n, 0, !dbg !3126
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3127

for.body.lr.ph:                                   ; preds = %entry
  %.not1 = icmp ult i64 %idx, %arr.len
  %1 = getelementptr inbounds i64, ptr %arr.data, i64 %idx
  br label %for.body, !dbg !3127

for.body:                                         ; preds = %for.body.lr.ph, %lookup.next6
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %13, %lookup.next6 ]
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %12, %lookup.next6 ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3129)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3130)
  %exitcond.not = icmp eq i64 %2, %arr.len, !dbg !3131
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3131

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %idx, !3120, !DIExpression(), !3133)
  br i1 %.not1, label %lookup.next6, label %lookup.throw5, !dbg !3134

lookup.next6:                                     ; preds = %lookup.next
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2, !dbg !3131
  %5 = load i64, ptr %4, align 8, !dbg !3131
  %6 = load i64, ptr %1, align 8, !dbg !3134
  %7 = icmp slt i64 %5, %6, !dbg !3135
  %8 = zext i1 %7 to i64, !dbg !3127
  %spec.select = add i64 %3, %8, !dbg !3127
    #dbg_value(i64 %2, !3122, !DIExpression(), !3136)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3137)
    #dbg_value(i64 %idx, !3120, !DIExpression(), !3138)
  %9 = icmp eq i64 %5, %6, !dbg !3139
  %10 = icmp slt i64 %2, %idx
  %or.cond = select i1 %9, i1 %10, i1 false, !dbg !3127
  %11 = zext i1 %or.cond to i64, !dbg !3127
  %12 = add i64 %spec.select, %11, !dbg !3127
  %13 = add nuw nsw i64 %2, 1, !dbg !3140
    #dbg_value(i64 %13, !3122, !DIExpression(), !3128)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3141)
  %exitcond7.not = icmp eq i64 %13, %n, !dbg !3126
  br i1 %exitcond7.not, label %for.done, label %for.body, !dbg !3127

for.done:                                         ; preds = %lookup.next6, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %12, %lookup.next6 ], !dbg !3124
    #dbg_value(i64 %.lcssa, !3121, !DIExpression(), !3142)
  ret i64 %.lcssa, !dbg !3143

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3131
  unreachable, !dbg !3131

lookup.throw5:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134
}
