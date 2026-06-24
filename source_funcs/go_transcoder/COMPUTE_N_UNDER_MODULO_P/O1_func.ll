define i64 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3118)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3119)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3120)
  %.not = icmp slt i64 %n, %p, !dbg !3121
  br i1 %.not, label %for.loop.preheader, label %common.ret, !dbg !3122

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3117, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3124)
  %.not13 = icmp slt i64 %n, 1, !dbg !3125
  br i1 %.not13, label %common.ret, label %for.body.lr.ph, !dbg !3122

for.body.lr.ph:                                   ; preds = %for.loop.preheader
  %0 = icmp eq i64 %p, 0
  %1 = icmp eq i64 %p, -1
  br i1 %0, label %divbyzero.throw, label %for.body, !dbg !3126

common.ret:                                       ; preds = %for.body, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ 0, %entry ], [ 1, %for.loop.preheader ], [ %8, %for.body ]
  ret i64 %common.ret.op, !dbg !3122

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %2 = phi i64 [ %9, %for.body ], [ 1, %for.body.lr.ph ]
  %3 = phi i64 [ %8, %for.body ], [ 1, %for.body.lr.ph ]
    #dbg_value(i64 %2, !3117, !DIExpression(), !3123)
    #dbg_value(i64 %3, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %2, !3117, !DIExpression(), !3128)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3129)
  %4 = mul i64 %2, %3, !dbg !3130
  %5 = icmp eq i64 %4, -9223372036854775808, !dbg !3126
  %6 = and i1 %1, %5, !dbg !3126
  %7 = select i1 %6, i64 1, i64 %p, !dbg !3126
  %8 = srem i64 %4, %7, !dbg !3126
    #dbg_value(i64 %8, !3116, !DIExpression(), !3131)
  %9 = add i64 %2, 1, !dbg !3132
    #dbg_value(i64 %9, !3117, !DIExpression(), !3123)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3124)
  %.not1 = icmp sgt i64 %9, %n, !dbg !3125
  br i1 %.not1, label %common.ret, label %for.body, !dbg !3122

divbyzero.throw:                                  ; preds = %for.body.lr.ph
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3126
  unreachable, !dbg !3126
}
