define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3041)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3041)
    #dbg_value(i64 %y, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3039, !DIExpression(), !3042)
    #dbg_value(i64 9223372036854775807, !3040, !DIExpression(), !3043)
    #dbg_value(i64 0, !3038, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.loop1.preheader, label %for.done5, !dbg !3046

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %.lcssa, %for.done ], [ 9223372036854775807, %entry ]
  %2 = phi i64 [ %3, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3038, !DIExpression(), !3047)
  %3 = add nuw nsw i64 %2, 1, !dbg !3048
  %4 = icmp slt i64 %3, %n, !dbg !3049
  br i1 %4, label %for.body2.lr.ph, label %for.done, !dbg !3046

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %arr.len
  br i1 %.not, label %for.body2.lr.ph.split, label %lookup.throw, !dbg !3050

for.body2.lr.ph.split:                            ; preds = %for.body2.lr.ph
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %x, %6
  %8 = icmp eq i64 %y, %6
  br label %for.body2, !dbg !3046

for.body2:                                        ; preds = %for.body2.lr.ph.split, %if.done
  %9 = phi i64 [ %3, %for.body2.lr.ph.split ], [ %19, %if.done ]
  %10 = phi i64 [ %1, %for.body2.lr.ph.split ], [ %18, %if.done ]
    #dbg_value(i64 %x, !3036, !DIExpression(), !3051)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3053)
  br i1 %7, label %cond.true, label %lookup.next20, !dbg !3046

cond.true:                                        ; preds = %for.body2
    #dbg_value(i64 %y, !3037, !DIExpression(), !3054)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %9, !3039, !DIExpression(), !3056)
  %.not3 = icmp ult i64 %9, %arr.len, !dbg !3057
  br i1 %.not3, label %lookup.next9, label %lookup.throw8, !dbg !3057

lookup.next9:                                     ; preds = %cond.true
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3057
  %12 = load i64, ptr %11, align 8, !dbg !3057
  %13 = icmp eq i64 %y, %12, !dbg !3058
  br i1 %13, label %cond.true3, label %lookup.next20, !dbg !3046

cond.true3:                                       ; preds = %lookup.next24, %lookup.next9
    #dbg_value(i64 %10, !3040, !DIExpression(), !3059)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3060)
    #dbg_value(i64 %9, !3039, !DIExpression(), !3061)
  %14 = sub nsw i64 %2, %9, !dbg !3062
  %15 = sitofp i64 %14 to double, !dbg !3063
    #dbg_value(double %15, !3064, !DIExpression(), !3070)
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !3072
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !3073
  %normal = fptosi double %16 to i64, !dbg !3073
  %17 = tail call i64 @llvm.smin.i64(i64 %10, i64 %normal), !dbg !3046
  %spec.select = select i1 %belowmax, i64 %17, i64 %10, !dbg !3073
  br label %if.done, !dbg !3046

if.done:                                          ; preds = %cond.true3, %lookup.next24, %lookup.next20
  %18 = phi i64 [ %10, %lookup.next20 ], [ %10, %lookup.next24 ], [ %spec.select, %cond.true3 ], !dbg !3043
    #dbg_value(i64 %9, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3074)
  %19 = add nuw nsw i64 %9, 1, !dbg !3048
    #dbg_value(i64 %19, !3039, !DIExpression(), !3075)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3076)
  %exitcond.not = icmp eq i64 %19, %n, !dbg !3049
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3046

lookup.next20:                                    ; preds = %for.body2, %lookup.next9
    #dbg_value(i64 %y, !3037, !DIExpression(), !3077)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3078)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3079)
  br i1 %8, label %cond.true4, label %if.done, !dbg !3046

cond.true4:                                       ; preds = %lookup.next20
    #dbg_value(i64 %x, !3036, !DIExpression(), !3080)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3081)
    #dbg_value(i64 %9, !3039, !DIExpression(), !3082)
  %.not5 = icmp ult i64 %9, %arr.len, !dbg !3083
  br i1 %.not5, label %lookup.next24, label %lookup.throw23, !dbg !3083

lookup.next24:                                    ; preds = %cond.true4
  %20 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3083
  %21 = load i64, ptr %20, align 8, !dbg !3083
  %22 = icmp eq i64 %x, %21, !dbg !3084
  br i1 %22, label %cond.true3, label %if.done, !dbg !3046

for.done:                                         ; preds = %if.done, %for.loop1.preheader
  %.lcssa = phi i64 [ %1, %for.loop1.preheader ], [ %18, %if.done ], !dbg !3043
    #dbg_value(i64 %3, !3038, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3085)
  %exitcond20.not = icmp eq i64 %3, %n, !dbg !3045
  br i1 %exitcond20.not, label %for.done5, label %for.loop1.preheader, !dbg !3046

for.done5:                                        ; preds = %for.done, %entry
  %.lcssa14 = phi i64 [ 9223372036854775807, %entry ], [ %.lcssa, %for.done ], !dbg !3043
    #dbg_value(i64 %.lcssa14, !3040, !DIExpression(), !3086)
  ret i64 %.lcssa14, !dbg !3087

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw8:                                    ; preds = %cond.true
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

lookup.throw23:                                   ; preds = %cond.true4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3083
  unreachable, !dbg !3083
}
