define noundef i1 @f_gold(i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3118)
    #dbg_value(i1 false, !3116, !DIExpression(), !3119)
  %.not8 = icmp eq i64 %n, 0, !dbg !3120
  br i1 %.not8, label %common.ret, label %for.body.lr.ph, !dbg !3121

for.body.lr.ph:                                   ; preds = %entry
  %0 = icmp eq i64 %k, 0
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3122

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next6
  %1 = phi i1 [ %.mux, %divbyzero.next6 ], [ false, %for.body.lr.ph ]
  %2 = phi i64 [ %6, %divbyzero.next6 ], [ %n, %for.body.lr.ph ]
    #dbg_value(i64 %2, !3114, !DIExpression(), !3123)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3124)
    #dbg_value(i64 %k, !3115, !DIExpression(), !3125)
  %3 = urem i64 %2, %k, !dbg !3122
    #dbg_value(i64 %3, !3117, !DIExpression(), !3126)
    #dbg_value(i64 %3, !3117, !DIExpression(), !3127)
  %4 = icmp sgt i64 %3, 1, !dbg !3128
  br i1 %4, label %common.ret, label %if.done, !dbg !3121

common.ret:                                       ; preds = %for.body, %divbyzero.next6, %if.done, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ false, %for.body ], [ true, %divbyzero.next6 ], [ false, %if.done ], !dbg !3120
  ret i1 %.not.lcssa, !dbg !3121

if.done:                                          ; preds = %for.body
    #dbg_value(i64 %3, !3117, !DIExpression(), !3129)
  %5 = icmp eq i64 %3, 1, !dbg !3130
  %brmerge.not = select i1 %5, i1 %1, i1 false, !dbg !3121
  br i1 %brmerge.not, label %common.ret, label %divbyzero.next6, !dbg !3121

divbyzero.next6:                                  ; preds = %if.done
  %.mux = select i1 %5, i1 true, i1 %1, !dbg !3121
    #dbg_value(i64 %k, !3115, !DIExpression(), !3131)
  %6 = udiv i64 %2, %k, !dbg !3132
    #dbg_value(i64 %6, !3114, !DIExpression(), !3123)
  %.not = icmp ugt i64 %k, %2, !dbg !3120
  br i1 %.not, label %common.ret, label %for.body, !dbg !3121

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3122
  unreachable, !dbg !3122
}
