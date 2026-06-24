define i64 @f_gold(i64 %n, i64 %k) local_unnamed_addr #5 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3030, !DIExpression(), !3033)
    #dbg_value(i64 %k, !3031, !DIExpression(), !3033)
  br label %for.loop, !dbg !3034

for.loop:                                         ; preds = %for.body, %entry
  %0 = phi i64 [ %n, %entry ], [ %8, %for.body ], !dbg !3035
  %1 = phi i64 [ %k, %entry ], [ %7, %for.body ], !dbg !3036
    #dbg_value(i64 %0, !3030, !DIExpression(), !3037)
  %2 = and i64 %0, 1, !dbg !3038
  %3 = icmp eq i64 %2, 0, !dbg !3038
  br i1 %3, label %for.body, label %for.loop1.preheader, !dbg !3034

for.loop1.preheader:                              ; preds = %for.loop
    #dbg_value(i64 3, !3032, !DIExpression(), !3039)
  %4 = sitofp i64 %0 to double, !dbg !3040
  %5 = tail call double @llvm.sqrt.f64(double %4), !dbg !3041
  %6 = fcmp ult double %5, 3.000000e+00, !dbg !3049
  br i1 %6, label %for.done6, label %for.loop2.preheader, !dbg !3034

for.body:                                         ; preds = %for.loop
  %7 = add i64 %1, -1, !dbg !3050
    #dbg_value(i64 %7, !3031, !DIExpression(), !3050)
    #dbg_value(i64 %0, !3030, !DIExpression(), !3051)
  %8 = ashr exact i64 %0, 1, !dbg !3052
    #dbg_value(i64 %8, !3030, !DIExpression(), !3053)
  %9 = icmp eq i64 %7, 0, !dbg !3054
  br i1 %9, label %common.ret, label %for.loop, !dbg !3034

common.ret:                                       ; preds = %for.body, %for.body3, %for.done6
  %common.ret.op = phi i64 [ %spec.select, %for.done6 ], [ %10, %for.body3 ], [ 2, %for.body ]
  ret i64 %common.ret.op, !dbg !3034

for.loop2.preheader:                              ; preds = %for.loop1.preheader, %for.done5
  %10 = phi i64 [ %25, %for.done5 ], [ 3, %for.loop1.preheader ]
  %11 = phi i64 [ %15, %for.done5 ], [ %1, %for.loop1.preheader ]
  %12 = phi i64 [ %16, %for.done5 ], [ %0, %for.loop1.preheader ]
    #dbg_value(i64 %10, !3032, !DIExpression(), !3039)
    #dbg_value(i64 %12, !3030, !DIExpression(), !3055)
  %13 = icmp eq i64 %10, 0
  br i1 %13, label %divbyzero.throw, label %divbyzero.next.lr.ph, !dbg !3056

divbyzero.next.lr.ph:                             ; preds = %for.loop2.preheader
  %14 = icmp eq i64 %10, -1
  br label %divbyzero.next, !dbg !3056

divbyzero.next:                                   ; preds = %divbyzero.next10, %divbyzero.next.lr.ph
  %15 = phi i64 [ %11, %divbyzero.next.lr.ph ], [ %23, %divbyzero.next10 ]
  %16 = phi i64 [ %12, %divbyzero.next.lr.ph ], [ %24, %divbyzero.next10 ]
    #dbg_value(i64 %16, !3030, !DIExpression(), !3057)
  %17 = icmp eq i64 %16, -9223372036854775808, !dbg !3056
  %18 = and i1 %14, %17, !dbg !3056
  %19 = select i1 %18, i64 1, i64 %10, !dbg !3056
  %20 = srem i64 %16, %19, !dbg !3056
  %21 = icmp eq i64 %20, 0, !dbg !3058
  br i1 %21, label %for.body3, label %for.done5, !dbg !3034

for.body3:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %15, !3031, !DIExpression(), !3059)
  %22 = icmp eq i64 %15, 1, !dbg !3060
  br i1 %22, label %common.ret, label %divbyzero.next10, !dbg !3034

divbyzero.next10:                                 ; preds = %for.body3
    #dbg_value(i64 %15, !3031, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3061)
    #dbg_value(i64 %16, !3030, !DIExpression(), !3062)
    #dbg_value(i64 %10, !3032, !DIExpression(), !3063)
  %23 = add i64 %15, -1, !dbg !3061
    #dbg_value(i64 %23, !3031, !DIExpression(), !3061)
  %24 = sdiv i64 %16, %19, !dbg !3064
    #dbg_value(i64 %24, !3030, !DIExpression(), !3057)
  br label %divbyzero.next, !dbg !3056

for.done5:                                        ; preds = %divbyzero.next
    #dbg_value(i64 %10, !3032, !DIExpression(), !3065)
  %25 = add i64 %10, 2, !dbg !3066
    #dbg_value(i64 %25, !3032, !DIExpression(), !3039)
  %26 = sitofp i64 %25 to double, !dbg !3067
    #dbg_value(i64 %16, !3030, !DIExpression(), !3055)
  %27 = sitofp i64 %16 to double, !dbg !3040
    #dbg_value(double %27, !3047, !DIExpression(), !3041)
  %28 = tail call double @llvm.sqrt.f64(double %27), !dbg !3041
  %29 = fcmp ult double %28, %26, !dbg !3049
  br i1 %29, label %for.done6, label %for.loop2.preheader, !dbg !3034

for.done6:                                        ; preds = %for.done5, %for.loop1.preheader
  %.lcssa20 = phi i64 [ %0, %for.loop1.preheader ], [ %16, %for.done5 ], !dbg !3035
  %.lcssa17 = phi i64 [ %1, %for.loop1.preheader ], [ %15, %for.done5 ], !dbg !3036
    #dbg_value(i64 %.lcssa20, !3030, !DIExpression(), !3068)
  %30 = icmp sgt i64 %.lcssa20, 2, !dbg !3069
    #dbg_value(i64 %.lcssa17, !3031, !DIExpression(), !3070)
  %31 = icmp eq i64 %.lcssa17, 1
  %or.cond = select i1 %30, i1 %31, i1 false, !dbg !3034
  %spec.select = select i1 %or.cond, i64 %.lcssa20, i64 -1, !dbg !3034
  br label %common.ret, !dbg !3034

divbyzero.throw:                                  ; preds = %for.loop2.preheader
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3056
  unreachable, !dbg !3056
}
