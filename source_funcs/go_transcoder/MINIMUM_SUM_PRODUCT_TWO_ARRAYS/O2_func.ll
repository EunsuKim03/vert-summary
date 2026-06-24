define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, ptr nocapture readonly %b.data, i64 %b.len, i64 %b.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3044)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3044)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3044)
    #dbg_value(ptr %b.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3044)
    #dbg_value(i64 %b.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3044)
    #dbg_value(i64 %b.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3044)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3044)
    #dbg_value(i64 %k, !3037, !DIExpression(), !3044)
    #dbg_value(i64 0, !3038, !DIExpression(), !3045)
    #dbg_value(i64 0, !3039, !DIExpression(), !3046)
    #dbg_value(i64 0, !3040, !DIExpression(), !3047)
    #dbg_value(i64 0, !3041, !DIExpression(), !3048)
  %0 = icmp sgt i64 %n, 0, !dbg !3049
  br i1 %0, label %for.body.lr.ph, label %for.done, !dbg !3050

for.body.lr.ph:                                   ; preds = %entry
  %1 = shl i64 %k, 1
  %2 = add nsw i64 %n, -1, !dbg !3050
  %umin = call i64 @llvm.umin.i64(i64 %b.len, i64 %2), !dbg !3050
  %3 = freeze i64 %umin, !dbg !3050
  %.not.not = icmp ugt i64 %a.len, %3, !dbg !3050
  br i1 %.not.not, label %for.body.lr.ph.split, label %lookup.throw, !dbg !3051

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %.not = icmp eq i64 %b.len, %3, !dbg !3050
  br i1 %.not, label %lookup.throw13, label %for.body, !dbg !3052

for.body:                                         ; preds = %for.body.lr.ph.split, %if.done
  %4 = phi i64 [ %22, %if.done ], [ 0, %for.body.lr.ph.split ]
  %5 = phi i64 [ %17, %if.done ], [ 0, %for.body.lr.ph.split ]
  %6 = phi i64 [ %13, %if.done ], [ 0, %for.body.lr.ph.split ]
  %7 = phi i64 [ %spec.select, %if.done ], [ 0, %for.body.lr.ph.split ]
    #dbg_value(i64 %4, !3041, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3055)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3056)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3057)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %4, !dbg !3051
  %9 = load i64, ptr %8, align 8, !dbg !3051
  %10 = getelementptr inbounds nuw i64, ptr %b.data, i64 %4, !dbg !3052
  %11 = load i64, ptr %10, align 8, !dbg !3052
  %12 = mul i64 %11, %9, !dbg !3058
    #dbg_value(i64 %6, !3039, !DIExpression(), !3059)
    #dbg_value(i64 %12, !3042, !DIExpression(), !3060)
  %13 = add i64 %12, %6, !dbg !3061
    #dbg_value(i64 %13, !3039, !DIExpression(), !3062)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3063)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3064)
  %14 = and i64 %12, %11, !dbg !3050
  %or.cond.not = icmp sgt i64 %14, -1, !dbg !3050
  br i1 %or.cond.not, label %if.else, label %lookup.next26, !dbg !3050

lookup.next26:                                    ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3065)
    #dbg_value(i64 %k, !3037, !DIExpression(), !3066)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3067)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3068)
  %15 = add i64 %9, %1, !dbg !3069
  %16 = mul i64 %15, %11, !dbg !3070
    #dbg_value(i64 %16, !3040, !DIExpression(), !3071)
  br label %if.done, !dbg !3050

if.done:                                          ; preds = %lookup.next30, %if.else5, %lookup.next62, %lookup.next54, %lookup.next50, %lookup.next38, %lookup.next26
  %17 = phi i64 [ %16, %lookup.next26 ], [ %26, %lookup.next38 ], [ %29, %lookup.next50 ], [ %5, %lookup.next54 ], [ %31, %lookup.next62 ], [ %5, %if.else5 ], [ %5, %lookup.next30 ], !dbg !3047
    #dbg_value(i64 %12, !3042, !DIExpression(), !3072)
    #dbg_value(i64 %17, !3040, !DIExpression(), !3073)
  %18 = sub i64 %12, %17, !dbg !3074
  %19 = sitofp i64 %18 to double, !dbg !3075
    #dbg_value(double %19, !3076, !DIExpression(), !3082)
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !3084
  %belowmax = fcmp ole double %20, 0x43DFFFFFFFFFFFFE, !dbg !3085
  %normal = fptosi double %20 to i64, !dbg !3085
    #dbg_value(i64 poison, !3043, !DIExpression(), !3086)
    #dbg_value(i64 %7, !3038, !DIExpression(), !3087)
  %21 = tail call i64 @llvm.smax.i64(i64 %normal, i64 %7), !dbg !3050
  %spec.select = select i1 %belowmax, i64 %21, i64 9223372036854775807, !dbg !3085
  %22 = add nuw nsw i64 %4, 1, !dbg !3088
    #dbg_value(i64 %22, !3041, !DIExpression(), !3053)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3089)
  %exitcond.not = icmp eq i64 %22, %n, !dbg !3049
  br i1 %exitcond.not, label %for.done.loopexit, label %for.body, !dbg !3050

if.else:                                          ; preds = %for.body
  %23 = icmp slt i64 %12, 0, !dbg !3090
    #dbg_value(i64 %12, !3042, !DIExpression(), !3091)
  br i1 %23, label %lookup.next30, label %if.else5, !dbg !3050

lookup.next30:                                    ; preds = %if.else
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3092)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3093)
  %24 = icmp slt i64 %9, 0, !dbg !3094
  br i1 %24, label %lookup.next38, label %if.done, !dbg !3050

lookup.next38:                                    ; preds = %lookup.next30
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3095)
    #dbg_value(i64 %k, !3037, !DIExpression(), !3096)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3097)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3098)
  %25 = sub i64 %9, %1, !dbg !3099
  %26 = mul i64 %25, %11, !dbg !3100
    #dbg_value(i64 %26, !3040, !DIExpression(), !3101)
  br label %if.done, !dbg !3050

if.else5:                                         ; preds = %if.else
    #dbg_value(i64 %12, !3042, !DIExpression(), !3102)
  %.not22 = icmp eq i64 %12, 0, !dbg !3103
  br i1 %.not22, label %if.done, label %lookup.next42, !dbg !3050

lookup.next42:                                    ; preds = %if.else5
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3104)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3105)
  %27 = icmp slt i64 %9, 0, !dbg !3106
  br i1 %27, label %lookup.next50, label %lookup.next54, !dbg !3050

lookup.next50:                                    ; preds = %lookup.next42
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3107)
    #dbg_value(i64 %k, !3037, !DIExpression(), !3108)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3109)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3110)
  %28 = add i64 %9, %1, !dbg !3111
  %29 = mul i64 %28, %11, !dbg !3112
    #dbg_value(i64 %29, !3040, !DIExpression(), !3113)
  br label %if.done, !dbg !3050

lookup.next54:                                    ; preds = %lookup.next42
    #dbg_value(i64 %12, !3042, !DIExpression(), !3114)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3115)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3116)
  %.not23 = icmp eq i64 %9, 0, !dbg !3117
  br i1 %.not23, label %if.done, label %lookup.next62, !dbg !3050

lookup.next62:                                    ; preds = %lookup.next54
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3118)
    #dbg_value(i64 %k, !3037, !DIExpression(), !3119)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3120)
    #dbg_value(i64 %4, !3041, !DIExpression(), !3121)
  %30 = sub i64 %9, %1, !dbg !3122
  %31 = mul i64 %30, %11, !dbg !3123
    #dbg_value(i64 %31, !3040, !DIExpression(), !3124)
  br label %if.done, !dbg !3050

for.done.loopexit:                                ; preds = %if.done
  %32 = sub i64 %13, %spec.select, !dbg !3125
  br label %for.done, !dbg !3125

for.done:                                         ; preds = %for.done.loopexit, %entry
  %33 = phi i64 [ 0, %entry ], [ %32, %for.done.loopexit ], !dbg !3125
    #dbg_value(i64 poison, !3039, !DIExpression(), !3126)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3127)
  ret i64 %33, !dbg !3128

lookup.throw:                                     ; preds = %for.body.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw13:                                   ; preds = %for.body.lr.ph.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052
}
