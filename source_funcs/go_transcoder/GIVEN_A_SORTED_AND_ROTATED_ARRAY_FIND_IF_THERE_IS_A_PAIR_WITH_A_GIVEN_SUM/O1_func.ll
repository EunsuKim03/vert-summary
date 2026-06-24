define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3113 {
entry:
    #dbg_value(ptr %arr.data, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3128)
    #dbg_value(i64 %arr.len, !3122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3128)
    #dbg_value(i64 %arr.cap, !3122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3128)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3128)
    #dbg_value(i64 %x, !3124, !DIExpression(), !3128)
    #dbg_value(i64 0, !3125, !DIExpression(), !3129)
    #dbg_value(i64 0, !3125, !DIExpression(), !3130)
  %0 = add i64 %n, -1
  %smax = call i64 @llvm.smax.i64(i64 %0, i64 0), !dbg !3131
  %1 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !3131
  br label %for.loop, !dbg !3131

for.loop:                                         ; preds = %lookup.next9, %entry
  %2 = phi i64 [ 0, %entry ], [ %3, %lookup.next9 ], !dbg !3129
    #dbg_value(i64 %2, !3125, !DIExpression(), !3132)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3133)
  %exitcond.not = icmp eq i64 %2, %smax, !dbg !3134
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3131

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3135)
    #dbg_value(i64 %2, !3125, !DIExpression(), !3136)
  %exitcond40.not = icmp eq i64 %2, %arr.len, !dbg !3137
  br i1 %exitcond40.not, label %lookup.throw, label %lookup.next, !dbg !3137

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3138)
    #dbg_value(i64 %2, !3125, !DIExpression(), !3139)
  %exitcond41.not = icmp eq i64 %2, %1, !dbg !3140
  br i1 %exitcond41.not, label %lookup.throw8, label %lookup.next9, !dbg !3140

lookup.next9:                                     ; preds = %lookup.next
  %3 = add nuw i64 %2, 1, !dbg !3141
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3137
  %5 = load i64, ptr %4, align 8, !dbg !3137
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3140
  %7 = load i64, ptr %6, align 8, !dbg !3140
  %8 = icmp sgt i64 %5, %7, !dbg !3142
  br i1 %8, label %for.done, label %for.loop, !dbg !3131

for.done:                                         ; preds = %lookup.next9, %for.loop
  %.lcssa = phi i64 [ %2, %lookup.next9 ], [ %smax, %for.loop ], !dbg !3129
    #dbg_value(i64 %.lcssa, !3125, !DIExpression(), !3143)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3144)
  %9 = icmp eq i64 %n, 0, !dbg !3145
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3145

divbyzero.next:                                   ; preds = %for.done
  %10 = add i64 %.lcssa, 1, !dbg !3146
  %11 = icmp eq i64 %n, -1, !dbg !3145
  %12 = icmp eq i64 %10, -9223372036854775808, !dbg !3145
  %13 = and i1 %11, %12, !dbg !3145
  %14 = select i1 %13, i64 1, i64 %n, !dbg !3145
  %15 = srem i64 %10, %14, !dbg !3145
    #dbg_value(i64 %15, !3126, !DIExpression(), !3147)
    #dbg_value(i64 %.lcssa, !3125, !DIExpression(), !3148)
    #dbg_value(i64 %.lcssa, !3127, !DIExpression(), !3149)
  %.not52630.not = icmp eq i64 %15, %.lcssa, !dbg !3150
  br i1 %.not52630.not, label %common.ret, label %for.body2.lr.ph.lr.ph, !dbg !3131

for.body2.lr.ph.lr.ph:                            ; preds = %divbyzero.next
  %16 = add i64 %n, -1
  br label %for.body2.lr.ph, !dbg !3131

for.body2.lr.ph:                                  ; preds = %for.body2.lr.ph.lr.ph, %divbyzero.next27
  %.ph1732 = phi i64 [ %.lcssa, %for.body2.lr.ph.lr.ph ], [ %18, %divbyzero.next27 ]
  %.ph31 = phi i64 [ %15, %for.body2.lr.ph.lr.ph ], [ %29, %divbyzero.next27 ]
    #dbg_value(i64 %.ph1732, !3127, !DIExpression(), !3151)
    #dbg_value(i64 %.ph31, !3126, !DIExpression(), !3152)
  %.not6 = icmp ult i64 %.ph31, %arr.len
  %17 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph31
  br i1 %.not6, label %for.body2, label %lookup.throw12, !dbg !3153

for.body2:                                        ; preds = %for.body2.lr.ph, %divbyzero.next29
  %18 = phi i64 [ %34, %divbyzero.next29 ], [ %.ph1732, %for.body2.lr.ph ]
    #dbg_value(i64 %18, !3127, !DIExpression(), !3151)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3154)
    #dbg_value(i64 %.ph31, !3126, !DIExpression(), !3155)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3156)
    #dbg_value(i64 %18, !3127, !DIExpression(), !3157)
  %.not7 = icmp ult i64 %18, %arr.len, !dbg !3158
  br i1 %.not7, label %lookup.next17, label %lookup.throw16, !dbg !3158

lookup.next17:                                    ; preds = %for.body2
  %19 = load i64, ptr %17, align 8, !dbg !3153
  %20 = getelementptr inbounds i64, ptr %arr.data, i64 %18, !dbg !3158
  %21 = load i64, ptr %20, align 8, !dbg !3158
  %22 = add i64 %21, %19, !dbg !3159
    #dbg_value(i64 %x, !3124, !DIExpression(), !3160)
  %23 = icmp eq i64 %22, %x, !dbg !3161
  br i1 %23, label %common.ret, label %lookup.next25, !dbg !3131

common.ret:                                       ; preds = %divbyzero.next27, %lookup.next17, %divbyzero.next29, %divbyzero.next
  %.not5.lcssa = phi i1 [ false, %divbyzero.next ], [ false, %divbyzero.next29 ], [ true, %lookup.next17 ], [ false, %divbyzero.next27 ], !dbg !3150
  ret i1 %.not5.lcssa, !dbg !3131

lookup.next25:                                    ; preds = %lookup.next17
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3162)
    #dbg_value(i64 %.ph31, !3126, !DIExpression(), !3163)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3164)
    #dbg_value(i64 %18, !3127, !DIExpression(), !3165)
    #dbg_value(i64 %x, !3124, !DIExpression(), !3166)
  %24 = icmp slt i64 %22, %x, !dbg !3167
  br i1 %24, label %divbyzero.next27, label %divbyzero.next29, !dbg !3131

divbyzero.next27:                                 ; preds = %lookup.next25
    #dbg_value(i64 %.ph31, !3126, !DIExpression(), !3168)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3169)
  %25 = add nuw i64 %.ph31, 1, !dbg !3170
  %26 = icmp eq i64 %25, -9223372036854775808, !dbg !3171
  %27 = and i1 %11, %26, !dbg !3171
  %28 = select i1 %27, i64 1, i64 %n, !dbg !3171
  %29 = srem i64 %25, %28, !dbg !3171
    #dbg_value(i64 %29, !3126, !DIExpression(), !3152)
    #dbg_value(i64 %18, !3127, !DIExpression(), !3151)
  %.not526.not = icmp eq i64 %29, %18, !dbg !3150
  br i1 %.not526.not, label %common.ret, label %for.body2.lr.ph, !dbg !3131

divbyzero.next29:                                 ; preds = %lookup.next25
    #dbg_value(i64 %18, !3127, !DIExpression(), !3172)
    #dbg_value(i64 %n, !3123, !DIExpression(), !3173)
  %30 = add i64 %16, %18, !dbg !3174
  %31 = icmp eq i64 %30, -9223372036854775808, !dbg !3175
  %32 = and i1 %11, %31, !dbg !3175
  %33 = select i1 %32, i64 1, i64 %n, !dbg !3175
  %34 = srem i64 %30, %33, !dbg !3175
    #dbg_value(i64 %.ph31, !3126, !DIExpression(), !3152)
    #dbg_value(i64 %34, !3127, !DIExpression(), !3151)
  %.not5.not = icmp eq i64 %.ph31, %34, !dbg !3150
  br i1 %.not5.not, label %common.ret, label %for.body2, !dbg !3131

lookup.throw:                                     ; preds = %for.body
  call fastcc void @runtime.lookupPanic(), !dbg !3137
  unreachable, !dbg !3137

lookup.throw8:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3140
  unreachable, !dbg !3140

divbyzero.throw:                                  ; preds = %for.done
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3145
  unreachable, !dbg !3145

lookup.throw12:                                   ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3153
  unreachable, !dbg !3153

lookup.throw16:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3158
  unreachable, !dbg !3158
}
