define noundef i1 @f_gold(i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3032)
  %0 = icmp slt i64 %n, 2, !dbg !3033
  br i1 %0, label %common.ret, label %if.done, !dbg !3034

common.ret:                                       ; preds = %divbyzero.next9, %divbyzero.next, %for.loop, %for.loop.preheader, %if.done2, %if.done, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %if.done ], [ false, %if.done2 ], [ true, %for.loop.preheader ], [ false, %divbyzero.next9 ], [ false, %divbyzero.next ], [ true, %for.loop ]
  ret i1 %common.ret.op, !dbg !3034

if.done:                                          ; preds = %entry
    #dbg_value(i64 %n, !3030, !DIExpression(), !3035)
  %1 = icmp samesign ult i64 %n, 4, !dbg !3036
  br i1 %1, label %common.ret, label %if.done2, !dbg !3034

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %n, !3030, !DIExpression(), !3037)
  %2 = and i64 %n, 1, !dbg !3038
  %3 = icmp eq i64 %2, 0, !dbg !3039
  %4 = urem i64 %n, 3
  %5 = icmp eq i64 %4, 0
  %or.cond = or i1 %3, %5, !dbg !3034
  br i1 %or.cond, label %common.ret, label %for.loop.preheader, !dbg !3034

for.loop.preheader:                               ; preds = %if.done2
    #dbg_value(i64 5, !3031, !DIExpression(), !3040)
  %.not5 = icmp samesign ult i64 %n, 25, !dbg !3041
  br i1 %.not5, label %common.ret, label %for.body, !dbg !3034

for.loop:                                         ; preds = %divbyzero.next9
  %6 = add i64 %8, 6, !dbg !3042
    #dbg_value(i64 %6, !3031, !DIExpression(), !3040)
  %7 = mul i64 %6, %6, !dbg !3043
    #dbg_value(i64 %n, !3030, !DIExpression(), !3044)
  %.not = icmp sgt i64 %7, %n, !dbg !3041
  br i1 %.not, label %common.ret, label %for.body, !dbg !3034

for.body:                                         ; preds = %for.loop.preheader, %for.loop
  %8 = phi i64 [ %6, %for.loop ], [ 5, %for.loop.preheader ]
    #dbg_value(i64 %n, !3030, !DIExpression(), !3045)
    #dbg_value(i64 %8, !3031, !DIExpression(), !3046)
  %9 = icmp eq i64 %8, 0, !dbg !3047
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3047

divbyzero.next:                                   ; preds = %for.body
  %10 = srem i64 %n, %8, !dbg !3047
  %11 = icmp eq i64 %10, 0, !dbg !3048
  br i1 %11, label %common.ret, label %cond.false6, !dbg !3034

cond.false6:                                      ; preds = %divbyzero.next
    #dbg_value(i64 %n, !3030, !DIExpression(), !3049)
    #dbg_value(i64 %8, !3031, !DIExpression(), !3050)
  %12 = add i64 %8, 2, !dbg !3051
  %13 = icmp eq i64 %12, 0, !dbg !3052
  br i1 %13, label %divbyzero.throw8, label %divbyzero.next9, !dbg !3052

divbyzero.next9:                                  ; preds = %cond.false6
  %14 = srem i64 %n, %12, !dbg !3052
  %15 = icmp eq i64 %14, 0, !dbg !3053
    #dbg_value(i64 %8, !3031, !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value), !3054)
  br i1 %15, label %common.ret, label %for.loop, !dbg !3034

divbyzero.throw:                                  ; preds = %for.body
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3047
  unreachable, !dbg !3047

divbyzero.throw8:                                 ; preds = %cond.false6
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3052
  unreachable, !dbg !3052
}
