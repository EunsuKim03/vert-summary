define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 0, !3028, !DIExpression(), !3030)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3031)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3032)
  %0 = mul i64 %b, %a, !dbg !3033
  %1 = sitofp i64 %0 to double, !dbg !3034
    #dbg_value(double %1, !3035, !DIExpression(), !3041)
  %2 = tail call double @llvm.fabs.f64(double %1), !dbg !3043
  %belowmax = fcmp ole double %2, 0x43DFFFFFFFFFFFFE, !dbg !3044
  %normal = fptosi double %2 to i64, !dbg !3044
  %3 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3044
    #dbg_value(i64 %3, !3029, !DIExpression(), !3045)
  %4 = icmp eq i64 %3, 0, !dbg !3046
  br i1 %4, label %common.ret, label %for.loop.preheader, !dbg !3047

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 %3, !3029, !DIExpression(), !3048)
  %5 = icmp sgt i64 %3, 0, !dbg !3049
  br i1 %5, label %for.body, label %common.ret, !dbg !3047

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 1, %entry ], [ 0, %for.loop.preheader ], [ %8, %for.body ]
  ret i64 %common.ret.op, !dbg !3047

for.body:                                         ; preds = %for.loop.preheader, %for.body
  %6 = phi i64 [ %9, %for.body ], [ %3, %for.loop.preheader ]
  %7 = phi i64 [ %8, %for.body ], [ 0, %for.loop.preheader ]
    #dbg_value(i64 %6, !3029, !DIExpression(), !3048)
  %8 = add i64 %7, 1, !dbg !3050
    #dbg_value(i64 %8, !3028, !DIExpression(), !3050)
  %9 = udiv i64 %6, 10, !dbg !3051
    #dbg_value(i64 %9, !3029, !DIExpression(), !3048)
  %.not = icmp samesign ult i64 %6, 10, !dbg !3049
  br i1 %.not, label %common.ret, label %for.body, !dbg !3047
}
