define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3113)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
  %0 = icmp slt i64 %a, %b, !dbg !3116
    #dbg_value(i64 %b, !3111, !DIExpression(), !3117)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3118)
  %1 = icmp slt i64 %b, %c
  %or.cond = select i1 %0, i1 %1, i1 false, !dbg !3119
  br i1 %or.cond, label %common.ret, label %cond.false, !dbg !3119

common.ret:                                       ; preds = %cond.false4, %if.else, %cond.false, %entry
  %common.ret.op = phi i64 [ %b, %entry ], [ %b, %cond.false ], [ %a, %if.else ], [ %spec.select, %cond.false4 ]
  ret i64 %common.ret.op, !dbg !3119

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %c, !3112, !DIExpression(), !3120)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3121)
  %2 = icmp slt i64 %c, %b, !dbg !3122
    #dbg_value(i64 %b, !3111, !DIExpression(), !3123)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3124)
  %3 = icmp slt i64 %b, %a
  %or.cond1 = and i1 %3, %2, !dbg !3119
  br i1 %or.cond1, label %common.ret, label %if.else, !dbg !3119

if.else:                                          ; preds = %cond.false
    #dbg_value(i64 %b, !3111, !DIExpression(), !3125)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3126)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3127)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3128)
  %4 = icmp slt i64 %a, %c
  %or.cond2 = select i1 %3, i1 %4, i1 false, !dbg !3119
  br i1 %or.cond2, label %common.ret, label %cond.false4, !dbg !3119

cond.false4:                                      ; preds = %if.else
    #dbg_value(i64 %c, !3112, !DIExpression(), !3129)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3130)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3131)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3132)
  %5 = call i64 @llvm.smax.i64(i64 %c, i64 %a), !dbg !3119
  %spec.select = select i1 %0, i64 %5, i64 %c, !dbg !3119
  br label %common.ret, !dbg !3119
}
