define i64 @f_gold(ptr nocapture readonly %x.data, i64 %x.len, i64 %x.cap, ptr nocapture readonly %y.data, i64 %y.len, i64 %y.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %x.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %x.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %x.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(ptr %y.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %y.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %y.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3044

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %3, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3045)
  %3 = add nuw nsw i64 %1, 1, !dbg !3046
  %4 = icmp slt i64 %3, %n, !dbg !3047
  br i1 %4, label %for.body2.lr.ph, label %for.done, !dbg !3044

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %1, %x.len
  %5 = getelementptr inbounds nuw i64, ptr %x.data, i64 %1
  %.not3 = icmp ult i64 %1, %y.len
  %6 = getelementptr inbounds nuw i64, ptr %y.data, i64 %1
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3048

for.body2:                                        ; preds = %for.body2.lr.ph, %lookup.next15
  %7 = phi i64 [ %24, %lookup.next15 ], [ %3, %for.body2.lr.ph ]
  %8 = phi i64 [ %23, %lookup.next15 ], [ %2, %for.body2.lr.ph ]
    #dbg_value(i64 %1, !3038, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %7, !3039, !DIExpression(), !3051)
  %exitcond.not = icmp eq i64 %7, %x.len, !dbg !3052
  br i1 %exitcond.not, label %lookup.throw6, label %lookup.next7, !dbg !3052

lookup.next7:                                     ; preds = %for.body2
  %9 = load i64, ptr %5, align 8, !dbg !3048
  %10 = getelementptr inbounds nuw i64, ptr %x.data, i64 %7, !dbg !3052
  %11 = load i64, ptr %10, align 8, !dbg !3052
  %12 = sub i64 %9, %11, !dbg !3053
  %13 = sitofp i64 %12 to double, !dbg !3054
    #dbg_value(double %13, !3055, !DIExpression(), !3061)
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !3063
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3064)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3065)
  br i1 %.not3, label %lookup.next11, label %lookup.throw10, !dbg !3066

lookup.next11:                                    ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3067)
    #dbg_value(i64 %7, !3039, !DIExpression(), !3068)
  %.not4 = icmp ult i64 %7, %y.len, !dbg !3069
  br i1 %.not4, label %lookup.next15, label %lookup.throw14, !dbg !3069

lookup.next15:                                    ; preds = %lookup.next11
  %15 = load i64, ptr %6, align 8, !dbg !3066
  %16 = getelementptr inbounds nuw i64, ptr %y.data, i64 %7, !dbg !3069
  %17 = load i64, ptr %16, align 8, !dbg !3069
  %18 = sub i64 %15, %17, !dbg !3070
  %19 = sitofp i64 %18 to double, !dbg !3071
    #dbg_value(double %19, !3055, !DIExpression(), !3072)
  %20 = tail call double @llvm.fabs.f64(double %19), !dbg !3074
  %21 = fadd double %14, %20, !dbg !3075
  %abovemin = fcmp oge double %21, 0xC3E0000000000000, !dbg !3076
  %belowmax = fcmp ole double %21, 0x43DFFFFFFFFFFFFE, !dbg !3076
  %normal = fptosi double %21 to i64, !dbg !3076
  %saturated = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3076
  %22 = select i1 %abovemin, i64 %saturated, i64 -9223372036854775808, !dbg !3076
  %23 = add i64 %22, %8, !dbg !3077
    #dbg_value(i64 %23, !3037, !DIExpression(), !3077)
    #dbg_value(i64 %7, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3078)
  %24 = add nuw nsw i64 %7, 1, !dbg !3046
    #dbg_value(i64 %24, !3039, !DIExpression(), !3079)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3080)
  %exitcond18.not = icmp eq i64 %24, %n, !dbg !3047
  br i1 %exitcond18.not, label %for.done, label %for.body2, !dbg !3044

for.done:                                         ; preds = %lookup.next15, %for.loop1.preheader
  %.lcssa = phi i64 [ %2, %for.loop1.preheader ], [ %23, %lookup.next15 ], !dbg !3041
    #dbg_value(i64 %3, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3036, !DIExpression(), !3081)
  %exitcond19.not = icmp eq i64 %3, %n, !dbg !3043
  br i1 %exitcond19.not, label %for.done3, label %for.loop1.preheader, !dbg !3044

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa11 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3041
    #dbg_value(i64 %.lcssa11, !3037, !DIExpression(), !3082)
  ret i64 %.lcssa11, !dbg !3083

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw6:                                    ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052

lookup.throw10:                                   ; preds = %lookup.next7
  tail call fastcc void @runtime.lookupPanic(), !dbg !3066
  unreachable, !dbg !3066

lookup.throw14:                                   ; preds = %lookup.next11
  tail call fastcc void @runtime.lookupPanic(), !dbg !3069
  unreachable, !dbg !3069
}
