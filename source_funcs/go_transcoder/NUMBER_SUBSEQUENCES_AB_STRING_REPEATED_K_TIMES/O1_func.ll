define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap, i64 %K) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %s.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3121)
    #dbg_value(i64 %s.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3121)
    #dbg_value(i64 %s.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3121)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3121)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3122)
    #dbg_value(i64 %s.len, !3116, !DIExpression(), !3123)
    #dbg_value(i64 0, !3117, !DIExpression(), !3124)
    #dbg_value(i64 0, !3118, !DIExpression(), !3125)
    #dbg_value(i64 0, !3119, !DIExpression(), !3126)
    #dbg_value(i64 0, !3120, !DIExpression(), !3127)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3128
  br i1 %0, label %for.body, label %for.done, !dbg !3129

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %14, %for.body ], [ 0, %entry ]
  %2 = phi i64 [ %13, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %spec.select, %for.body ], [ 0, %entry ]
  %4 = phi i64 [ %11, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %1, !3120, !DIExpression(), !3130)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3132)
  %5 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1, !dbg !3133
  %6 = load i8, ptr %5, align 1, !dbg !3133
  %7 = icmp eq i8 %6, 97, !dbg !3134
  %8 = zext i1 %7 to i64, !dbg !3129
  %spec.select = add i64 %3, %8, !dbg !3129
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3135)
    #dbg_value(i64 %1, !3120, !DIExpression(), !3136)
  %9 = icmp eq i8 %6, 98, !dbg !3137
  %10 = select i1 %9, i64 %3, i64 0, !dbg !3129
  %11 = add i64 %10, %4, !dbg !3129
  %12 = zext i1 %9 to i64, !dbg !3129
  %13 = add i64 %2, %12, !dbg !3129
  %14 = add nuw nsw i64 %1, 1, !dbg !3138
    #dbg_value(i64 %14, !3120, !DIExpression(), !3130)
    #dbg_value(i64 %s.len, !3116, !DIExpression(), !3139)
  %exitcond.not = icmp eq i64 %14, %s.len, !dbg !3128
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3129

for.done:                                         ; preds = %for.body, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %11, %for.body ], !dbg !3124
  %.lcssa3 = phi i64 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3125
  %.lcssa = phi i64 [ 0, %entry ], [ %13, %for.body ], !dbg !3126
    #dbg_value(i64 %.lcssa5, !3117, !DIExpression(), !3140)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3141)
  %15 = mul i64 %.lcssa5, %K, !dbg !3142
    #dbg_value(i64 %K, !3115, !DIExpression(), !3143)
    #dbg_value(i64 %K, !3115, !DIExpression(), !3144)
  %16 = add i64 %K, -1, !dbg !3145
  %17 = mul i64 %16, %K, !dbg !3146
  %18 = sdiv i64 %17, 2, !dbg !3147
    #dbg_value(i64 %.lcssa3, !3118, !DIExpression(), !3148)
  %19 = mul i64 %.lcssa3, %18, !dbg !3149
    #dbg_value(i64 %.lcssa, !3119, !DIExpression(), !3150)
  %20 = mul i64 %19, %.lcssa, !dbg !3151
  %21 = add i64 %20, %15, !dbg !3152
  ret i64 %21, !dbg !3153
}
