define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
  %0 = icmp slt i64 %n, 3, !dbg !3034
  br i1 %0, label %common.ret, label %cond.true.lr.ph, !dbg !3035

cond.true.lr.ph:                                  ; preds = %entry, %if.then3
  %n.tr.ph17 = phi i64 [ %13, %if.then3 ], [ %n, %entry ]
  %accumulator.tr.ph16 = phi i64 [ %15, %if.then3 ], [ 0, %entry ]
    #dbg_value(i64 %n.tr.ph17, !3030, !DIExpression(), !3036)
  br label %cond.true, !dbg !3035

common.ret:                                       ; preds = %if.then3, %if.else, %entry, %if.then1
  %accumulator.tr.ph11 = phi i64 [ %accumulator.tr.ph16, %if.then1 ], [ 0, %entry ], [ %accumulator.tr.ph16, %if.else ], [ %15, %if.then3 ]
  %common.ret.op = phi i64 [ %2, %if.then1 ], [ %n, %entry ], [ %18, %if.else ], [ %13, %if.then3 ]
  %accumulator.ret.tr = add i64 %common.ret.op, %accumulator.tr.ph11
  ret i64 %accumulator.ret.tr, !dbg !3035

cond.true:                                        ; preds = %cond.true.lr.ph, %if.else
  %n.tr12 = phi i64 [ %n.tr.ph17, %cond.true.lr.ph ], [ %18, %if.else ]
    #dbg_value(i64 %n.tr12, !3030, !DIExpression(), !3037)
  %1 = icmp samesign ult i64 %n.tr12, 10, !dbg !3038
  br i1 %1, label %if.then1, label %divbyzero.next, !dbg !3035

if.then1:                                         ; preds = %cond.true
    #dbg_value(i64 %n.tr12, !3030, !DIExpression(), !3039)
  %2 = add nsw i64 %n.tr12, -1, !dbg !3040
  br label %common.ret, !dbg !3041

divbyzero.next:                                   ; preds = %cond.true, %for.body
  %3 = phi i64 [ %6, %for.body ], [ 1, %cond.true ]
    #dbg_value(i64 %3, !3031, !DIExpression(), !3042)
  %4 = sdiv i64 %n.tr12, %3, !dbg !3043
  %5 = icmp sgt i64 %4, 9, !dbg !3044
  br i1 %5, label %for.body, label %divbyzero.next5, !dbg !3035

for.body:                                         ; preds = %divbyzero.next
    #dbg_value(i64 %3, !3031, !DIExpression(), !3045)
  %6 = mul i64 %3, 10, !dbg !3046
    #dbg_value(i64 %n.tr12, !3030, !DIExpression(), !3047)
    #dbg_value(i64 %6, !3031, !DIExpression(), !3042)
  %7 = icmp eq i64 %6, 0, !dbg !3043
  br i1 %7, label %divbyzero.throw, label %divbyzero.next, !dbg !3043

divbyzero.next5:                                  ; preds = %divbyzero.next
    #dbg_value(i64 %n.tr12, !3030, !DIExpression(), !3048)
    #dbg_value(i64 %3, !3031, !DIExpression(), !3049)
    #dbg_value(i64 %4, !3032, !DIExpression(), !3050)
  %.not = icmp eq i64 %4, 3, !dbg !3051
  br i1 %.not, label %if.else, label %if.then3, !dbg !3035

if.then3:                                         ; preds = %divbyzero.next5
    #dbg_value(i64 %4, !3032, !DIExpression(), !3052)
  %8 = tail call i64 @f_gold(i64 %4), !dbg !3053
    #dbg_value(i64 %3, !3031, !DIExpression(), !3054)
  %9 = add i64 %3, -1, !dbg !3055
  %10 = tail call i64 @f_gold(i64 %9), !dbg !3056
  %11 = tail call i64 @f_gold(i64 %4), !dbg !3057
    #dbg_value(i64 %n.tr12, !3030, !DIExpression(), !3058)
  %12 = mul i64 %10, %8, !dbg !3059
  %13 = srem i64 %n.tr12, %3, !dbg !3060
  %14 = add i64 %11, %accumulator.tr.ph16, !dbg !3061
  %15 = add i64 %14, %12, !dbg !3062
    #dbg_value(i64 %13, !3030, !DIExpression(), !3033)
  %16 = icmp slt i64 %13, 3, !dbg !3034
  br i1 %16, label %common.ret, label %cond.true.lr.ph, !dbg !3035

if.else:                                          ; preds = %divbyzero.next5
    #dbg_value(i64 %4, !3032, !DIExpression(), !3063)
    #dbg_value(i64 %3, !3031, !DIExpression(), !3064)
  %17 = mul i64 %3, 3, !dbg !3065
  %18 = add i64 %17, -1, !dbg !3066
    #dbg_value(i64 %18, !3030, !DIExpression(), !3033)
  %19 = icmp slt i64 %18, 3, !dbg !3034
  br i1 %19, label %common.ret, label %cond.true, !dbg !3035

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3043
  unreachable, !dbg !3043
}
