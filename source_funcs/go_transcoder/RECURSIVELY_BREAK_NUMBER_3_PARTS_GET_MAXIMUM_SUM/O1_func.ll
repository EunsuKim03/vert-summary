define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %n, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %n, !3110, !DIExpression(), !3112)
  %switch = icmp ult i64 %n, 2, !dbg !3113
  br i1 %switch, label %common.ret, label %if.done, !dbg !3113

common.ret:                                       ; preds = %entry, %if.done
  %common.ret.op = phi i64 [ %x.y.i, %if.done ], [ %n, %entry ]
  ret i64 %common.ret.op, !dbg !3113

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3110, !DIExpression(), !3114)
  %0 = sdiv i64 %n, 2, !dbg !3115
  %1 = call i64 @f_gold(i64 %0), !dbg !3116
    #dbg_value(i64 %n, !3110, !DIExpression(), !3117)
  %2 = sdiv i64 %n, 3, !dbg !3118
  %3 = call i64 @f_gold(i64 %2), !dbg !3119
  %4 = add i64 %3, %1, !dbg !3120
    #dbg_value(i64 %n, !3110, !DIExpression(), !3121)
  %5 = sdiv i64 %n, 4, !dbg !3122
  %6 = call i64 @f_gold(i64 %5), !dbg !3123
  %7 = add i64 %4, %6, !dbg !3124
    #dbg_value(i64 %n, !3110, !DIExpression(), !3125)
    #dbg_value(i64 %7, !3126, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3131, !DIExpression(), !3132)
    #dbg_value(i64 %7, !3126, !DIExpression(), !3134)
    #dbg_value(i64 %n, !3131, !DIExpression(), !3135)
  %x.y.i = call i64 @llvm.smax.i64(i64 %7, i64 range(i64 2, 0) %n), !dbg !3136
  br label %common.ret, !dbg !3137
}
