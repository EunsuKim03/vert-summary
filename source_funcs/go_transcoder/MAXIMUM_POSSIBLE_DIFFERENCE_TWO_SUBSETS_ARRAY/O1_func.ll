define i64 @f_gold(ptr nocapture %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #1 !dbg !3227 {
entry:
    #dbg_value(ptr %arr.data, !3236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3243)
    #dbg_value(i64 %arr.len, !3236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3243)
    #dbg_value(i64 %arr.cap, !3236, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3243)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3243)
  %arr = call fastcc align 8 dereferenceable(24) ptr @runtime.alloc(i64 24, ptr nonnull inttoptr (i64 135 to ptr)), !dbg !3244
  store ptr %arr.data, ptr %arr, align 8, !dbg !3244
  %arr.repack3 = getelementptr inbounds nuw i8, ptr %arr, i64 8, !dbg !3244
  store i64 %arr.len, ptr %arr.repack3, align 8, !dbg !3244
  %arr.repack5 = getelementptr inbounds nuw i8, ptr %arr, i64 16, !dbg !3244
  store i64 %arr.cap, ptr %arr.repack5, align 8, !dbg !3244
    #dbg_value(i64 0, !3238, !DIExpression(), !3245)
    #dbg_value(i64 0, !3239, !DIExpression(), !3246)
    #dbg_value(i64 0, !3240, !DIExpression(), !3247)
  %0 = add i64 %n, -1
    #dbg_value(i64 0, !3240, !DIExpression(), !3248)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3249)
  %.not72 = icmp slt i64 %0, 0, !dbg !3250
  br i1 %.not72, label %for.done6, label %for.body.lr.ph, !dbg !3251

for.body.lr.ph:                                   ; preds = %entry
  %.unpack9 = load i64, ptr %arr.repack3, align 8
  %.unpack = load ptr, ptr %arr, align 8
  br label %for.body, !dbg !3251

for.body:                                         ; preds = %for.body.lr.ph, %if.done5
  %1 = phi i64 [ 0, %for.body.lr.ph ], [ %4, %if.done5 ]
  %2 = phi i64 [ 0, %for.body.lr.ph ], [ %18, %if.done5 ]
  %3 = phi i64 [ 0, %for.body.lr.ph ], [ %17, %if.done5 ]
    #dbg_value(i64 %1, !3240, !DIExpression(), !3248)
    #dbg_value(i1 true, !3241, !DIExpression(), !3252)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3253)
  %4 = add i64 %1, 1, !dbg !3254
    #dbg_value(i64 %4, !3242, !DIExpression(), !3255)
  %.not771 = icmp sgt i64 %4, %0, !dbg !3256
  br i1 %.not771, label %if.then3, label %for.body2.lr.ph, !dbg !3251

for.body2.lr.ph:                                  ; preds = %for.body
  %.not12 = icmp ult i64 %1, %.unpack9
  %5 = getelementptr inbounds i64, ptr %.unpack, i64 %1
  br i1 %.not12, label %for.body2, label %lookup.throw, !dbg !3257

for.body2:                                        ; preds = %for.body2.lr.ph, %deref.next18
  %6 = phi i64 [ %11, %deref.next18 ], [ %4, %for.body2.lr.ph ]
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3258)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3259)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3260)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3260)
    #dbg_value(i64 %6, !3242, !DIExpression(), !3261)
  %exitcond.not = icmp eq i64 %6, %.unpack9, !dbg !3262
  br i1 %exitcond.not, label %lookup.throw11, label %lookup.next12, !dbg !3262

lookup.next12:                                    ; preds = %for.body2
  %7 = load i64, ptr %5, align 8, !dbg !3257
  %8 = getelementptr inbounds i64, ptr %.unpack, i64 %6, !dbg !3262
  %9 = load i64, ptr %8, align 8, !dbg !3262
  %10 = icmp eq i64 %7, %9, !dbg !3263
  br i1 %10, label %if.then, label %deref.next18, !dbg !3251

if.then:                                          ; preds = %lookup.next12
    #dbg_value(i1 false, !3241, !DIExpression(), !3264)
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3265)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3266)
    #dbg_value({ ptr, i64, i64 } poison, !3267, !DIExpression(), !3272)
    #dbg_value(i64 poison, !3270, !DIExpression(), !3274)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !3271, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3275)
    #dbg_value({ ptr, i64, i64 } poison, !3267, !DIExpression(), !3276)
    #dbg_value(i64 poison, !3270, !DIExpression(), !3277)
    #dbg_value(!DIArgList(ptr %.unpack, i64 poison), !3271, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !3275)
    #dbg_value(ptr %8, !3271, !DIExpression(), !3275)
  store i64 0, ptr %8, align 8, !dbg !3278
    #dbg_value(ptr %8, !3271, !DIExpression(), !3279)
  store i64 0, ptr %5, align 8, !dbg !3280
    #dbg_value(i1 poison, !3241, !DIExpression(), !3281)
  br label %if.done5, !dbg !3251

deref.next18:                                     ; preds = %lookup.next12
  %11 = add i64 %6, 1, !dbg !3282
    #dbg_value(i64 %11, !3242, !DIExpression(), !3282)
    #dbg_value(i64 %11, !3242, !DIExpression(), !3283)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3284)
  %.not7 = icmp sgt i64 %11, %0, !dbg !3256
  br i1 %.not7, label %if.then3, label %for.body2, !dbg !3251

if.then3:                                         ; preds = %deref.next18, %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3285)
    #dbg_value(i64 %1, !3240, !DIExpression(), !3286)
  %.not30 = icmp ult i64 %1, %.unpack9, !dbg !3287
  br i1 %.not30, label %lookup.next23, label %lookup.throw22, !dbg !3287

lookup.next23:                                    ; preds = %if.then3
  %12 = getelementptr inbounds i64, ptr %.unpack, i64 %1, !dbg !3287
  %13 = load i64, ptr %12, align 8, !dbg !3287
  %14 = icmp sgt i64 %13, 0, !dbg !3288
  br i1 %14, label %lookup.next27, label %lookup.next31, !dbg !3251

lookup.next27:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3289)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3290)
  %15 = add i64 %13, %3, !dbg !3291
    #dbg_value(i64 %15, !3238, !DIExpression(), !3291)
  br label %if.done5, !dbg !3251

lookup.next31:                                    ; preds = %lookup.next23
    #dbg_value({ ptr, i64, i64 } poison, !3236, !DIExpression(), !3292)
    #dbg_value(i64 poison, !3240, !DIExpression(), !3293)
  %16 = add i64 %13, %2, !dbg !3294
    #dbg_value(i64 %16, !3239, !DIExpression(), !3294)
  br label %if.done5, !dbg !3251

if.done5:                                         ; preds = %if.then, %lookup.next31, %lookup.next27
  %17 = phi i64 [ %3, %if.then ], [ %15, %lookup.next27 ], [ %3, %lookup.next31 ], !dbg !3245
  %18 = phi i64 [ %2, %if.then ], [ %2, %lookup.next27 ], [ %16, %lookup.next31 ], !dbg !3246
    #dbg_value(i64 %4, !3240, !DIExpression(), !3248)
    #dbg_value(i64 %n, !3237, !DIExpression(), !3249)
  %.not = icmp sgt i64 %4, %0, !dbg !3250
  br i1 %.not, label %for.done6.loopexit, label %for.body, !dbg !3251

for.done6.loopexit:                               ; preds = %if.done5
  %19 = sub i64 %17, %18, !dbg !3295
  %20 = sitofp i64 %19 to double, !dbg !3296
  br label %for.done6, !dbg !3295

for.done6:                                        ; preds = %for.done6.loopexit, %entry
  %21 = phi double [ 0.000000e+00, %entry ], [ %20, %for.done6.loopexit ], !dbg !3295
    #dbg_value(i64 poison, !3238, !DIExpression(), !3297)
    #dbg_value(i64 poison, !3239, !DIExpression(), !3298)
    #dbg_value(double %21, !3299, !DIExpression(), !3305)
    #dbg_value(double %21, !3299, !DIExpression(), !3307)
  %22 = call double @llvm.fabs.f64(double %21), !dbg !3308
  %belowmax = fcmp ole double %22, 0x43DFFFFFFFFFFFFE, !dbg !3309
  %normal = fptosi double %22 to i64, !dbg !3309
  %23 = select i1 %belowmax, i64 %normal, i64 9223372036854775807, !dbg !3309
  ret i64 %23, !dbg !3310

lookup.throw:                                     ; preds = %for.body2.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3257
  unreachable, !dbg !3257

lookup.throw11:                                   ; preds = %for.body2
  call fastcc void @runtime.lookupPanic(), !dbg !3262
  unreachable, !dbg !3262

lookup.throw22:                                   ; preds = %if.then3
  call fastcc void @runtime.lookupPanic(), !dbg !3287
  unreachable, !dbg !3287
}
