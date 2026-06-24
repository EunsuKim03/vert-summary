define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3021 {
entry:
    #dbg_value(i64 %a, !3026, !DIExpression(), !3029)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3029)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3029)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3030)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3031)
  %0 = icmp slt i64 %a, %b, !dbg !3032
    #dbg_value(i64 %b, !3027, !DIExpression(), !3033)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3034)
  %1 = icmp slt i64 %b, %c
  %or.cond = select i1 %0, i1 %1, i1 false, !dbg !3035
  br i1 %or.cond, label %common.ret, label %cond.false, !dbg !3035

common.ret:                                       ; preds = %cond.false4, %if.else, %cond.false, %entry
  %common.ret.op = phi i64 [ %b, %entry ], [ %b, %cond.false ], [ %a, %if.else ], [ %spec.select, %cond.false4 ]
  ret i64 %common.ret.op, !dbg !3035

cond.false:                                       ; preds = %entry
    #dbg_value(i64 %c, !3028, !DIExpression(), !3036)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3037)
  %2 = icmp slt i64 %c, %b, !dbg !3038
    #dbg_value(i64 %b, !3027, !DIExpression(), !3039)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3040)
  %3 = icmp slt i64 %b, %a
  %or.cond1 = and i1 %3, %2, !dbg !3035
  br i1 %or.cond1, label %common.ret, label %if.else, !dbg !3035

if.else:                                          ; preds = %cond.false
    #dbg_value(i64 %b, !3027, !DIExpression(), !3041)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3042)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3043)
    #dbg_value(i64 %c, !3028, !DIExpression(), !3044)
  %4 = icmp slt i64 %a, %c
  %or.cond2 = select i1 %3, i1 %4, i1 false, !dbg !3035
  br i1 %or.cond2, label %common.ret, label %cond.false4, !dbg !3035

cond.false4:                                      ; preds = %if.else
    #dbg_value(i64 %c, !3028, !DIExpression(), !3045)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3046)
    #dbg_value(i64 %a, !3026, !DIExpression(), !3047)
    #dbg_value(i64 %b, !3027, !DIExpression(), !3048)
  %5 = tail call i64 @llvm.smax.i64(i64 %c, i64 %a), !dbg !3035
  %spec.select = select i1 %0, i64 %5, i64 %c, !dbg !3035
  br label %common.ret, !dbg !3035
}
