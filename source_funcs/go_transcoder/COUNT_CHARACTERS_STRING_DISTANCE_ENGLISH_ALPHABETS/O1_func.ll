define i64 @f_gold(ptr nocapture readonly %str.data, i64 %str.len, i64 %str.cap) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %str.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %str.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %str.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 0, !3119, !DIExpression(), !3124)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3125)
    #dbg_value(i64 %str.len, !3120, !DIExpression(), !3126)
    #dbg_value(i64 0, !3121, !DIExpression(), !3127)
  %0 = icmp sgt i64 %str.len, 0, !dbg !3128
  br i1 %0, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3129

for.loop1.preheader.preheader:                    ; preds = %entry
  %1 = add nsw i64 %str.len, -2, !dbg !3129
  br label %for.loop1.preheader, !dbg !3129

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv12 = phi i64 [ %1, %for.loop1.preheader.preheader ], [ %indvars.iv.next13, %for.done ]
  %indvars.iv.in = phi i64 [ %str.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %2 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %21, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3129
    #dbg_value(i64 %2, !3121, !DIExpression(), !3130)
  %4 = add nuw nsw i64 %2, 1, !dbg !3131
  %5 = icmp slt i64 %4, %str.len, !dbg !3132
  br i1 %5, label %for.body2.lr.ph, label %for.done, !dbg !3129

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %6 = getelementptr inbounds nuw i8, ptr %str.data, i64 %2
  %.not.not = icmp ugt i64 %indvars.iv, %indvars.iv12, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.body2.lr.ph, %lookup.next7
  %7 = phi i64 [ %20, %lookup.next7 ], [ %4, %for.body2.lr.ph ]
  %8 = phi i64 [ %19, %lookup.next7 ], [ %3, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %7, !3122, !DIExpression(), !3137)
  br i1 %.not.not, label %lookup.next7, label %lookup.throw6, !dbg !3133

lookup.next7:                                     ; preds = %for.body2
  %9 = load i8, ptr %6, align 1, !dbg !3138
  %10 = getelementptr inbounds nuw i8, ptr %str.data, i64 %7, !dbg !3133
  %11 = load i8, ptr %10, align 1, !dbg !3133
  %12 = sub i8 %9, %11, !dbg !3139
  %13 = uitofp i8 %12 to double, !dbg !3140
    #dbg_value(double %13, !3141, !DIExpression(), !3147)
    #dbg_value(i64 %2, !3121, !DIExpression(), !3149)
    #dbg_value(i64 %7, !3122, !DIExpression(), !3150)
  %14 = sub nsw i64 %2, %7, !dbg !3151
  %15 = sitofp i64 %14 to double, !dbg !3152
    #dbg_value(double %15, !3141, !DIExpression(), !3153)
  %16 = call double @llvm.fabs.f64(double %15), !dbg !3155
  %17 = fcmp oeq double %16, %13, !dbg !3156
  %18 = zext i1 %17 to i64, !dbg !3129
  %19 = add i64 %8, %18, !dbg !3129
    #dbg_value(i64 %7, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3157)
  %20 = add nuw nsw i64 %7, 1, !dbg !3131
    #dbg_value(i64 %20, !3122, !DIExpression(), !3158)
    #dbg_value(i64 %str.len, !3120, !DIExpression(), !3159)
  %exitcond.not = icmp eq i64 %20, %str.len, !dbg !3132
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3129

for.done:                                         ; preds = %lookup.next7, %for.loop1.preheader
  %.lcssa = phi i64 [ %3, %for.loop1.preheader ], [ %19, %lookup.next7 ], !dbg !3124
  %21 = add nuw nsw i64 %2, 1, !dbg !3160
    #dbg_value(i64 %21, !3121, !DIExpression(), !3130)
    #dbg_value(i64 %str.len, !3120, !DIExpression(), !3161)
  %indvars.iv.next13 = add i64 %indvars.iv12, -1, !dbg !3129
  %exitcond14.not = icmp eq i64 %21, %str.len, !dbg !3128
  br i1 %exitcond14.not, label %for.done3, label %for.loop1.preheader, !dbg !3129

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3124
    #dbg_value(i64 %.lcssa7, !3119, !DIExpression(), !3162)
  ret i64 %.lcssa7, !dbg !3163

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133
}
