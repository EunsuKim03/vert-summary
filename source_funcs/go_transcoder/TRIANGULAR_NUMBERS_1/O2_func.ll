define noundef i1 @f_gold(i64 %num) local_unnamed_addr #10 !dbg !3021 {
entry:
    #dbg_value(i64 %num, !3026, !DIExpression(), !3033)
    #dbg_value(i64 %num, !3026, !DIExpression(), !3034)
  %0 = icmp slt i64 %num, 0, !dbg !3035
  br i1 %0, label %common.ret, label %if.done, !dbg !3036

common.ret:                                       ; preds = %cond.true5, %cond.true, %if.done, %entry, %if.done7
  %common.ret.op = phi i1 [ false, %if.done7 ], [ false, %entry ], [ false, %if.done ], [ true, %cond.true ], [ true, %cond.true5 ]
  ret i1 %common.ret.op, !dbg !3036

if.done:                                          ; preds = %entry
    #dbg_value(i64 %num, !3026, !DIExpression(), !3037)
    #dbg_value(i64 %num, !3027, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_mul, DW_OP_stack_value), !3038)
    #dbg_value(i64 1, !3028, !DIExpression(), !3039)
    #dbg_value(i64 1, !3029, !DIExpression(), !3040)
    #dbg_value(i64 1, !3028, !DIExpression(), !3041)
    #dbg_value(i64 1, !3028, !DIExpression(), !3042)
    #dbg_value(i64 1, !3029, !DIExpression(), !3043)
    #dbg_value(i64 %num, !3027, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_mul, DW_OP_stack_value), !3044)
  %.neg = shl i64 %num, 3, !dbg !3045
    #dbg_value(i64 %.neg, !3030, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3046)
    #dbg_value(i64 %.neg, !3030, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3047)
  %1 = icmp slt i64 %.neg, 0, !dbg !3048
  br i1 %1, label %common.ret, label %if.done2, !dbg !3036

if.done2:                                         ; preds = %if.done
  %2 = or disjoint i64 %.neg, 1, !dbg !3049
    #dbg_value(i64 1, !3028, !DIExpression(), !3050)
    #dbg_value(i64 %.neg, !3030, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3051)
  %3 = uitofp nneg i64 %2 to double, !dbg !3052
    #dbg_value(double %3, !3053, !DIExpression(), !3059)
  %4 = tail call double @llvm.sqrt.f64(double %3), !dbg !3059
  %5 = fadd double %4, -1.000000e+00, !dbg !3061
    #dbg_value(i64 1, !3029, !DIExpression(), !3062)
  %6 = fmul double %5, 5.000000e-01, !dbg !3063
  %7 = fptrunc double %6 to float, !dbg !3064
    #dbg_value(float %7, !3031, !DIExpression(), !3065)
    #dbg_value(i64 1, !3028, !DIExpression(), !3066)
    #dbg_value(i64 %.neg, !3030, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3067)
  %8 = fsub double -1.000000e+00, %4, !dbg !3068
    #dbg_value(i64 1, !3029, !DIExpression(), !3069)
  %9 = fmul double %8, 5.000000e-01, !dbg !3070
  %10 = fptrunc double %9 to float, !dbg !3071
    #dbg_value(float %10, !3032, !DIExpression(), !3072)
    #dbg_value(float %7, !3031, !DIExpression(), !3073)
  %11 = fcmp ogt float %7, 0.000000e+00, !dbg !3074
  br i1 %11, label %cond.true, label %if.done4, !dbg !3036

cond.true:                                        ; preds = %if.done2
    #dbg_value(float %7, !3031, !DIExpression(), !3075)
  %12 = fpext float %7 to double, !dbg !3076
    #dbg_value(double %12, !3077, !DIExpression(), !3081)
  %13 = tail call double @llvm.floor.f64(double %12), !dbg !3081
    #dbg_value(float %7, !3031, !DIExpression(), !3083)
  %14 = fcmp oeq double %13, %12, !dbg !3084
  br i1 %14, label %common.ret, label %if.done4, !dbg !3036

if.done4:                                         ; preds = %cond.true, %if.done2
    #dbg_value(float %10, !3032, !DIExpression(), !3085)
  %15 = fcmp ogt float %10, 0.000000e+00, !dbg !3086
  br i1 %15, label %cond.true5, label %if.done7, !dbg !3036

cond.true5:                                       ; preds = %if.done4
    #dbg_value(float %10, !3032, !DIExpression(), !3087)
  %16 = fpext float %10 to double, !dbg !3088
    #dbg_value(double %16, !3077, !DIExpression(), !3089)
  %17 = tail call double @llvm.floor.f64(double %16), !dbg !3089
    #dbg_value(float %10, !3032, !DIExpression(), !3091)
  %18 = fcmp oeq double %17, %16, !dbg !3092
  br i1 %18, label %common.ret, label %if.done7, !dbg !3036

if.done7:                                         ; preds = %cond.true5, %if.done4
  br label %common.ret, !dbg !3093
}
