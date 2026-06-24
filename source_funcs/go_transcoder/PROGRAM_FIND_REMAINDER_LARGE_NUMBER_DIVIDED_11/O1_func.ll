define range(i64 0, 11) i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %str.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3119)
    #dbg_value(i64 %str.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3119)
    #dbg_value(i64 %str.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3119)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3120)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3121)
    #dbg_value(i64 0, !3116, !DIExpression(), !3122)
    #dbg_value(i64 0, !3117, !DIExpression(), !3123)
    #dbg_value(i64 0, !3118, !DIExpression(), !3124)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3125
  br i1 %0, label %for.body, label %for.done, !dbg !3126

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %10, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %9, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3117, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %1, !3118, !DIExpression(), !3130)
  %3 = mul nuw nsw i64 %2, 10, !dbg !3131
  %4 = getelementptr inbounds nuw i8, ptr %str.data, i64 %1, !dbg !3132
  %5 = load i8, ptr %4, align 1, !dbg !3132
  %6 = add i8 %5, -48, !dbg !3133
  %7 = zext i8 %6 to i64, !dbg !3134
  %8 = add nuw nsw i64 %3, %7, !dbg !3135
    #dbg_value(i64 %8, !3116, !DIExpression(), !3136)
  %9 = urem i64 %8, 11, !dbg !3137
    #dbg_value(i64 %9, !3117, !DIExpression(), !3138)
  %10 = add nuw nsw i64 %1, 1, !dbg !3139
    #dbg_value(i64 %10, !3118, !DIExpression(), !3127)
    #dbg_value(i64 %str.len, !3115, !DIExpression(), !3140)
  %exitcond.not = icmp eq i64 %10, %str.len, !dbg !3125
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3126

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %9, %for.body ], !dbg !3123
    #dbg_value(i64 %.lcssa, !3117, !DIExpression(), !3141)
  ret i64 %.lcssa, !dbg !3142
}
