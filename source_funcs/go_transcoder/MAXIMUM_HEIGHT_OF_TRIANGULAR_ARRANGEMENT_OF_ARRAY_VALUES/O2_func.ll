define i64 @f_gold(ptr nocapture readnone %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(ptr %a.data, !3030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3035)
    #dbg_value(i64 %a.len, !3030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3035)
    #dbg_value(i64 %a.cap, !3030, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3035)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3035)
    #dbg_value(i64 1, !3032, !DIExpression(), !3036)
    #dbg_value(i64 1, !3033, !DIExpression(), !3037)
  %.not1 = icmp slt i64 %n, 1, !dbg !3038
  br i1 %.not1, label %for.done, label %for.body.lr.ph, !dbg !3039

for.body.lr.ph:                                   ; preds = %entry
  %0 = uitofp nneg i64 %n to double
  br label %for.body, !dbg !3039

for.loop:                                         ; preds = %for.body
    #dbg_value(i64 %3, !3033, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3041)
  %.not = icmp sgt i64 %3, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body, !dbg !3039

for.body:                                         ; preds = %for.body.lr.ph, %for.loop
  %1 = phi i64 [ 1, %for.body.lr.ph ], [ %3, %for.loop ]
  %2 = phi i64 [ 1, %for.body.lr.ph ], [ %1, %for.loop ]
    #dbg_value(i64 %1, !3033, !DIExpression(), !3042)
  %3 = add i64 %1, 1, !dbg !3043
  %4 = mul i64 %3, %1, !dbg !3044
  %5 = sdiv i64 %4, 2, !dbg !3045
  %6 = sitofp i64 %5 to double, !dbg !3046
    #dbg_value(double %6, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3031, !DIExpression(), !3048)
  %7 = fcmp olt double %6, %0, !dbg !3049
  br i1 %7, label %for.loop, label %for.done, !dbg !3039

for.done:                                         ; preds = %for.loop, %for.body, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %2, %for.body ], [ %1, %for.loop ], !dbg !3036
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3050)
  ret i64 %.lcssa, !dbg !3051
}
