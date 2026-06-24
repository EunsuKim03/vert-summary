define i64 @f_gold(i64 %a, i64 %b, i64 %c) local_unnamed_addr #9 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3113)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3113)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3114)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3115)
  %0 = icmp sgt i64 %a, %b, !dbg !3116
  br i1 %0, label %if.then, label %if.else4, !dbg !3117

if.then:                                          ; preds = %entry
    #dbg_value(i64 %b, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3119)
  %1 = icmp sgt i64 %b, %c, !dbg !3120
  %c.a = call i64 @llvm.smin.i64(i64 %a, i64 %c)
  %spec.select = select i1 %1, i64 %b, i64 %c.a, !dbg !3117
  br label %common.ret, !dbg !3117

common.ret:                                       ; preds = %if.else4, %if.then
  %common.ret.op = phi i64 [ %spec.select, %if.then ], [ %spec.select1, %if.else4 ]
  ret i64 %common.ret.op, !dbg !3117

if.else4:                                         ; preds = %entry
    #dbg_value(i64 %a, !3110, !DIExpression(), !3121)
    #dbg_value(i64 %c, !3112, !DIExpression(), !3122)
  %2 = icmp sgt i64 %a, %c, !dbg !3123
  %c.b = call i64 @llvm.smin.i64(i64 %b, i64 %c)
  %spec.select1 = select i1 %2, i64 %a, i64 %c.b, !dbg !3117
  br label %common.ret, !dbg !3117
}
