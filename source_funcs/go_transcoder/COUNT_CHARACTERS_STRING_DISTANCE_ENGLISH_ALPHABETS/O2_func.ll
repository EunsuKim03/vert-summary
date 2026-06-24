define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %str.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %str.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %str.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 0, !3035, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
    #dbg_value(i64 %str.len, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3044
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3045

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %str.len, -2, !dbg !3045
  br label %for.loop1.preheader, !dbg !3045

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv12 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next13, %for.done ]
  %indvars.iv.in = phi i64 [ %str.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %4, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3045
    #dbg_value(i64 %2, !3037, !DIExpression(), !3046)
  %4 = add nuw nsw i64 %2, 1, !dbg !3047
  %5 = icmp slt i64 %4, %str.len, !dbg !3048
  br i1 %5, label %for.body2.preheader, label %for.done, !dbg !3045

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not.not = icmp ugt i64 %indvars.iv, %indvars.iv12, !dbg !3049
  br i1 %.not.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3049

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %2
  %.pre = load i8, ptr %6, align 1, !dbg !3050
  br label %for.body2, !dbg !3049

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %7 = phi i64 [ %19, %for.body2 ], [ %4, %for.body2.preheader.split ]
  %8 = phi i64 [ %18, %for.body2 ], [ %3, %for.body2.preheader.split ]
    #dbg_value(i64 %2, !3037, !DIExpression(), !3051)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %7, !3038, !DIExpression(), !3053)
  %9 = getelementptr inbounds nuw i8, ptr %str.data, i64 %7, !dbg !3049
  %10 = load i8, ptr %9, align 1, !dbg !3049
  %11 = sub i8 %.pre, %10, !dbg !3054
  %12 = uitofp i8 %11 to double, !dbg !3055
    #dbg_value(double %12, !3056, !DIExpression(), !3062)
  %13 = sub nsw i64 %2, %7, !dbg !3064
  %14 = sitofp i64 %13 to double, !dbg !3065
    #dbg_value(double %14, !3056, !DIExpression(), !3066)
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !3068
  %16 = fcmp oeq double %15, %12, !dbg !3069
  %17 = zext i1 %16 to i64, !dbg !3045
  %18 = add i64 %8, %17, !dbg !3045
    #dbg_value(i64 %7, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3070)
  %19 = add nuw nsw i64 %7, 1, !dbg !3047
    #dbg_value(i64 %19, !3038, !DIExpression(), !3071)
    #dbg_value(i64 %str.len, !3036, !DIExpression(), !3072)
  %exitcond.not = icmp eq i64 %19, %str.len, !dbg !3048
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3045

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %18, %for.body2 ], !dbg !3040
    #dbg_value(i64 %4, !3037, !DIExpression(), !3046)
    #dbg_value(i64 %str.len, !3036, !DIExpression(), !3073)
  %indvars.iv.next13 = add i64 %indvars.iv12, -1, !dbg !3045
  %exitcond14.not = icmp eq i64 %4, %str.len, !dbg !3044
  br i1 %exitcond14.not, label %for.done3, label %for.loop1.preheader, !dbg !3045

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3040
    #dbg_value(i64 %.lcssa7, !3035, !DIExpression(), !3074)
  ret i64 %.lcssa7, !dbg !3075

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049
}
