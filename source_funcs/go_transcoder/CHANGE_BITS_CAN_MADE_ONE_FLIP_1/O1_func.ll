define i1 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value(i64 0, !3115, !DIExpression(), !3119)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %str.len, !3116, !DIExpression(), !3121)
    #dbg_value(i64 0, !3117, !DIExpression(), !3122)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3123
  br i1 %0, label %for.body, label %for.done, !dbg !3124

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %8, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %7, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3117, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3127)
  %3 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3128
  %4 = load i8, ptr %3, align 1, !dbg !3128
  %5 = add i8 %4, -48, !dbg !3129
  %6 = zext i8 %5 to i64, !dbg !3130
  %7 = add i64 %2, %6, !dbg !3131
    #dbg_value(i64 %7, !3115, !DIExpression(), !3131)
  %8 = add nuw nsw i64 %1, 1, !dbg !3132
    #dbg_value(i64 %8, !3117, !DIExpression(), !3125)
    #dbg_value(i64 %str.len, !3116, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %8, %str.len, !dbg !3123
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3124

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3115, !DIExpression(), !3134)
    #dbg_value(i64 %str.len, !3116, !DIExpression(), !3135)
  %9 = add i64 %str.len, -1, !dbg !3136
  %10 = icmp eq i64 %.lcssa, %9, !dbg !3137
  %11 = icmp eq i64 %.lcssa, 1
  %spec.select = or i1 %10, %11, !dbg !3124
  ret i1 %spec.select, !dbg !3138
}
