define range(i64 -9223372036854775808, 361) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
    #dbg_value(i64 360, !3038, !DIExpression(), !3043)
    #dbg_value(i64 0, !3039, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.body, label %for.done3, !dbg !3046

for.body:                                         ; preds = %entry, %for.done
  %1 = phi i64 [ %29, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %x.y.i8, %for.done ], [ 360, %entry ]
  %3 = phi i64 [ %.lcssa10, %for.done ], [ 0, %entry ]
  %4 = phi i64 [ %.lcssa12, %for.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %1, !3039, !DIExpression(), !3048)
  %exitcond22.not = icmp eq i64 %1, %arr.len, !dbg !3049
  br i1 %exitcond22.not, label %lookup.throw, label %lookup.next, !dbg !3049

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3049
  %6 = load i64, ptr %5, align 8, !dbg !3049
  %7 = add i64 %6, %3, !dbg !3050
    #dbg_value(i64 %7, !3037, !DIExpression(), !3050)
  %8 = icmp sgt i64 %7, 179, !dbg !3051
  br i1 %8, label %for.body2.preheader, label %for.done, !dbg !3046

for.body2.preheader:                              ; preds = %lookup.next
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %arr.len), !dbg !3052
  br label %for.body2, !dbg !3052

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %9 = phi i64 [ %x.y.i, %lookup.next7 ], [ %2, %for.body2.preheader ]
  %10 = phi i64 [ %20, %lookup.next7 ], [ %7, %for.body2.preheader ]
  %11 = phi i64 [ %21, %lookup.next7 ], [ %4, %for.body2.preheader ]
    #dbg_value(i64 %10, !3037, !DIExpression(), !3053)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3054)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %11, !3036, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %11, %umax, !dbg !3052
  br i1 %exitcond.not, label %lookup.throw6, label %lookup.next7, !dbg !3052

lookup.next7:                                     ; preds = %for.body2
  %12 = sub nsw i64 180, %10, !dbg !3057
  %13 = sitofp i64 %12 to double, !dbg !3058
    #dbg_value(double %13, !3059, !DIExpression(), !3065)
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !3067
  %15 = fmul double %14, 2.000000e+00, !dbg !3068
  %abovemin = fcmp oge double %15, 0xC3E0000000000000, !dbg !3069
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3069
  %normal = fptosi double %15 to i64, !dbg !3069
    #dbg_value(i64 %9, !3070, !DIExpression(), !3076)
    #dbg_value(i64 poison, !3075, !DIExpression(), !3078)
  %16 = tail call range(i64 -9223372036854775808, 361) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 361) %9, i64 %normal), !dbg !3079
  %17 = select i1 %belowmax, i64 %16, i64 %9, !dbg !3069
  %x.y.i = select i1 %abovemin, i64 %17, i64 -9223372036854775808, !dbg !3069
    #dbg_value(i64 %x.y.i, !3038, !DIExpression(), !3054)
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %11, !dbg !3052
  %19 = load i64, ptr %18, align 8, !dbg !3052
  %20 = sub i64 %10, %19, !dbg !3080
    #dbg_value(i64 %20, !3037, !DIExpression(), !3080)
  %21 = add i64 %11, 1, !dbg !3081
    #dbg_value(i64 %21, !3036, !DIExpression(), !3081)
  %22 = icmp sgt i64 %20, 179, !dbg !3051
  br i1 %22, label %for.body2, label %for.done, !dbg !3046

for.done:                                         ; preds = %lookup.next7, %lookup.next
  %.lcssa12 = phi i64 [ %4, %lookup.next ], [ %21, %lookup.next7 ], !dbg !3041
  %.lcssa10 = phi i64 [ %7, %lookup.next ], [ %20, %lookup.next7 ], !dbg !3042
  %.lcssa = phi i64 [ %2, %lookup.next ], [ %x.y.i, %lookup.next7 ], !dbg !3043
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3082)
    #dbg_value(i64 %.lcssa10, !3037, !DIExpression(), !3083)
  %23 = sub i64 180, %.lcssa10, !dbg !3084
  %24 = sitofp i64 %23 to double, !dbg !3085
    #dbg_value(double %24, !3059, !DIExpression(), !3086)
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !3088
  %26 = fmul double %25, 2.000000e+00, !dbg !3089
  %abovemin8 = fcmp oge double %26, 0xC3E0000000000000, !dbg !3090
  %belowmax9 = fcmp ole double %26, 0x43DFFFFFFFFFFFFE, !dbg !3090
  %normal14 = fptosi double %26 to i64, !dbg !3090
    #dbg_value(i64 %.lcssa, !3070, !DIExpression(), !3091)
    #dbg_value(i64 poison, !3075, !DIExpression(), !3093)
  %27 = tail call range(i64 -9223372036854775808, 361) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 361) %.lcssa, i64 %normal14), !dbg !3094
  %28 = select i1 %belowmax9, i64 %27, i64 %.lcssa, !dbg !3090
  %x.y.i8 = select i1 %abovemin8, i64 %28, i64 -9223372036854775808, !dbg !3090
    #dbg_value(i64 %x.y.i8, !3038, !DIExpression(), !3095)
  %29 = add nuw nsw i64 %1, 1, !dbg !3096
    #dbg_value(i64 %29, !3039, !DIExpression(), !3097)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3098)
  %exitcond23.not = icmp eq i64 %29, %n, !dbg !3045
  br i1 %exitcond23.not, label %for.done3, label %for.body, !dbg !3046

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa14 = phi i64 [ 360, %entry ], [ %x.y.i8, %for.done ], !dbg !3043
    #dbg_value(i64 %.lcssa14, !3038, !DIExpression(), !3099)
  ret i64 %.lcssa14, !dbg !3100

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw6:                                    ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052
}
