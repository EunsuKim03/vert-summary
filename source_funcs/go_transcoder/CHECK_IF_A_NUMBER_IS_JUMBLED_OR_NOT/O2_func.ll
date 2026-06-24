define noundef i1 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %num, !3026, !DIExpression(), !3029)
  %num.off = add i64 %num, 9, !dbg !3030
  %0 = icmp ult i64 %num.off, 19, !dbg !3030
  br i1 %0, label %common.ret, label %for.loop, !dbg !3031

common.ret:                                       ; preds = %for.loop, %if.done, %entry
  %common.ret.op = phi i1 [ true, %entry ], [ true, %for.loop ], [ false, %if.done ]
  ret i1 %common.ret.op, !dbg !3031

for.loop:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %4, %if.done ], [ %num, %entry ], !dbg !3032
    #dbg_value(i64 %1, !3026, !DIExpression(), !3033)
  %.off = add i64 %1, 9
  %2 = icmp ult i64 %.off, 19
  br i1 %2, label %common.ret, label %if.done, !dbg !3031

if.done:                                          ; preds = %for.loop
    #dbg_value(i64 %1, !3026, !DIExpression(), !3034)
  %3 = srem i64 %1, 10, !dbg !3035
    #dbg_value(i64 %3, !3027, !DIExpression(), !3036)
  %4 = sdiv i64 %1, 10, !dbg !3037
  %5 = srem i64 %4, 10, !dbg !3038
    #dbg_value(i64 %5, !3028, !DIExpression(), !3039)
  %6 = sub nsw i64 %5, %3, !dbg !3040
  %7 = sitofp i64 %6 to double, !dbg !3041
    #dbg_value(double %7, !3042, !DIExpression(), !3048)
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !3050
  %9 = fcmp ogt double %8, 1.000000e+00, !dbg !3051
  br i1 %9, label %common.ret, label %for.loop, !dbg !3031
}
