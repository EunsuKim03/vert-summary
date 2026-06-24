define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i8 %c) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %s.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %s.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %s.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value(i8 %c, !3115, !DIExpression(), !3118)
    #dbg_value(i64 0, !3116, !DIExpression(), !3119)
    #dbg_value(i64 0, !3117, !DIExpression(), !3120)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3121)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3122
  br i1 %0, label %for.body, label %for.done, !dbg !3123

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %7, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3117, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3126)
  %3 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3127
  %4 = load i8, ptr %3, align 1, !dbg !3127
    #dbg_value(i8 %c, !3115, !DIExpression(), !3128)
  %5 = icmp eq i8 %4, %c, !dbg !3129
  %6 = zext i1 %5 to i64, !dbg !3123
  %spec.select = add i64 %2, %6, !dbg !3123
  %7 = add nuw nsw i64 %1, 1, !dbg !3130
    #dbg_value(i64 %7, !3117, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3121)
  %exitcond.not = icmp eq i64 %7, %s.len, !dbg !3122
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3123

for.done:                                         ; preds = %for.body, %entry
  %.lcssa = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3131)
  ret i64 %.lcssa, !dbg !3132
}
