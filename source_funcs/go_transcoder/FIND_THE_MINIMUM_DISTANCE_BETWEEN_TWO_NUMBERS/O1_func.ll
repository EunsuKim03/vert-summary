define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3125)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3125)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3125)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3125)
    #dbg_value(i64 %x, !3120, !DIExpression(), !3125)
    #dbg_value(i64 %y, !3121, !DIExpression(), !3125)
    #dbg_value(i64 0, !3122, !DIExpression(), !3126)
    #dbg_value(i64 0, !3123, !DIExpression(), !3127)
    #dbg_value(i64 9223372036854775807, !3124, !DIExpression(), !3128)
    #dbg_value(i64 0, !3122, !DIExpression(), !3129)
  %0 = icmp sgt i64 %n, 0, !dbg !3130
  br i1 %0, label %for.loop1.preheader, label %for.done5, !dbg !3131

for.loop1.preheader:                              ; preds = %entry, %for.done
  %1 = phi i64 [ %.lcssa, %for.done ], [ 9223372036854775807, %entry ]
  %2 = phi i64 [ %23, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %2, !3122, !DIExpression(), !3132)
  %3 = add nuw nsw i64 %2, 1, !dbg !3133
  %4 = icmp slt i64 %3, %n, !dbg !3134
  br i1 %4, label %for.body2.lr.ph, label %for.done, !dbg !3131

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %2, %arr.len
  br i1 %.not, label %for.body2.lr.ph.split, label %lookup.throw, !dbg !3135

for.body2.lr.ph.split:                            ; preds = %for.body2.lr.ph
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %x, %6
  %8 = icmp eq i64 %y, %6
  br label %for.body2, !dbg !3131

for.body2:                                        ; preds = %for.body2.lr.ph.split, %if.done
  %9 = phi i64 [ %3, %for.body2.lr.ph.split ], [ %19, %if.done ]
  %10 = phi i64 [ %1, %for.body2.lr.ph.split ], [ %18, %if.done ]
    #dbg_value(i64 %x, !3120, !DIExpression(), !3136)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3137)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3138)
  br i1 %7, label %cond.true, label %lookup.next20, !dbg !3131

cond.true:                                        ; preds = %for.body2
    #dbg_value(i64 %y, !3121, !DIExpression(), !3139)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3140)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3141)
  %.not3 = icmp ult i64 %9, %arr.len, !dbg !3142
  br i1 %.not3, label %lookup.next9, label %lookup.throw8, !dbg !3142

lookup.next9:                                     ; preds = %cond.true
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3142
  %12 = load i64, ptr %11, align 8, !dbg !3142
  %13 = icmp eq i64 %y, %12, !dbg !3143
  br i1 %13, label %cond.true3, label %lookup.next20, !dbg !3131

cond.true3:                                       ; preds = %lookup.next24, %lookup.next9
    #dbg_value(i64 %10, !3124, !DIExpression(), !3144)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3145)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3146)
  %14 = sub nsw i64 %2, %9, !dbg !3147
  %15 = sitofp i64 %14 to double, !dbg !3148
    #dbg_value(double %15, !3149, !DIExpression(), !3155)
    #dbg_value(double %15, !3149, !DIExpression(), !3157)
  %16 = call double @llvm.fabs.f64(double %15), !dbg !3158
  %belowmax = fcmp ole double %16, 0x43DFFFFFFFFFFFFE, !dbg !3159
  %normal = fptosi double %16 to i64, !dbg !3159
  %17 = call i64 @llvm.smin.i64(i64 %10, i64 %normal), !dbg !3131
  %spec.select = select i1 %belowmax, i64 %17, i64 %10, !dbg !3159
  br label %if.done, !dbg !3131

if.done:                                          ; preds = %cond.true3, %lookup.next24, %lookup.next20
  %18 = phi i64 [ %10, %lookup.next20 ], [ %10, %lookup.next24 ], [ %spec.select, %cond.true3 ], !dbg !3128
    #dbg_value(i64 %9, !3123, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3160)
  %19 = add nuw nsw i64 %9, 1, !dbg !3133
    #dbg_value(i64 %19, !3123, !DIExpression(), !3161)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3162)
  %exitcond.not = icmp eq i64 %19, %n, !dbg !3134
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3131

lookup.next20:                                    ; preds = %for.body2, %lookup.next9
    #dbg_value(i64 %y, !3121, !DIExpression(), !3163)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3164)
    #dbg_value(i64 %2, !3122, !DIExpression(), !3165)
  br i1 %8, label %cond.true4, label %if.done, !dbg !3131

cond.true4:                                       ; preds = %lookup.next20
    #dbg_value(i64 %x, !3120, !DIExpression(), !3166)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3167)
    #dbg_value(i64 %9, !3123, !DIExpression(), !3168)
  %.not5 = icmp ult i64 %9, %arr.len, !dbg !3169
  br i1 %.not5, label %lookup.next24, label %lookup.throw23, !dbg !3169

lookup.next24:                                    ; preds = %cond.true4
  %20 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3169
  %21 = load i64, ptr %20, align 8, !dbg !3169
  %22 = icmp eq i64 %x, %21, !dbg !3170
  br i1 %22, label %cond.true3, label %if.done, !dbg !3131

for.done:                                         ; preds = %if.done, %for.loop1.preheader
  %.lcssa = phi i64 [ %1, %for.loop1.preheader ], [ %18, %if.done ], !dbg !3128
  %23 = add nuw nsw i64 %2, 1, !dbg !3171
    #dbg_value(i64 %23, !3122, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3172)
  %exitcond20.not = icmp eq i64 %23, %n, !dbg !3130
  br i1 %exitcond20.not, label %for.done5, label %for.loop1.preheader, !dbg !3131

for.done5:                                        ; preds = %for.done, %entry
  %.lcssa14 = phi i64 [ 9223372036854775807, %entry ], [ %.lcssa, %for.done ], !dbg !3128
    #dbg_value(i64 %.lcssa14, !3124, !DIExpression(), !3173)
  ret i64 %.lcssa14, !dbg !3174

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3135
  unreachable, !dbg !3135

lookup.throw8:                                    ; preds = %cond.true
  call fastcc void @runtime.lookupPanic(), !dbg !3142
  unreachable, !dbg !3142

lookup.throw23:                                   ; preds = %cond.true4
  call fastcc void @runtime.lookupPanic(), !dbg !3169
  unreachable, !dbg !3169
}
