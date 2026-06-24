define range(i64 -9223372036854775807, -9223372036854775808) i64 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3035)
  %.not = icmp slt i64 %n, %p, !dbg !3036
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3037

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3033, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3039)
  %.not13 = icmp slt i64 %n, 1, !dbg !3040
  br i1 %.not13, label %common.ret, label %for.body.lr.ph, !dbg !3037

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %0 = icmp eq i64 %p, 0
  %1 = icmp eq i64 %p, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3041

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ 1, %for.loop.preheader ], [ %8, %for.body ]
  ret i64 %common.ret.op, !dbg !3037

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %for.body.lr.ph ]
  %3 = phi i64 [ %8, %for.body ], [ 1, %for.body.lr.ph ]
    #dbg_value(i64 %3, !3032, !DIExpression(), !3042)
    #dbg_value(i64 %2, !3033, !DIExpression(), !3043)
    #dbg_value(i64 %p, !3031, !DIExpression(), !3044)
  %4 = mul i64 %2, %3, !dbg !3045
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !3041
  %6 = and i1 %1, %5, !dbg !3041
  %7 = select i1 %6, i64 1, i64 %p, !dbg !3041
  %8 = srem i64 %4, %7, !dbg !3041
    #dbg_value(i64 %8, !3032, !DIExpression(), !3046)
  %9 = add i64 %2, 1, !dbg !3047
    #dbg_value(i64 %9, !3033, !DIExpression(), !3038)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3039)
  %.not1 = icmp sgt i64 %9, %n, !dbg !3040
  br i1 %.not1, label %common.ret, label %for.body, !dbg !3037

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3041
  unreachable, !dbg !3041
}
