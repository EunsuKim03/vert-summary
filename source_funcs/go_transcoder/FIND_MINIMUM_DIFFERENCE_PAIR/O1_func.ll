define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3123)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3123)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3123)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3123)
    #dbg_value(i64 9223372036854775807, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
  %1 = icmp sgt i64 %0, 0, !dbg !3128
  br i1 %1, label %for.loop1.preheader.preheader, label %for.done3, !dbg !3129

for.loop1.preheader.preheader:                    ; preds = %entry
  %2 = add i64 %n, -2, !dbg !3129
  br label %for.loop1.preheader, !dbg !3129

for.loop1.preheader:                              ; preds = %for.loop1.preheader.preheader, %for.done
  %indvars.iv15 = phi i64 [ %2, %for.loop1.preheader.preheader ], [ %indvars.iv.next16, %for.done ]
  %indvars.iv.in = phi i64 [ %arr.len, %for.loop1.preheader.preheader ], [ %indvars.iv, %for.done ]
  %3 = phi i64 [ 0, %for.loop1.preheader.preheader ], [ %21, %for.done ]
  %4 = phi i64 [ 9223372036854775807, %for.loop1.preheader.preheader ], [ %.lcssa, %for.done ]
  %indvars.iv = add i64 %indvars.iv.in, -1, !dbg !3129
    #dbg_value(i64 %3, !3121, !DIExpression(), !3126)
  %5 = add nuw nsw i64 %3, 1, !dbg !3130
  %6 = icmp slt i64 %5, %n, !dbg !3131
  br i1 %6, label %for.body2.lr.ph, label %for.done, !dbg !3129

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %arr.len
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3132

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  %.not18.not = icmp ugt i64 %indvars.iv, %indvars.iv15, !dbg !3133
  br label %for.body2, !dbg !3133

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %8 = phi i64 [ %20, %lookup.next7 ], [ %5, %for.body2.preheader ]
  %9 = phi i64 [ %19, %lookup.next7 ], [ %4, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3134)
    #dbg_value(i64 %3, !3121, !DIExpression(), !3135)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3136)
    #dbg_value(i64 %8, !3122, !DIExpression(), !3137)
  br i1 %.not18.not, label %lookup.next7, label %lookup.throw6, !dbg !3133

lookup.next7:                                     ; preds = %for.body2
  %10 = load i64, ptr %7, align 8, !dbg !3132
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %8, !dbg !3133
  %12 = load i64, ptr %11, align 8, !dbg !3133
  %13 = sub i64 %10, %12, !dbg !3138
  %14 = sitofp i64 %13 to double, !dbg !3139
    #dbg_value(double %14, !3140, !DIExpression(), !3146)
  %15 = call double @llvm.fabs.f64(double %14), !dbg !3148
    #dbg_value(i64 %9, !3120, !DIExpression(), !3149)
  %16 = sitofp i64 %9 to double, !dbg !3150
  %17 = fcmp olt double %15, %16, !dbg !3151
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3129
  %normal = fptosi double %15 to i64, !dbg !3129
  %18 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3129
  %19 = select i1 %17, i64 %18, i64 %9, !dbg !3129
    #dbg_value(i64 %8, !3122, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3152)
  %20 = add nuw nsw i64 %8, 1, !dbg !3130
    #dbg_value(i64 %20, !3122, !DIExpression(), !3153)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3154)
  %exitcond.not = icmp eq i64 %20, %n, !dbg !3131
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3129

for.done:                                         ; preds = %lookup.next7, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %19, %lookup.next7 ], !dbg !3124
  %21 = add nuw nsw i64 %3, 1, !dbg !3155
    #dbg_value(i64 %21, !3121, !DIExpression(), !3126)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3127)
  %indvars.iv.next16 = add i64 %indvars.iv15, -1, !dbg !3129
  %exitcond17.not = icmp eq i64 %21, %0, !dbg !3128
  br i1 %exitcond17.not, label %for.done3, label %for.loop1.preheader, !dbg !3129

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa10 = phi i64 [ 9223372036854775807, %entry ], [ %.lcssa, %for.done ], !dbg !3124
    #dbg_value(i64 %.lcssa10, !3120, !DIExpression(), !3156)
  ret i64 %.lcssa10, !dbg !3157

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3133
  unreachable, !dbg !3133
}
