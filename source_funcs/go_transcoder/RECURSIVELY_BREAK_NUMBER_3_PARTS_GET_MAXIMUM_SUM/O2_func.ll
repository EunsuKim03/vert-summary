define i64 @f_gold(i64 %n) local_unnamed_addr #11 !dbg !3021 {
entry:
    #dbg_value(i64 %n, !3026, !DIExpression(), !3027)
    #dbg_value(i64 %n, !3026, !DIExpression(), !3028)
  %switch = icmp ult i64 %n, 2, !dbg !3029
  br i1 %switch, label %common.ret1, label %if.done, !dbg !3029

common.ret1:                                      ; preds = %entry, %if.done
  %common.ret1.op = phi i64 [ %x.y.i, %if.done ], [ %n, %entry ]
  ret i64 %common.ret1.op, !dbg !3029

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3026, !DIExpression(), !3030)
  %0 = sdiv i64 %n, 2, !dbg !3031
  %1 = tail call i64 @f_gold(i64 %0), !dbg !3032
    #dbg_value(i64 %n, !3026, !DIExpression(), !3033)
  %2 = sdiv i64 %n, 3, !dbg !3034
  %3 = tail call i64 @f_gold(i64 %2), !dbg !3035
  %4 = add i64 %3, %1, !dbg !3036
    #dbg_value(i64 %n, !3026, !DIExpression(), !3037)
  %5 = sdiv i64 %n, 4, !dbg !3038
  %6 = tail call i64 @f_gold(i64 %5), !dbg !3039
  %7 = add i64 %4, %6, !dbg !3040
    #dbg_value(i64 %n, !3026, !DIExpression(), !3041)
    #dbg_value(i64 %7, !3042, !DIExpression(), !3048)
    #dbg_value(i64 %n, !3047, !DIExpression(), !3048)
    #dbg_value(i64 %7, !3042, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3047, !DIExpression(), !3051)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %7, i64 range(i64 2, 0) %n), !dbg !3052
  br label %common.ret1, !dbg !3029
}
