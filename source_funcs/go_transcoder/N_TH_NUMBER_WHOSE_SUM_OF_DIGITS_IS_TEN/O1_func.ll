define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3115)
    #dbg_value(i64 0, !3111, !DIExpression(), !3116)
    #dbg_value(i64 1, !3112, !DIExpression(), !3117)
  br label %for.loop, !dbg !3118

for.loop:                                         ; preds = %for.done, %entry
  %0 = phi i64 [ 0, %entry ], [ %spec.select, %for.done ], !dbg !3116
  %1 = phi i64 [ 1, %entry ], [ %11, %for.done ], !dbg !3117
    #dbg_value(i64 0, !3113, !DIExpression(), !3119)
    #dbg_value(i64 %1, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %1, !3114, !DIExpression(), !3121)
  %2 = icmp sgt i64 %1, 0, !dbg !3122
  br i1 %2, label %for.body, label %for.done, !dbg !3118

for.body:                                         ; preds = %for.loop, %for.body
  %3 = phi i64 [ %7, %for.body ], [ %1, %for.loop ]
  %4 = phi i64 [ %6, %for.body ], [ 0, %for.loop ]
    #dbg_value(i64 %4, !3113, !DIExpression(), !3123)
    #dbg_value(i64 %3, !3114, !DIExpression(), !3124)
  %5 = urem i64 %3, 10, !dbg !3125
  %6 = add i64 %5, %4, !dbg !3126
    #dbg_value(i64 %6, !3113, !DIExpression(), !3127)
  %7 = udiv i64 %3, 10, !dbg !3128
    #dbg_value(i64 %7, !3114, !DIExpression(), !3129)
  %.not = icmp samesign ult i64 %3, 10, !dbg !3122
  br i1 %.not, label %for.done.loopexit, label %for.body, !dbg !3118

for.done.loopexit:                                ; preds = %for.body
  %8 = icmp eq i64 %6, 10, !dbg !3130
  %9 = zext i1 %8 to i64, !dbg !3118
  br label %for.done, !dbg !3130

for.done:                                         ; preds = %for.done.loopexit, %for.loop
  %.lcssa = phi i64 [ 0, %for.loop ], [ %9, %for.done.loopexit ], !dbg !3119
    #dbg_value(i64 %.lcssa, !3113, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value), !3131)
  %spec.select = add i64 %0, %.lcssa, !dbg !3118
    #dbg_value(i64 %spec.select, !3111, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3133)
  %10 = icmp eq i64 %spec.select, %n, !dbg !3134
  %11 = add i64 %1, 1, !dbg !3135
    #dbg_value(i64 %11, !3112, !DIExpression(), !3135)
  br i1 %10, label %if.then2, label %for.loop, !dbg !3118

if.then2:                                         ; preds = %for.done
    #dbg_value(i64 %1, !3112, !DIExpression(), !3136)
  ret i64 %1, !dbg !3137
}
