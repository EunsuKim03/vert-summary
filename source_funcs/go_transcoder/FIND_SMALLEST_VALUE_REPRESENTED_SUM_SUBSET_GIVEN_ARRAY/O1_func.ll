define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3122)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3122)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3122)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3122)
    #dbg_value(i64 1, !3120, !DIExpression(), !3123)
    #dbg_value(i64 0, !3121, !DIExpression(), !3124)
  %0 = icmp sgt i64 %n, 0, !dbg !3125
  br i1 %0, label %cond.true, label %for.done, !dbg !3126

cond.true:                                        ; preds = %entry, %lookup.next4
  %1 = phi i64 [ %6, %lookup.next4 ], [ 0, %entry ]
  %2 = phi i64 [ %5, %lookup.next4 ], [ 1, %entry ]
    #dbg_value(i64 %1, !3121, !DIExpression(), !3127)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3129)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3130
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3130

lookup.next:                                      ; preds = %cond.true
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3130
  %4 = load i64, ptr %3, align 8, !dbg !3130
    #dbg_value(i64 %2, !3120, !DIExpression(), !3131)
  %.not2 = icmp sgt i64 %4, %2, !dbg !3132
  br i1 %.not2, label %for.done, label %lookup.next4, !dbg !3126

lookup.next4:                                     ; preds = %lookup.next
    #dbg_value(i64 %2, !3120, !DIExpression(), !3133)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %1, !3121, !DIExpression(), !3135)
  %5 = add i64 %4, %2, !dbg !3136
    #dbg_value(i64 %5, !3120, !DIExpression(), !3137)
  %6 = add nuw nsw i64 %1, 1, !dbg !3138
    #dbg_value(i64 %6, !3121, !DIExpression(), !3127)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3139)
  %exitcond9.not = icmp eq i64 %6, %n, !dbg !3125
  br i1 %exitcond9.not, label %for.done, label %cond.true, !dbg !3126

for.done:                                         ; preds = %lookup.next4, %lookup.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %5, %lookup.next4 ], [ %2, %lookup.next ], !dbg !3123
    #dbg_value(i64 %.lcssa, !3120, !DIExpression(), !3140)
  ret i64 %.lcssa, !dbg !3141

lookup.throw:                                     ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3130
  unreachable, !dbg !3130
}
