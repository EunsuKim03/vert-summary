define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3041)
    #dbg_value(i64 0, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
    #dbg_value(i64 0, !3038, !DIExpression(), !3044)
  %0 = add i64 %n, -1
  %.not72 = icmp slt i64 %0, 0, !dbg !3045
  br i1 %.not72, label %for.done6, label %for.body, !dbg !3046

for.body:                                         ; preds = %entry, %if.done5
  %1 = phi i64 [ %4, %if.done5 ], [ 0, %entry ]
  %2 = phi i64 [ %18, %if.done5 ], [ 0, %entry ]
  %3 = phi i64 [ %17, %if.done5 ], [ 0, %entry ]
    #dbg_value(i1 true, !3039, !DIExpression(), !3047)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3048)
  %4 = add i64 %1, 1, !dbg !3049
    #dbg_value(i64 %4, !3040, !DIExpression(), !3050)
  %.not771 = icmp sgt i64 %4, %0, !dbg !3051
  br i1 %.not771, label %if.then3, label %for.body2.lr.ph, !dbg !3046

for.body2.lr.ph:                                  ; preds = %for.body
  %.not12 = icmp ult i64 %1, %arr.len
  %5 = getelementptr inbounds i64, ptr %arr.data, i64 %1
  br i1 %.not12, label %for.body2, label %lookup.throw, !dbg !3052

for.body2:                                        ; preds = %for.body2.lr.ph, %deref.next18
  %6 = phi i64 [ %11, %deref.next18 ], [ %4, %for.body2.lr.ph ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %6, !3040, !DIExpression(), !3055)
  %exitcond.not = icmp eq i64 %6, %arr.len, !dbg !3056
  br i1 %exitcond.not, label %lookup.throw11, label %lookup.next12, !dbg !3056

lookup.next12:                                    ; preds = %for.body2
  %7 = load i64, ptr %5, align 8, !dbg !3052
  %8 = getelementptr inbounds i64, ptr %arr.data, i64 %6, !dbg !3056
  %9 = load i64, ptr %8, align 8, !dbg !3056
  %10 = icmp eq i64 %7, %9, !dbg !3057
  br i1 %10, label %"main.f_gold$1.exit", label %deref.next18, !dbg !3046

"main.f_gold$1.exit":                             ; preds = %lookup.next12
    #dbg_value(i1 false, !3039, !DIExpression(), !3058)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3059)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3060)
    #dbg_value({ ptr, i64, i64 } poison, !3061, !DIExpression(), !3066)
    #dbg_value(i64 poison, !3064, !DIExpression(), !3068)
    #dbg_value(ptr %8, !3065, !DIExpression(), !3069)
  store i64 0, ptr %8, align 8, !dbg !3070
  store i64 0, ptr %5, align 8, !dbg !3071
    #dbg_value(i1 poison, !3039, !DIExpression(), !3072)
  br label %if.done5, !dbg !3046

deref.next18:                                     ; preds = %lookup.next12
  %11 = add i64 %6, 1, !dbg !3073
    #dbg_value(i64 %11, !3040, !DIExpression(), !3074)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3075)
  %.not7 = icmp sgt i64 %11, %0, !dbg !3051
  br i1 %.not7, label %if.then3, label %for.body2, !dbg !3046

if.then3:                                         ; preds = %deref.next18, %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3076)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3077)
  %.not30 = icmp ult i64 %1, %arr.len, !dbg !3078
  br i1 %.not30, label %lookup.next23, label %lookup.throw22, !dbg !3078

lookup.next23:                                    ; preds = %if.then3
  %12 = getelementptr inbounds i64, ptr %arr.data, i64 %1, !dbg !3078
  %13 = load i64, ptr %12, align 8, !dbg !3078
  %14 = icmp sgt i64 %13, 0, !dbg !3079
  br i1 %14, label %lookup.next27, label %lookup.next31, !dbg !3046

lookup.next27:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3080)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3081)
  %15 = add i64 %13, %3, !dbg !3082
    #dbg_value(i64 %15, !3036, !DIExpression(), !3082)
  br label %if.done5, !dbg !3046

lookup.next31:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3083)
    #dbg_value(i64 poison, !3038, !DIExpression(), !3084)
  %16 = add i64 %13, %2, !dbg !3085
    #dbg_value(i64 %16, !3037, !DIExpression(), !3085)
  br label %if.done5, !dbg !3046

if.done5:                                         ; preds = %"main.f_gold$1.exit", %lookup.next31, %lookup.next27
  %17 = phi i64 [ %3, %"main.f_gold$1.exit" ], [ %15, %lookup.next27 ], [ %3, %lookup.next31 ], !dbg !3042
  %18 = phi i64 [ %2, %"main.f_gold$1.exit" ], [ %2, %lookup.next27 ], [ %16, %lookup.next31 ], !dbg !3043
    #dbg_value(i64 %4, !3038, !DIExpression(), !3086)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3087)
  br i1 %.not771, label %for.done6.loopexit, label %for.body, !dbg !3046

for.done6.loopexit:                               ; preds = %if.done5
  %19 = sub i64 %17, %18, !dbg !3088
  %20 = sitofp i64 %19 to double, !dbg !3089
  br label %for.done6, !dbg !3088

for.done6:                                        ; preds = %for.done6.loopexit, %entry
  %21 = phi double [ 0.000000e+00, %entry ], [ %20, %for.done6.loopexit ], !dbg !3088
    #dbg_value(i64 poison, !3036, !DIExpression(), !3090)
    #dbg_value(i64 poison, !3037, !DIExpression(), !3091)
    #dbg_value(double %21, !3092, !DIExpression(), !3098)
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !3100
  %belowmax = fcmp ole double %22, 0x43DFFFFFFFFFFFFE, !dbg !3101
  %normal = fptosi double %22 to i64, !dbg !3101
  %23 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3101
  ret i64 %23, !dbg !3102

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052

lookup.throw11:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056

lookup.throw22:                                   ; preds = %if.then3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3078
  unreachable, !dbg !3078
}
