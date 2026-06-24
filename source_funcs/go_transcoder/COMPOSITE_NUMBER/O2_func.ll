define noundef i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3032)
  %0 = icmp slt i64 %n, 4
  br i1 %0, label %common.ret, label %if.done2, !dbg !3033

common.ret:                                       ; preds = %divbyzero.next9, %divbyzero.next, %for.loop, %for.loop.preheader, %if.done2, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %if.done2 ], [ false, %for.loop.preheader ], [ true, %divbyzero.next9 ], [ true, %divbyzero.next ], [ false, %for.loop ]
  ret i1 %common.ret.op, !dbg !3033

if.done2:                                         ; preds = %entry
    #dbg_value(i64 %n, !3030, !DIExpression(), !3034)
  %1 = and i64 %n, 1, !dbg !3035
  %2 = icmp eq i64 %1, 0, !dbg !3036
  %3 = urem i64 %n, 3
  %4 = icmp eq i64 %3, 0
  %or.cond = or i1 %2, %4, !dbg !3033
  br i1 %or.cond, label %common.ret, label %for.loop.preheader, !dbg !3033

for.loop.preheader:                               ; preds = %if.done2
    #dbg_value(i64 5, !3031, !DIExpression(), !3037)
  %.not6 = icmp samesign ult i64 %n, 25, !dbg !3038
  br i1 %.not6, label %common.ret, label %for.body, !dbg !3033

for.loop:                                         ; preds = %divbyzero.next9
  %5 = add i64 %7, 6, !dbg !3039
    #dbg_value(i64 %5, !3031, !DIExpression(), !3037)
  %6 = mul i64 %5, %5, !dbg !3040
    #dbg_value(i64 %n, !3030, !DIExpression(), !3041)
  %.not = icmp sgt i64 %6, %n, !dbg !3038
  br i1 %.not, label %common.ret, label %for.body, !dbg !3033

for.body:                                         ; preds = %for.loop.preheader, %for.loop
  %7 = phi i64 [ %5, %for.loop ], [ 5, %for.loop.preheader ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3042)
    #dbg_value(i64 %7, !3031, !DIExpression(), !3043)
  %8 = icmp eq i64 %7, 0, !dbg !3044
  br i1 %8, label %divbyzero.throw, label %divbyzero.next, !dbg !3044

divbyzero.next:                                   ; preds = %for.body
  %9 = srem i64 %n, %7, !dbg !3044
  %10 = icmp eq i64 %9, 0, !dbg !3045
  br i1 %10, label %common.ret, label %cond.false6, !dbg !3033

cond.false6:                                      ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3030, !DIExpression(), !3046)
    #dbg_value(i64 %7, !3031, !DIExpression(), !3047)
  %11 = add i64 %7, 2, !dbg !3048
  %12 = icmp eq i64 %11, 0, !dbg !3049
  br i1 %12, label %divbyzero.throw8, label %divbyzero.next9, !dbg !3049

divbyzero.next9:                                  ; preds = %cond.false6
  %13 = srem i64 %n, %11, !dbg !3049
  %14 = icmp eq i64 %13, 0, !dbg !3050
    #dbg_value(i64 %7, !3031, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !3051)
  br i1 %14, label %common.ret, label %for.loop, !dbg !3033

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3044
  unreachable, !dbg !3044

divbyzero.throw8:                                 ; preds = %cond.false6
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3049
  unreachable, !dbg !3049
}
