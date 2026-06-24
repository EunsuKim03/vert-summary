define range(i64 -9223372036854775808, 361) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3109 {
entry:
    #dbg_value(ptr %arr.data, !3118, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(i64 %arr.len, !3118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %arr.cap, !3118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3124)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3124)
    #dbg_value(i64 0, !3120, !DIExpression(), !3125)
    #dbg_value(i64 0, !3121, !DIExpression(), !3126)
    #dbg_value(i64 360, !3122, !DIExpression(), !3127)
    #dbg_value(i64 0, !3123, !DIExpression(), !3128)
  %0 = icmp sgt i64 %n, 0, !dbg !3129
  br i1 %0, label %for.body, label %for.done3, !dbg !3130

for.body:                                         ; preds = %entry, %for.done
  %1 = phi i64 [ %29, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %x.y.i8, %for.done ], [ 360, %entry ]
  %3 = phi i64 [ %.lcssa10, %for.done ], [ 0, %entry ]
  %4 = phi i64 [ %.lcssa12, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3123, !DIExpression(), !3131)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3132)
    #dbg_value(i64 %1, !3123, !DIExpression(), !3133)
  %exitcond22.not = icmp eq i64 %1, %arr.len, !dbg !3134
  br i1 %exitcond22.not, label %lookup.throw, label %lookup.next, !dbg !3134

lookup.next:                                      ; preds = %for.body
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3134
  %6 = load i64, ptr %5, align 8, !dbg !3134
  %7 = add i64 %6, %3, !dbg !3135
    #dbg_value(i64 %7, !3121, !DIExpression(), !3135)
  %8 = icmp sgt i64 %7, 179, !dbg !3136
  br i1 %8, label %for.body2.preheader, label %for.done, !dbg !3130

for.body2.preheader:                              ; preds = %lookup.next
  %umax = call i64 @llvm.umax.i64(i64 %4, i64 %arr.len), !dbg !3137
  br label %for.body2, !dbg !3137

for.body2:                                        ; preds = %for.body2.preheader, %lookup.next7
  %9 = phi i64 [ %x.y.i, %lookup.next7 ], [ %2, %for.body2.preheader ]
  %10 = phi i64 [ %20, %lookup.next7 ], [ %7, %for.body2.preheader ]
  %11 = phi i64 [ %21, %lookup.next7 ], [ %4, %for.body2.preheader ]
    #dbg_value(i64 %10, !3121, !DIExpression(), !3138)
    #dbg_value(i64 %9, !3122, !DIExpression(), !3139)
    #dbg_value(i64 %10, !3121, !DIExpression(), !3140)
    #dbg_value(i64 poison, !3122, !DIExpression(), !3141)
    #dbg_value({ ptr, i64, i64 } poison, !3118, !DIExpression(), !3142)
    #dbg_value(i64 %11, !3120, !DIExpression(), !3143)
  %exitcond.not = icmp eq i64 %11, %umax, !dbg !3137
  br i1 %exitcond.not, label %lookup.throw6, label %lookup.next7, !dbg !3137

lookup.next7:                                     ; preds = %for.body2
  %12 = sub nsw i64 180, %10, !dbg !3144
  %13 = sitofp i64 %12 to double, !dbg !3145
    #dbg_value(double %13, !3146, !DIExpression(), !3152)
  %14 = call double @llvm.fabs.f64(double %13), !dbg !3154
  %15 = fmul double %14, 2.000000e+00, !dbg !3155
  %abovemin = fcmp oge double %15, 0xC3E0000000000000, !dbg !3156
  %belowmax = fcmp ole double %15, 0x43DFFFFFFFFFFFFE, !dbg !3156
  %normal = fptosi double %15 to i64, !dbg !3156
    #dbg_value(i64 %9, !3157, !DIExpression(), !3163)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3165)
  %16 = call range(i64 -9223372036854775808, 361) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 361) %9, i64 %normal), !dbg !3166
  %17 = select i1 %belowmax, i64 %16, i64 %9, !dbg !3156
  %x.y.i = select i1 %abovemin, i64 %17, i64 -9223372036854775808, !dbg !3156
    #dbg_value(i64 %x.y.i, !3122, !DIExpression(), !3141)
  %18 = getelementptr inbounds i64, ptr %arr.data, i64 %11, !dbg !3137
  %19 = load i64, ptr %18, align 8, !dbg !3137
  %20 = sub i64 %10, %19, !dbg !3167
    #dbg_value(i64 %20, !3121, !DIExpression(), !3167)
  %21 = add i64 %11, 1, !dbg !3168
    #dbg_value(i64 %21, !3120, !DIExpression(), !3168)
  %22 = icmp sgt i64 %20, 179, !dbg !3136
  br i1 %22, label %for.body2, label %for.done, !dbg !3130

for.done:                                         ; preds = %lookup.next7, %lookup.next
  %.lcssa12 = phi i64 [ %4, %lookup.next ], [ %21, %lookup.next7 ], !dbg !3125
  %.lcssa10 = phi i64 [ %7, %lookup.next ], [ %20, %lookup.next7 ], !dbg !3126
  %.lcssa = phi i64 [ %2, %lookup.next ], [ %x.y.i, %lookup.next7 ], !dbg !3127
    #dbg_value(i64 %.lcssa, !3122, !DIExpression(), !3169)
    #dbg_value(i64 %.lcssa10, !3121, !DIExpression(), !3170)
  %23 = sub i64 180, %.lcssa10, !dbg !3171
  %24 = sitofp i64 %23 to double, !dbg !3172
    #dbg_value(double %24, !3146, !DIExpression(), !3173)
  %25 = call double @llvm.fabs.f64(double %24), !dbg !3175
  %26 = fmul double %25, 2.000000e+00, !dbg !3176
  %abovemin8 = fcmp oge double %26, 0xC3E0000000000000, !dbg !3177
  %belowmax9 = fcmp ole double %26, 0x43DFFFFFFFFFFFFE, !dbg !3177
  %normal14 = fptosi double %26 to i64, !dbg !3177
    #dbg_value(i64 %.lcssa, !3157, !DIExpression(), !3178)
    #dbg_value(i64 poison, !3162, !DIExpression(), !3180)
  %27 = call range(i64 -9223372036854775808, 361) i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 361) %.lcssa, i64 %normal14), !dbg !3181
  %28 = select i1 %belowmax9, i64 %27, i64 %.lcssa, !dbg !3177
  %x.y.i8 = select i1 %abovemin8, i64 %28, i64 -9223372036854775808, !dbg !3177
    #dbg_value(i64 %x.y.i8, !3122, !DIExpression(), !3182)
  %29 = add nuw nsw i64 %1, 1, !dbg !3183
    #dbg_value(i64 %29, !3123, !DIExpression(), !3131)
    #dbg_value(i64 %n, !3119, !DIExpression(), !3184)
  %exitcond23.not = icmp eq i64 %29, %n, !dbg !3129
  br i1 %exitcond23.not, label %for.done3, label %for.body, !dbg !3130

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa14 = phi i64 [ 360, %entry ], [ %x.y.i8, %for.done ], !dbg !3127
    #dbg_value(i64 %.lcssa14, !3122, !DIExpression(), !3185)
  ret i64 %.lcssa14, !dbg !3186

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3134
  unreachable, !dbg !3134

lookup.throw6:                                    ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137
}
