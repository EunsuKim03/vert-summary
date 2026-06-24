define noundef i1 @f_gold(i64 %n, i64 %p) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(i64 %n, !3114, !DIExpression(), !3117)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3117)
    #dbg_value(i64 %n, !3114, !DIExpression(), !3118)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3119)
  %0 = icmp eq i64 %p, 0, !dbg !3120
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3120

divbyzero.next:                                   ; preds = %entry
  %1 = icmp eq i64 %p, -1, !dbg !3120
  %2 = icmp eq i64 %n, -9223372036854775808, !dbg !3120
  %3 = and i1 %2, %1, !dbg !3120
  %4 = select i1 %3, i64 1, i64 %p, !dbg !3120
  %5 = srem i64 %n, %4, !dbg !3120
    #dbg_value(i64 %5, !3114, !DIExpression(), !3121)
    #dbg_value(i64 2, !3116, !DIExpression(), !3122)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3123)
  %6 = icmp sgt i64 %p, 2, !dbg !3124
  br i1 %6, label %divbyzero.next2, label %common.ret, !dbg !3125

divbyzero.next2:                                  ; preds = %divbyzero.next2, %divbyzero.next
  %7 = phi i64 [ 2, %divbyzero.next ], [ %14, %divbyzero.next2 ]
    #dbg_value(i64 %7, !3116, !DIExpression(), !3126)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3127)
    #dbg_value(i64 %7, !3116, !DIExpression(), !3128)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3129)
  %8 = mul i64 %7, %7, !dbg !3130
  %9 = icmp eq i64 %8, -9223372036854775808, !dbg !3131
  %10 = and i1 %1, %9, !dbg !3131
  %11 = select i1 %10, i64 1, i64 %p, !dbg !3131
  %12 = srem i64 %8, %11, !dbg !3131
    #dbg_value(i64 %5, !3114, !DIExpression(), !3132)
  %13 = icmp eq i64 %12, %5, !dbg !3133
    #dbg_value(i64 %7, !3116, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3134)
  %14 = add nuw nsw i64 %7, 1
    #dbg_value(i64 %14, !3116, !DIExpression(), !3134)
    #dbg_value(i64 %14, !3116, !DIExpression(), !3126)
    #dbg_value(i64 %p, !3115, !DIExpression(), !3123)
  %exitcond.not = icmp eq i64 %14, %p
  %or.cond = select i1 %13, i1 true, i1 %exitcond.not, !dbg !3125
  br i1 %or.cond, label %common.ret, label %divbyzero.next2, !dbg !3125

common.ret:                                       ; preds = %divbyzero.next2, %divbyzero.next
  %.lcssa = phi i1 [ false, %divbyzero.next ], [ %13, %divbyzero.next2 ], !dbg !3124
  ret i1 %.lcssa, !dbg !3125

divbyzero.throw:                                  ; preds = %entry
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3120
  unreachable, !dbg !3120
}
