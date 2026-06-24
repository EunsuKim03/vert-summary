define i8 @f_gold(ptr nocapture readonly %strA.data, i64 %strA.len, i64 %strA.cap, ptr nocapture readonly %strB.data, i64 %strB.len, i64 %strB.cap) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %strA.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %strA.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %strA.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value(ptr %strB.data, !3115, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3118)
    #dbg_value(i64 %strB.len, !3115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3118)
    #dbg_value(i64 %strB.cap, !3115, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3118)
    #dbg_value(i64 0, !3116, !DIExpression(), !3119)
    #dbg_value(i64 0, !3117, !DIExpression(), !3120)
    #dbg_value(i64 0, !3117, !DIExpression(), !3121)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3122)
  %0 = icmp sgt i64 %strA.len, 0, !dbg !3123
  br i1 %0, label %for.body, label %for.loop1.preheader, !dbg !3124

for.loop1.preheader:                              ; preds = %for.body, %entry
  %.lcssa6 = phi i64 [ 0, %entry ], [ %7, %for.body ], !dbg !3119
    #dbg_value(i64 0, !3117, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3115, !DIExpression(), !3126)
  %1 = icmp sgt i64 %strB.len, 0, !dbg !3127
  br i1 %1, label %for.body2, label %for.done3, !dbg !3124

for.body:                                         ; preds = %entry, %for.body
  %2 = phi i64 [ %8, %for.body ], [ 0, %entry ]
  %3 = phi i64 [ %7, %for.body ], [ 0, %entry ]
    #dbg_value(i64 %2, !3117, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3129)
    #dbg_value(i64 %2, !3117, !DIExpression(), !3130)
  %4 = getelementptr inbounds nuw i8, ptr %strA.data, i64 %2, !dbg !3131
  %5 = load i8, ptr %4, align 1, !dbg !3131
  %6 = zext i8 %5 to i64, !dbg !3132
  %7 = xor i64 %3, %6, !dbg !3133
    #dbg_value(i64 %7, !3116, !DIExpression(), !3133)
  %8 = add nuw nsw i64 %2, 1, !dbg !3134
    #dbg_value(i64 %8, !3117, !DIExpression(), !3128)
    #dbg_value({ ptr, i64, i64 } poison, !3114, !DIExpression(), !3122)
  %exitcond.not = icmp eq i64 %8, %strA.len, !dbg !3123
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3124

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %9 = phi i64 [ %15, %for.body2 ], [ 0, %for.loop1.preheader ]
  %10 = phi i64 [ %14, %for.body2 ], [ %.lcssa6, %for.loop1.preheader ]
    #dbg_value(i64 %9, !3117, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3115, !DIExpression(), !3135)
    #dbg_value(i64 %9, !3117, !DIExpression(), !3136)
  %11 = getelementptr inbounds nuw i8, ptr %strB.data, i64 %9, !dbg !3137
  %12 = load i8, ptr %11, align 1, !dbg !3137
  %13 = zext i8 %12 to i64, !dbg !3138
  %14 = xor i64 %10, %13, !dbg !3139
    #dbg_value(i64 %14, !3116, !DIExpression(), !3139)
  %15 = add nuw nsw i64 %9, 1, !dbg !3140
    #dbg_value(i64 %15, !3117, !DIExpression(), !3125)
    #dbg_value({ ptr, i64, i64 } poison, !3115, !DIExpression(), !3126)
  %exitcond11.not = icmp eq i64 %15, %strB.len, !dbg !3127
  br i1 %exitcond11.not, label %for.done3, label %for.body2, !dbg !3124

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %.lcssa6, %for.loop1.preheader ], [ %14, %for.body2 ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3141)
  %16 = trunc nuw i64 %.lcssa to i8, !dbg !3142
  ret i8 %16, !dbg !3143
}
