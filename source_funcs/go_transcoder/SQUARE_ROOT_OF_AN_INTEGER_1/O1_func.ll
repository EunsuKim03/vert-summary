define i64 @f_gold(i64 %x) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %x, !3110, !DIExpression(), !3115)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3116)
  %switch = icmp ult i64 %x, 2, !dbg !3117
  br i1 %switch, label %common.ret, label %for.loop.preheader, !dbg !3117

for.loop.preheader:                               ; preds = %entry
    #dbg_value(i64 1, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %x, !3112, !DIExpression(), !3119)
  %.not912 = icmp slt i64 %x, 1, !dbg !3120
  br i1 %.not912, label %common.ret, label %for.body.lr.ph, !dbg !3117

common.ret:                                       ; preds = %if.then3, %for.body, %if.else, %for.loop.preheader, %entry
  %common.ret.op = phi i64 [ %x, %entry ], [ 0, %for.loop.preheader ], [ %.ph615, %if.else ], [ %2, %for.body ], [ %2, %if.then3 ]
  ret i64 %common.ret.op, !dbg !3117

for.body:                                         ; preds = %for.body.lr.ph, %if.else
  %0 = phi i64 [ %.ph514, %for.body.lr.ph ], [ %7, %if.else ]
    #dbg_value(i64 %0, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %.ph13, !3111, !DIExpression(), !3121)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3122)
  %1 = add i64 %0, %.ph13, !dbg !3123
  %2 = sdiv i64 %1, 2, !dbg !3124
    #dbg_value(i64 %2, !3114, !DIExpression(), !3125)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3126)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3127)
  %3 = mul i64 %2, %2, !dbg !3128
    #dbg_value(i64 %x, !3110, !DIExpression(), !3129)
  %4 = icmp eq i64 %3, %x, !dbg !3130
  br i1 %4, label %common.ret, label %if.done2, !dbg !3117

if.done2:                                         ; preds = %for.body
    #dbg_value(i64 %2, !3114, !DIExpression(), !3131)
    #dbg_value(i64 %2, !3114, !DIExpression(), !3132)
    #dbg_value(i64 %x, !3110, !DIExpression(), !3133)
  %5 = icmp slt i64 %3, %x, !dbg !3134
  br i1 %5, label %if.then3, label %if.else, !dbg !3117

if.then3:                                         ; preds = %if.done2
    #dbg_value(i64 %2, !3114, !DIExpression(), !3135)
  %6 = add nsw i64 %2, 1, !dbg !3136
    #dbg_value(i64 %2, !3113, !DIExpression(), !3137)
    #dbg_value(i64 %6, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %0, !3112, !DIExpression(), !3119)
  %.not9.not = icmp slt i64 %2, %0, !dbg !3120
  br i1 %.not9.not, label %for.body.lr.ph, label %common.ret, !dbg !3117

for.body.lr.ph:                                   ; preds = %for.loop.preheader, %if.then3
  %.ph615 = phi i64 [ %2, %if.then3 ], [ 0, %for.loop.preheader ]
  %.ph514 = phi i64 [ %0, %if.then3 ], [ %x, %for.loop.preheader ]
  %.ph13 = phi i64 [ %6, %if.then3 ], [ 1, %for.loop.preheader ]
    #dbg_value(i64 %.ph514, !3112, !DIExpression(), !3119)
    #dbg_value(i64 %.ph13, !3111, !DIExpression(), !3118)
  br label %for.body, !dbg !3117

if.else:                                          ; preds = %if.done2
    #dbg_value(i64 %2, !3114, !DIExpression(), !3138)
  %7 = add nsw i64 %2, -1, !dbg !3139
    #dbg_value(i64 %.ph13, !3111, !DIExpression(), !3118)
    #dbg_value(i64 %7, !3112, !DIExpression(), !3119)
  %.not.not = icmp slt i64 %.ph13, %2, !dbg !3120
  br i1 %.not.not, label %for.body, label %common.ret, !dbg !3117
}
