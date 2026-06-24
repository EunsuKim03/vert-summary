define range(i64 0, 2) i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.done, %entry
  %n.tr = phi i64 [ %n, %entry ], [ %11, %for.done ]
    #dbg_value(i64 0, !3027, !DIExpression(), !3029)
    #dbg_value(i64 0, !3028, !DIExpression(), !3030)
    #dbg_value(i64 %n.tr, !3026, !DIExpression(), !3031)
  %spec.select = tail call i64 @llvm.abs.i64(i64 %n.tr, i1 false), !dbg !3032
    #dbg_value(i64 %spec.select, !3026, !DIExpression(), !3033)
  switch i64 %spec.select, label %for.body [
    i64 0, label %common.ret
    i64 1, label %if.then3
  ], !dbg !3032

common.ret:                                       ; preds = %tailrecurse, %if.then3
  %common.ret.op = phi i64 [ 0, %if.then3 ], [ 1, %tailrecurse ]
  ret i64 %common.ret.op, !dbg !3032

if.then3:                                         ; preds = %tailrecurse
  br label %common.ret, !dbg !3034

for.body:                                         ; preds = %tailrecurse, %for.body
  %0 = phi i64 [ %6, %for.body ], [ 0, %tailrecurse ]
  %1 = phi i64 [ %spec.select5, %for.body ], [ 0, %tailrecurse ]
  %2 = phi i64 [ %7, %for.body ], [ %spec.select, %tailrecurse ]
    #dbg_value(i64 %2, !3026, !DIExpression(), !3035)
  %3 = and i64 %2, 1, !dbg !3036
  %spec.select5 = add i64 %1, %3, !dbg !3032
  %4 = lshr i64 %2, 1, !dbg !3032
  %5 = and i64 %4, 1, !dbg !3032
  %6 = add i64 %0, %5, !dbg !3032
  %7 = ashr i64 %2, 2, !dbg !3037
    #dbg_value(i64 %7, !3026, !DIExpression(), !3038)
  %.not = icmp ult i64 %2, 4, !dbg !3039
  br i1 %.not, label %for.done, label %for.body, !dbg !3032

for.done:                                         ; preds = %for.body
    #dbg_value(i64 %spec.select5, !3027, !DIExpression(), !3040)
    #dbg_value(i64 %6, !3028, !DIExpression(), !3041)
  %8 = sub i64 %spec.select5, %6, !dbg !3042
  %9 = sitofp i64 %8 to double, !dbg !3043
    #dbg_value(double %9, !3044, !DIExpression(), !3050)
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !3052
  %belowmax = fcmp ole double %10, 0x43DFFFFFFFFFFFFE, !dbg !3053
  %normal = fptosi double %10 to i64, !dbg !3053
  %11 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3053
  br label %tailrecurse, !dbg !3054
}
