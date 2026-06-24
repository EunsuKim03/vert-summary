define i64 @f_gold(ptr nocapture readnone %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(ptr %a.data, !3114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3119)
    #dbg_value(i64 %a.len, !3114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3119)
    #dbg_value(i64 %a.cap, !3114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3119)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3119)
    #dbg_value(i64 1, !3116, !DIExpression(), !3120)
    #dbg_value(i64 1, !3117, !DIExpression(), !3121)
  %.not1 = icmp slt i64 %n, 1, !dbg !3122
  br i1 %.not1, label %for.done, label %for.body.lr.ph, !dbg !3123

for.body.lr.ph:                                   ; preds = %entry
  %0 = sitofp i64 %n to double
  br label %for.body, !dbg !3123

for.loop:                                         ; preds = %for.body
    #dbg_value(i64 %3, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3125)
  %.not = icmp sgt i64 %3, %n, !dbg !3122
  br i1 %.not, label %for.done, label %for.body, !dbg !3123

for.body:                                         ; preds = %for.body.lr.ph, %for.loop
  %1 = phi i64 [ 1, %for.body.lr.ph ], [ %3, %for.loop ]
  %2 = phi i64 [ 1, %for.body.lr.ph ], [ %1, %for.loop ]
    #dbg_value(i64 %1, !3117, !DIExpression(), !3124)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3126)
    #dbg_value(i64 %1, !3117, !DIExpression(), !3127)
  %3 = add i64 %1, 1, !dbg !3128
  %4 = mul i64 %3, %1, !dbg !3129
  %5 = sdiv i64 %4, 2, !dbg !3130
  %6 = sitofp i64 %5 to double, !dbg !3131
    #dbg_value(double %6, !3118, !DIExpression(), !3132)
    #dbg_value(double %6, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %n, !3115, !DIExpression(), !3134)
  %7 = fcmp olt double %6, %0, !dbg !3135
  br i1 %7, label %for.loop, label %for.done, !dbg !3123

for.done:                                         ; preds = %for.loop, %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %1, %for.loop ], [ %2, %for.body ], !dbg !3120
    #dbg_value(i64 %.lcssa, !3116, !DIExpression(), !3136)
  ret i64 %.lcssa, !dbg !3137
}
