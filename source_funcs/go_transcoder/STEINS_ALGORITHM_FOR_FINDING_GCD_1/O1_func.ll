define i64 @f_gold(i64 %a, i64 %b) local_unnamed_addr #11 !dbg !3105 {
entry:
    #dbg_value(i64 %a, !3110, !DIExpression(), !3112)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3112)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3113)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3114)
  %0 = icmp eq i64 %a, %b, !dbg !3115
  br i1 %0, label %common.ret, label %if.done, !dbg !3116

common.ret:                                       ; preds = %if.done2, %if.done, %entry, %if.done11, %if.then10, %if.then8, %if.else, %if.then6
  %common.ret.op = phi i64 [ %6, %if.then6 ], [ %10, %if.else ], [ %13, %if.then8 ], [ %17, %if.then10 ], [ %20, %if.done11 ], [ %a, %entry ], [ %b, %if.done ], [ %a, %if.done2 ]
  ret i64 %common.ret.op, !dbg !3116

if.done:                                          ; preds = %entry
    #dbg_value(i64 %a, !3110, !DIExpression(), !3117)
  %1 = icmp eq i64 %a, 0, !dbg !3118
  br i1 %1, label %common.ret, label %if.done2, !dbg !3116

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %b, !3111, !DIExpression(), !3119)
  %2 = icmp eq i64 %b, 0, !dbg !3120
  br i1 %2, label %common.ret, label %if.done4, !dbg !3116

if.done4:                                         ; preds = %if.done2
    #dbg_value(i64 %a, !3110, !DIExpression(), !3121)
  %3 = and i64 %a, 1, !dbg !3122
  %.not.not = icmp eq i64 %3, 0, !dbg !3123
  br i1 %.not.not, label %if.then5, label %if.done7, !dbg !3116

if.then5:                                         ; preds = %if.done4
    #dbg_value(i64 %b, !3111, !DIExpression(), !3124)
  %4 = and i64 %b, 1, !dbg !3125
  %.not = icmp eq i64 %4, 0, !dbg !3126
  br i1 %.not, label %if.else, label %if.then6, !dbg !3116

if.then6:                                         ; preds = %if.then5
    #dbg_value(i64 %a, !3110, !DIExpression(), !3127)
  %5 = ashr exact i64 %a, 1, !dbg !3128
    #dbg_value(i64 %b, !3111, !DIExpression(), !3129)
  %6 = call i64 @f_gold(i64 %5, i64 %b), !dbg !3130
  br label %common.ret, !dbg !3131

if.else:                                          ; preds = %if.then5
    #dbg_value(i64 %a, !3110, !DIExpression(), !3132)
  %7 = ashr exact i64 %a, 1, !dbg !3133
    #dbg_value(i64 %b, !3111, !DIExpression(), !3134)
  %8 = ashr exact i64 %b, 1, !dbg !3135
  %9 = call i64 @f_gold(i64 %7, i64 %8), !dbg !3136
  %10 = shl i64 %9, 1, !dbg !3137
  br label %common.ret, !dbg !3138

if.done7:                                         ; preds = %if.done4
    #dbg_value(i64 %b, !3111, !DIExpression(), !3139)
  %11 = and i64 %b, 1, !dbg !3140
  %.not.not1 = icmp eq i64 %11, 0, !dbg !3141
  br i1 %.not.not1, label %if.then8, label %if.done9, !dbg !3116

if.then8:                                         ; preds = %if.done7
    #dbg_value(i64 %a, !3110, !DIExpression(), !3142)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3143)
  %12 = ashr exact i64 %b, 1, !dbg !3144
  %13 = call i64 @f_gold(i64 %a, i64 %12), !dbg !3145
  br label %common.ret, !dbg !3146

if.done9:                                         ; preds = %if.done7
    #dbg_value(i64 %a, !3110, !DIExpression(), !3147)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3148)
  %14 = icmp sgt i64 %a, %b, !dbg !3149
  br i1 %14, label %if.then10, label %if.done11, !dbg !3116

if.then10:                                        ; preds = %if.done9
    #dbg_value(i64 %a, !3110, !DIExpression(), !3150)
    #dbg_value(i64 %b, !3111, !DIExpression(), !3151)
  %15 = sub i64 %a, %b, !dbg !3152
  %16 = ashr exact i64 %15, 1, !dbg !3153
    #dbg_value(i64 %b, !3111, !DIExpression(), !3154)
  %17 = call i64 @f_gold(i64 %16, i64 %b), !dbg !3155
  br label %common.ret, !dbg !3156

if.done11:                                        ; preds = %if.done9
    #dbg_value(i64 %b, !3111, !DIExpression(), !3157)
    #dbg_value(i64 %a, !3110, !DIExpression(), !3158)
  %18 = sub i64 %b, %a, !dbg !3159
  %19 = ashr exact i64 %18, 1, !dbg !3160
    #dbg_value(i64 %a, !3110, !DIExpression(), !3161)
  %20 = call i64 @f_gold(i64 %19, i64 %a), !dbg !3162
  br label %common.ret, !dbg !3163
}
