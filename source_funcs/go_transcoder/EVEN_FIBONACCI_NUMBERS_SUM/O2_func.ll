define i64 @f_gold(i64 %limit) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %limit, !3026, !DIExpression(), !3031)
  %0 = icmp slt i64 %limit, 2, !dbg !3032
  br i1 %0, label %common.ret, label %for.body.preheader, !dbg !3033

for.body.preheader:                               ; preds = %entry
  %1 = uitofp nneg i64 %limit to double
    #dbg_value(double 2.000000e+00, !3028, !DIExpression(), !3034)
    #dbg_value(i64 %limit, !3026, !DIExpression(), !3035)
  br label %for.body, !dbg !3033

common.ret:                                       ; preds = %entry, %for.done
  %common.ret.op = phi i64 [ %10, %for.done ], [ 0, %entry ]
  ret i64 %common.ret.op, !dbg !3033

for.body:                                         ; preds = %for.body.preheader, %if.done1
  %2 = phi double [ %8, %if.done1 ], [ 2.000000e+00, %for.body.preheader ]
  %3 = phi double [ %6, %if.done1 ], [ 2.000000e+00, %for.body.preheader ]
  %4 = phi double [ %3, %if.done1 ], [ 0.000000e+00, %for.body.preheader ]
    #dbg_value(double %3, !3028, !DIExpression(), !3036)
  %5 = fmul double %3, 4.000000e+00, !dbg !3037
    #dbg_value(double %4, !3027, !DIExpression(), !3038)
  %6 = fadd double %4, %5, !dbg !3039
    #dbg_value(double %6, !3030, !DIExpression(), !3040)
    #dbg_value(i64 %limit, !3026, !DIExpression(), !3041)
  %7 = fcmp ogt double %6, %1, !dbg !3042
  br i1 %7, label %for.done, label %if.done1, !dbg !3033

if.done1:                                         ; preds = %for.body
    #dbg_value(double %3, !3027, !DIExpression(), !3043)
    #dbg_value(double %6, !3030, !DIExpression(), !3044)
    #dbg_value(double %6, !3028, !DIExpression(), !3045)
  %8 = fadd double %2, %6, !dbg !3046
    #dbg_value(double %8, !3029, !DIExpression(), !3046)
    #dbg_value(i64 %limit, !3026, !DIExpression(), !3035)
  %9 = fcmp ugt double %6, %1, !dbg !3047
  br i1 %9, label %for.done, label %for.body, !dbg !3033

for.done:                                         ; preds = %if.done1, %for.body
  %.lcssa.ph = phi double [ %8, %if.done1 ], [ %2, %for.body ]
    #dbg_value(double %.lcssa.ph, !3029, !DIExpression(), !3048)
  %abovemin = fcmp oge double %.lcssa.ph, 0xC3E0000000000000, !dbg !3049
  %belowmax = fcmp ole double %.lcssa.ph, 0x43DFFFFFFFFFFFFE, !dbg !3049
  %inbounds = and i1 %abovemin, %belowmax, !dbg !3049
  %saturated = select i1 %abovemin, i64 9223372036854775807, i64 -9223372036854775808, !dbg !3049
  %isnan = fcmp uno double %.lcssa.ph, 0.000000e+00, !dbg !3049
  %remapped = select i1 %isnan, i64 0, i64 %saturated, !dbg !3049
  %normal = fptosi double %.lcssa.ph to i64, !dbg !3049
  %10 = select i1 %inbounds, i64 %normal, i64 %remapped, !dbg !3049
  br label %common.ret, !dbg !3050
}
