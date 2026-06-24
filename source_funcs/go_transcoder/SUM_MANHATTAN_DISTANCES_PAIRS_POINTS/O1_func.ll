define i64 @f_gold(ptr nocapture readonly %x.data, i64 %x.len, i64 %x.cap, ptr nocapture readonly %y.data, i64 %y.len, i64 %y.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %x.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %x.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %x.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(ptr %y.data, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %y.len, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %y.cap, !3119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3124)
    #dbg_value(i64 0, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
  %0 = icmp sgt i64 %n, 0, !dbg !3127
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3128

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %25, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %.lcssa, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3122, !DIExpression(), !3129)
  %3 = add nuw nsw i64 %1, 1, !dbg !3130
  %4 = icmp slt i64 %3, %n, !dbg !3131
  br i1 %4, label %for.body2.lr.ph, label %for.done, !dbg !3128

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %1, %x.len
  %5 = getelementptr inbounds nuw i64, ptr %x.data, i64 %1
  %.not3 = icmp ult i64 %1, %y.len
  %6 = getelementptr inbounds nuw i64, ptr %y.data, i64 %1
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3132

for.body2:                                        ; preds = %for.body2.lr.ph, %lookup.next15
  %7 = phi i64 [ %24, %lookup.next15 ], [ %3, %for.body2.lr.ph ]
  %8 = phi i64 [ %23, %lookup.next15 ], [ %2, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3133)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3134)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3135)
    #dbg_value(i64 %7, !3123, !DIExpression(), !3136)
  %exitcond.not = icmp eq i64 %7, %x.len, !dbg !3137
  br i1 %exitcond.not, label %lookup.throw6, label %lookup.next7, !dbg !3137

lookup.next7:                                     ; preds = %for.body2
  %9 = load i64, ptr %5, align 8, !dbg !3132
  %10 = getelementptr inbounds nuw i64, ptr %x.data, i64 %7, !dbg !3137
  %11 = load i64, ptr %10, align 8, !dbg !3137
  %12 = sub i64 %9, %11, !dbg !3138
  %13 = sitofp i64 %12 to double, !dbg !3139
    #dbg_value(double %13, !3140, !DIExpression(), !3146)
    #dbg_value(double %13, !3140, !DIExpression(), !3148)
  %14 = call double @llvm.fabs.f64(double %13), !dbg !3149
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3150)
    #dbg_value(i64 %1, !3122, !DIExpression(), !3151)
  br i1 %.not3, label %lookup.next11, label %lookup.throw10, !dbg !3152

lookup.next11:                                    ; preds = %lookup.next7
    #dbg_value({ ptr, i64, i64 } poison, !3119, !DIExpression(), !3153)
    #dbg_value(i64 %7, !3123, !DIExpression(), !3154)
  %.not4 = icmp ult i64 %7, %y.len, !dbg !3155
  br i1 %.not4, label %lookup.next15, label %lookup.throw14, !dbg !3155

lookup.next15:                                    ; preds = %lookup.next11
  %15 = load i64, ptr %6, align 8, !dbg !3152
  %16 = getelementptr inbounds nuw i64, ptr %y.data, i64 %7, !dbg !3155
  %17 = load i64, ptr %16, align 8, !dbg !3155
  %18 = sub i64 %15, %17, !dbg !3156
  %19 = sitofp i64 %18 to double, !dbg !3157
    #dbg_value(double %19, !3140, !DIExpression(), !3158)
  %20 = call double @llvm.fabs.f64(double %19), !dbg !3160
  %21 = fadd double %14, %20, !dbg !3161
  %abovemin = fcmp oge double %21, 0xC3E0000000000000, !dbg !3162
  %belowmax = fcmp ole double %21, 0x43DFFFFFFFFFFFFE, !dbg !3162
  %normal = fptosi double %21 to i64, !dbg !3162
  %saturated = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3162
  %22 = select i1 %abovemin, i64 %saturated, i64 -9223372036854775808, !dbg !3162
  %23 = add i64 %22, %8, !dbg !3163
    #dbg_value(i64 %23, !3121, !DIExpression(), !3163)
    #dbg_value(i64 %7, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3164)
  %24 = add nuw nsw i64 %7, 1, !dbg !3130
    #dbg_value(i64 %24, !3123, !DIExpression(), !3165)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3166)
  %exitcond18.not = icmp eq i64 %24, %n, !dbg !3131
  br i1 %exitcond18.not, label %for.done, label %for.body2, !dbg !3128

for.done:                                         ; preds = %lookup.next15, %for.loop1.preheader
  %.lcssa = phi i64 [ %2, %for.loop1.preheader ], [ %23, %lookup.next15 ], !dbg !3125
  %25 = add nuw nsw i64 %1, 1, !dbg !3167
    #dbg_value(i64 %25, !3122, !DIExpression(), !3129)
    #dbg_value(i64 %n, !3120, !DIExpression(), !3168)
  %exitcond19.not = icmp eq i64 %25, %n, !dbg !3127
  br i1 %exitcond19.not, label %for.done3, label %for.loop1.preheader, !dbg !3128

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa11 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3125
    #dbg_value(i64 %.lcssa11, !3121, !DIExpression(), !3169)
  ret i64 %.lcssa11, !dbg !3170

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3132
  unreachable, !dbg !3132

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw10:                                   ; preds = %lookup.next7
  call fastcc void @runtime.lookupPanic(), !dbg !3152
  unreachable, !dbg !3152

lookup.throw14:                                   ; preds = %lookup.next11
  call fastcc void @runtime.lookupPanic(), !dbg !3155
  unreachable, !dbg !3155
}
