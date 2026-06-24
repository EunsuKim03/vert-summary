define noundef i1 @f_gold(i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3034)
    #dbg_value(i1 false, !3032, !DIExpression(), !3035)
  %.not8 = icmp eq i64 %n, 0, !dbg !3036
  br i1 %.not8, label %common.ret, label %for.body.lr.ph, !dbg !3037

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %k, 0
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3038

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next6
  %1 = phi i1 [ %.mux, %divbyzero.next6 ], [ false, %for.body.lr.ph ]
  %2 = phi i64 [ %6, %divbyzero.next6 ], [ %n, %for.body.lr.ph ]
    #dbg_value(i64 %2, !3030, !DIExpression(), !3039)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3040)
  %3 = urem i64 %2, %k, !dbg !3038
    #dbg_value(i64 %3, !3033, !DIExpression(), !3041)
  %4 = icmp sgt i64 %3, 1, !dbg !3042
  br i1 %4, label %common.ret, label %if.done, !dbg !3037

common.ret:                                       ; preds = %for.body, %divbyzero.next6, %if.done, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ false, %if.done ], [ true, %divbyzero.next6 ], [ false, %for.body ], !dbg !3036
  ret i1 %.not.lcssa, !dbg !3037

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %3, !3033, !DIExpression(), !3043)
  %5 = icmp eq i64 %3, 1, !dbg !3044
  %brmerge.not = select i1 %5, i1 %1, i1 false, !dbg !3037
  br i1 %brmerge.not, label %common.ret, label %divbyzero.next6, !dbg !3037

divbyzero.next6:                                  ; preds = %if.done
  %.mux = select i1 %5, i1 true, i1 %1, !dbg !3037
    #dbg_value(i64 %k, !3031, !DIExpression(), !3045)
  %6 = udiv i64 %2, %k, !dbg !3046
    #dbg_value(i64 %6, !3030, !DIExpression(), !3047)
  %.not = icmp ugt i64 %k, %2, !dbg !3036
  br i1 %.not, label %common.ret, label %for.body, !dbg !3037

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3038
  unreachable, !dbg !3038
}
