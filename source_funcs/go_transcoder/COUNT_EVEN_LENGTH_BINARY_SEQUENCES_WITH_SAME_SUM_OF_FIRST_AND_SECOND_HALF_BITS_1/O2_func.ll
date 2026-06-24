define i64 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
    #dbg_value(i64 1, !3031, !DIExpression(), !3035)
    #dbg_value(i64 1, !3032, !DIExpression(), !3036)
    #dbg_value(i64 1, !3033, !DIExpression(), !3037)
  %.not2 = icmp slt i64 %n, 1, !dbg !3038
  br i1 %.not2, label %for.done, label %for.body.lr.ph, !dbg !3039

for.body.lr.ph:                                   ; preds = %entry
  %0 = add nuw i64 %n, 1
  br label %for.body, !dbg !3039

for.body:                                         ; preds = %for.body.lr.ph, %divbyzero.next
  %1 = phi i64 [ 1, %for.body.lr.ph ], [ %14, %divbyzero.next ]
  %2 = phi i64 [ 1, %for.body.lr.ph ], [ %13, %divbyzero.next ]
  %3 = phi i64 [ 1, %for.body.lr.ph ], [ %11, %divbyzero.next ]
    #dbg_value(i64 %3, !3031, !DIExpression(), !3040)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3041)
    #dbg_value(i64 %1, !3033, !DIExpression(), !3042)
  %4 = icmp eq i64 %1, 0, !dbg !3043
  br i1 %4, label %divbyzero.throw, label %divbyzero.next, !dbg !3043

divbyzero.next:                                   ; preds = %for.body
  %5 = sub i64 %0, %1, !dbg !3044
  %6 = mul i64 %5, %3, !dbg !3045
  %7 = icmp eq i64 %1, -1, !dbg !3043
  %8 = icmp eq i64 %6, -9223372036854775808, !dbg !3043
  %9 = and i1 %7, %8, !dbg !3043
  %10 = select i1 %9, i64 1, i64 %1, !dbg !3043
  %11 = sdiv i64 %6, %10, !dbg !3043
    #dbg_value(i64 %11, !3031, !DIExpression(), !3046)
  %12 = mul i64 %11, %11, !dbg !3047
  %13 = add i64 %12, %2, !dbg !3048
    #dbg_value(i64 %13, !3032, !DIExpression(), !3048)
  %14 = add i64 %1, 1, !dbg !3049
    #dbg_value(i64 %14, !3033, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3030, !DIExpression(), !3051)
  %.not = icmp sgt i64 %14, %n, !dbg !3038
  br i1 %.not, label %for.done, label %for.body, !dbg !3039

for.done:                                         ; preds = %divbyzero.next, %entry
  %.lcssa = phi i64 [ 1, %entry ], [ %13, %divbyzero.next ], !dbg !3036
    #dbg_value(i64 %.lcssa, !3032, !DIExpression(), !3052)
  ret i64 %.lcssa, !dbg !3053

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3043
  unreachable, !dbg !3043
}
