define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3119)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3119)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3119)
    #dbg_value(i64 0, !3115, !DIExpression(), !3120)
    #dbg_value(i64 0, !3116, !DIExpression(), !3121)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3122)
    #dbg_value(i64 %str.len, !3117, !DIExpression(), !3123)
    #dbg_value(i64 0, !3118, !DIExpression(), !3124)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3125
  br i1 %0, label %for.body, label %for.done, !dbg !3126

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %11, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %10, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %8, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3118, !DIExpression(), !3127)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3128)
    #dbg_value(i64 %1, !3118, !DIExpression(), !3129)
  %4 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3130
  %5 = load i8, ptr %4, align 1, !dbg !3130
  %6 = icmp eq i8 %5, 49, !dbg !3131
  %7 = zext i1 %6 to i64, !dbg !3126
  %8 = add i64 %3, %7, !dbg !3126
  %not. = xor i1 %6, true, !dbg !3126
  %9 = zext i1 %not. to i64, !dbg !3126
  %10 = add i64 %2, %9, !dbg !3126
  %11 = add nuw nsw i64 %1, 1, !dbg !3132
    #dbg_value(i64 %11, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %str.len, !3117, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %11, %str.len, !dbg !3125
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %for.body, %entry
  %.lcssa2 = phi i64 [ 0, %entry ], [ %8, %for.body ], !dbg !3120
  %.lcssa = phi i64 [ 0, %entry ], [ %10, %for.body ], !dbg !3121
    #dbg_value(i64 %.lcssa2, !3115, !DIExpression(), !3134)
  %12 = and i64 %.lcssa2, 1, !dbg !3135
  %13 = icmp eq i64 %12, 0, !dbg !3135
  %. = select i1 %13, i64 %.lcssa, i64 %.lcssa2, !dbg !3126
  ret i64 %., !dbg !3126
}
