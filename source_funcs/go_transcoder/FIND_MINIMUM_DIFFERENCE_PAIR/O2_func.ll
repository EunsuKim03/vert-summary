define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 9223372036854775807, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
  %0 = add i64 %n, -1
  %1 = icmp sgt i64 %0, 0, !dbg !3042
  br i1 %1, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3043

for.loop1.preheader.preheader:                    ; preds = %entry
  %2 = add i64 %n, -2, !dbg !3043
  br label %for.loop1.preheader, !dbg !3043

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv15 = phi i64 [ %2, %for.loop1.preheader.preheader ], [ %indvars.iv.next16, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %5, %for.done ]
  %4 = phi i64 [ 9223372036854775807, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3043
    #dbg_value(i64 %3, !3037, !DIExpression(), !3044)
  %5 = add nuw nsw i64 %3, 1, !dbg !3045
  %6 = icmp slt i64 %5, %n, !dbg !3046
  br i1 %6, label %for.body2.lr.ph, label %for.done, !dbg !3043

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %arr.len
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3047

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not18.not = icmp ugt i64 %indvars.iv, %indvars.iv15, !dbg !3048
  br i1 %.not18.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3048

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %.pre = load i64, ptr %7, align 8, !dbg !3047
  br label %for.body2, !dbg !3048

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %8 = phi i64 [ %19, %for.body2 ], [ %5, %for.body2.preheader.split ]
  %9 = phi i64 [ %18, %for.body2 ], [ %4, %for.body2.preheader.split ]
    #dbg_value(i64 %3, !3037, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %8, !3038, !DIExpression(), !3051)
  %10 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !3048
  %11 = load i64, ptr %10, align 8, !dbg !3048
  %12 = sub i64 %.pre, %11, !dbg !3052
  %13 = sitofp i64 %12 to double, !dbg !3053
    #dbg_value(double %13, !3054, !DIExpression(), !3060)
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !3062
    #dbg_value(i64 %9, !3036, !DIExpression(), !3063)
  %15 = sitofp i64 %9 to double, !dbg !3064
  %16 = fcmp olt double %14, %15, !dbg !3065
  %belowmax = fcmp ole double %14, 0x43DFFFFFFFFFFFFE, !dbg !3043
  %normal = fptosi double %14 to i64, !dbg !3043
  %17 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3043
  %18 = select i1 %16, i64 %17, i64 %9, !dbg !3043
    #dbg_value(i64 %8, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3066)
  %19 = add nuw nsw i64 %8, 1, !dbg !3045
    #dbg_value(i64 %19, !3038, !DIExpression(), !3067)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3068)
  %exitcond.not = icmp eq i64 %19, %n, !dbg !3046
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3043

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %18, %for.body2 ], !dbg !3040
    #dbg_value(i64 %5, !3037, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3069)
  %indvars.iv.next16 = add i64 %indvars.iv15, -1, !dbg !3043
  %exitcond17.not = icmp eq i64 %5, %0, !dbg !3042
  br i1 %exitcond17.not, label %for.done3, label %for.loop1.preheader, !dbg !3043

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa10 = phi i64 [ 9223372036854775807, %entry ], [ %.lcssa, %for.done ], !dbg !3040
    #dbg_value(i64 %.lcssa10, !3036, !DIExpression(), !3070)
  ret i64 %.lcssa10, !dbg !3071

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3047
  unreachable, !dbg !3047

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048
}
