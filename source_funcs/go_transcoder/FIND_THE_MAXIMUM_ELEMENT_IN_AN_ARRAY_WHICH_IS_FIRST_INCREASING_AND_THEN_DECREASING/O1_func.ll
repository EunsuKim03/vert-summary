define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %low, i64 %high) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3123)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3123)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3124)
    #dbg_value(i64 %low, !3119, !DIExpression(), !3125)
  %.not = icmp ult i64 %low, %arr.len, !dbg !3126
  br i1 %.not, label %for.loop.preheader, label %lookup.throw, !dbg !3126

for.loop.preheader:                               ; preds = %entry
  %0 = add i64 %arr.len, -1, !dbg !3127
  br label %for.loop, !dbg !3127

for.loop:                                         ; preds = %for.loop.preheader, %lookup.next4
  %.in1 = phi i64 [ %1, %lookup.next4 ], [ %low, %for.loop.preheader ]
  %.in = getelementptr inbounds i64, ptr %arr.data, i64 %.in1, !dbg !3127
  %1 = add nuw i64 %.in1, 1, !dbg !3128
  %2 = load i64, ptr %.in, align 8, !dbg !3127
    #dbg_value(i64 %1, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %high, !3120, !DIExpression(), !3130)
  %.not2 = icmp sgt i64 %1, %high, !dbg !3131
  br i1 %.not2, label %for.done, label %for.body, !dbg !3127

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %.in1, %0, !dbg !3134
  br i1 %exitcond.not, label %lookup.throw3, label %lookup.next4, !dbg !3134

lookup.next4:                                     ; preds = %for.body
  %3 = getelementptr inbounds i64, ptr %arr.data, i64 %1, !dbg !3134
  %4 = load i64, ptr %3, align 8, !dbg !3134
    #dbg_value(i64 %2, !3121, !DIExpression(), !3135)
  %5 = icmp sgt i64 %4, %2, !dbg !3136
  br i1 %5, label %for.loop, label %for.done, !dbg !3127

for.done:                                         ; preds = %lookup.next4, %for.loop
    #dbg_value(i64 %2, !3121, !DIExpression(), !3137)
  ret i64 %2, !dbg !3138

lookup.throw:                                     ; preds = %entry
  call fastcc void @runtime.lookupPanic(), !dbg !3126
  unreachable, !dbg !3126

lookup.throw3:                                    ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134
}
