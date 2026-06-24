define i64 @f_gold(i64 %a, i64 %b, i64 %d) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %a, !3030, !DIExpression(), !3034)
    #dbg_value(i64 %b, !3031, !DIExpression(), !3034)
    #dbg_value(i64 %d, !3032, !DIExpression(), !3034)
    #dbg_value(i64 %a, !3030, !DIExpression(), !3035)
    #dbg_value(i64 %a, !3033, !DIExpression(), !3036)
    #dbg_value(i64 %a, !3030, !DIExpression(), !3037)
    #dbg_value(i64 %b, !3031, !DIExpression(), !3038)
    #dbg_value(i64 %a, !3039, !DIExpression(), !3045)
    #dbg_value(i64 %b, !3044, !DIExpression(), !3045)
    #dbg_value(i64 %a, !3039, !DIExpression(), !3047)
    #dbg_value(i64 %b, !3044, !DIExpression(), !3048)
  %x.y.i = tail call i64 @llvm.smin.i64(i64 %a, i64 %b), !dbg !3049
    #dbg_value(i64 %x.y.i, !3030, !DIExpression(), !3050)
    #dbg_value(i64 %a, !3033, !DIExpression(), !3051)
    #dbg_value(i64 %b, !3031, !DIExpression(), !3052)
    #dbg_value(i64 %a, !3053, !DIExpression(), !3057)
    #dbg_value(i64 %b, !3056, !DIExpression(), !3057)
    #dbg_value(i64 %a, !3053, !DIExpression(), !3059)
    #dbg_value(i64 %b, !3056, !DIExpression(), !3060)
  %x.y.i1 = tail call i64 @llvm.smax.i64(i64 %a, i64 %b), !dbg !3061
    #dbg_value(i64 %x.y.i1, !3031, !DIExpression(), !3062)
    #dbg_value(i64 %d, !3032, !DIExpression(), !3063)
    #dbg_value(i64 %x.y.i1, !3031, !DIExpression(), !3064)
  %.not = icmp slt i64 %d, %x.y.i1, !dbg !3065
  br i1 %.not, label %if.done, label %if.then, !dbg !3066

if.then:                                          ; preds = %entry
    #dbg_value(i64 %d, !3032, !DIExpression(), !3067)
    #dbg_value(i64 %x.y.i1, !3031, !DIExpression(), !3068)
    #dbg_value(i64 %x.y.i1, !3031, !DIExpression(), !3069)
  %0 = icmp eq i64 %x.y.i1, 0, !dbg !3070
  br i1 %0, label %divbyzero.throw, label %divbyzero.next, !dbg !3070

common.ret:                                       ; preds = %if.done2, %if.done, %divbyzero.next
  %common.ret.op = phi i64 [ %7, %divbyzero.next ], [ 0, %if.done ], [ %., %if.done2 ]
  ret i64 %common.ret.op, !dbg !3066

divbyzero.next:                                   ; preds = %if.then
  %1 = add i64 %x.y.i1, -1, !dbg !3071
  %2 = add i64 %1, %d, !dbg !3072
  %3 = icmp eq i64 %x.y.i1, -1, !dbg !3070
  %4 = icmp eq i64 %2, -9223372036854775808, !dbg !3070
  %5 = and i1 %3, %4, !dbg !3070
  %6 = select i1 %5, i64 1, i64 %x.y.i1, !dbg !3070
  %7 = sdiv i64 %2, %6, !dbg !3070
  br label %common.ret, !dbg !3073

if.done:                                          ; preds = %entry
    #dbg_value(i64 %d, !3032, !DIExpression(), !3074)
  %8 = icmp eq i64 %d, 0, !dbg !3075
  br i1 %8, label %common.ret, label %if.done2, !dbg !3066

if.done2:                                         ; preds = %if.done
    #dbg_value(i64 %d, !3032, !DIExpression(), !3076)
    #dbg_value(i64 %x.y.i, !3030, !DIExpression(), !3077)
  %9 = icmp eq i64 %d, %x.y.i, !dbg !3078
  %. = select i1 %9, i64 1, i64 2, !dbg !3066
  br label %common.ret, !dbg !3066

divbyzero.throw:                                  ; preds = %if.then
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3070
  unreachable, !dbg !3070
}
