define noundef i1 @f_gold(i64 %num) local_unnamed_addr #10 !dbg !3105 {
entry:
    #dbg_value(i64 %num, !3110, !DIExpression(), !3117)
    #dbg_value(i64 %num, !3110, !DIExpression(), !3118)
  %0 = icmp slt i64 %num, 0, !dbg !3119
  br i1 %0, label %common.ret, label %if.done, !dbg !3120

common.ret:                                       ; preds = %cond.true5, %cond.true, %if.done, %entry, %if.done7
  %common.ret.op = phi i1 [ false, %if.done7 ], [ false, %entry ], [ false, %if.done ], [ true, %cond.true ], [ true, %cond.true5 ]
  ret i1 %common.ret.op, !dbg !3120

if.done:                                          ; preds = %entry
    #dbg_value(i64 %num, !3110, !DIExpression(), !3121)
    #dbg_value(i64 %num, !3111, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_mul, DW_OP_stack_value), !3122)
    #dbg_value(i64 1, !3112, !DIExpression(), !3123)
    #dbg_value(i64 1, !3113, !DIExpression(), !3124)
    #dbg_value(i64 1, !3112, !DIExpression(), !3125)
    #dbg_value(i64 1, !3112, !DIExpression(), !3126)
    #dbg_value(i64 1, !3113, !DIExpression(), !3127)
    #dbg_value(i64 %num, !3111, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_mul, DW_OP_stack_value), !3128)
  %.neg = shl i64 %num, 3, !dbg !3129
    #dbg_value(i64 %.neg, !3114, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3130)
    #dbg_value(i64 %.neg, !3114, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3131)
  %1 = icmp slt i64 %.neg, 0, !dbg !3132
  br i1 %1, label %common.ret, label %if.done2, !dbg !3120

if.done2:                                         ; preds = %if.done
  %2 = or disjoint i64 %.neg, 1, !dbg !3133
    #dbg_value(i64 1, !3112, !DIExpression(), !3134)
    #dbg_value(i64 %.neg, !3114, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3135)
  %3 = uitofp nneg i64 %2 to double, !dbg !3136
    #dbg_value(double %3, !3137, !DIExpression(), !3143)
  %4 = call double @llvm.sqrt.f64(double %3), !dbg !3143
  %5 = fadd double %4, -1.000000e+00, !dbg !3145
    #dbg_value(i64 1, !3113, !DIExpression(), !3146)
  %6 = fmul double %5, 5.000000e-01, !dbg !3147
  %7 = fptrunc double %6 to float, !dbg !3148
    #dbg_value(float %7, !3115, !DIExpression(), !3149)
    #dbg_value(i64 1, !3112, !DIExpression(), !3150)
    #dbg_value(i64 %.neg, !3114, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !3151)
  %8 = fsub double -1.000000e+00, %4, !dbg !3152
    #dbg_value(i64 1, !3113, !DIExpression(), !3153)
  %9 = fmul double %8, 5.000000e-01, !dbg !3154
  %10 = fptrunc double %9 to float, !dbg !3155
    #dbg_value(float %10, !3116, !DIExpression(), !3156)
    #dbg_value(float %7, !3115, !DIExpression(), !3157)
  %11 = fcmp ogt float %7, 0.000000e+00, !dbg !3158
  br i1 %11, label %cond.true, label %if.done4, !dbg !3120

cond.true:                                        ; preds = %if.done2
    #dbg_value(float %7, !3115, !DIExpression(), !3159)
  %12 = fpext float %7 to double, !dbg !3160
    #dbg_value(double %12, !3161, !DIExpression(), !3165)
  %13 = call double @llvm.floor.f64(double %12), !dbg !3165
    #dbg_value(float %7, !3115, !DIExpression(), !3167)
  %14 = fcmp oeq double %13, %12, !dbg !3168
  br i1 %14, label %common.ret, label %if.done4, !dbg !3120

if.done4:                                         ; preds = %cond.true, %if.done2
    #dbg_value(float %10, !3116, !DIExpression(), !3169)
  %15 = fcmp ogt float %10, 0.000000e+00, !dbg !3170
  br i1 %15, label %cond.true5, label %if.done7, !dbg !3120

cond.true5:                                       ; preds = %if.done4
    #dbg_value(float %10, !3116, !DIExpression(), !3171)
  %16 = fpext float %10 to double, !dbg !3172
    #dbg_value(double %16, !3161, !DIExpression(), !3173)
  %17 = call double @llvm.floor.f64(double %16), !dbg !3173
    #dbg_value(float %10, !3116, !DIExpression(), !3175)
  %18 = fcmp oeq double %17, %16, !dbg !3176
  br i1 %18, label %common.ret, label %if.done7, !dbg !3120

if.done7:                                         ; preds = %cond.true5, %if.done4
  br label %common.ret, !dbg !3177
}
