define range(i64 0, 2) i64 @f_gold(i64 %num) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %num, !3110, !DIExpression(), !3111)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3112)
  %num.fr = freeze i64 %num, !dbg !3113
  %0 = icmp slt i64 %num.fr, 0, !dbg !3114
  br i1 %0, label %if.then, label %if.done, !dbg !3115

common.ret:                                       ; preds = %if.done2, %if.done, %if.done, %if.done4, %if.then
  %common.ret.op = phi i64 [ %2, %if.then ], [ %8, %if.done4 ], [ 1, %if.done ], [ 1, %if.done ], [ 0, %if.done2 ]
  ret i64 %common.ret.op, !dbg !3115

if.then:                                          ; preds = %entry
    #dbg_value(i64 %num, !3110, !DIExpression(), !3116)
  %1 = sub i64 0, %num.fr, !dbg !3117
  %2 = call i64 @f_gold(i64 %1), !dbg !3118
  br label %common.ret, !dbg !3119

if.done:                                          ; preds = %entry
    #dbg_value(i64 %num, !3110, !DIExpression(), !3120)
  switch i64 %num.fr, label %if.done2 [
    i64 0, label %common.ret
    i64 7, label %common.ret
  ], !dbg !3115

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %num, !3110, !DIExpression(), !3121)
  %3 = icmp slt i64 %num.fr, 10, !dbg !3122
  br i1 %3, label %common.ret, label %if.done4, !dbg !3115

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %num, !3110, !DIExpression(), !3123)
  %4 = udiv i64 %num.fr, 10, !dbg !3124
    #dbg_value(i64 %num, !3110, !DIExpression(), !3125)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3126)
  %5 = urem i64 %num.fr, 10, !dbg !3113
  %6 = shl nuw nsw i64 %5, 1, !dbg !3127
  %7 = sub nsw i64 %4, %6, !dbg !3128
  %8 = call i64 @f_gold(i64 %7), !dbg !3129
  br label %common.ret, !dbg !3130
}
