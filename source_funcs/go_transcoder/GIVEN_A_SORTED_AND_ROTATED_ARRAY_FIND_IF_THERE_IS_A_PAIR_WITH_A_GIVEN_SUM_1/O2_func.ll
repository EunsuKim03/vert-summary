define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %arr.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3045)
    #dbg_value(i64 %arr.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3045)
    #dbg_value(i64 %arr.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3045)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3045)
    #dbg_value(i64 %x, !3040, !DIExpression(), !3045)
    #dbg_value(i64 0, !3041, !DIExpression(), !3046)
  %0 = add i64 %n, -1
  %smax = call i64 @llvm.smax.i64(i64 %0, i64 0), !dbg !3047
  %1 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !3047
  br label %for.loop, !dbg !3047

for.loop:                                         ; preds = %lookup.next11, %entry
  %2 = phi i64 [ 0, %entry ], [ %3, %lookup.next11 ], !dbg !3048
    #dbg_value(i64 %2, !3041, !DIExpression(), !3049)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3050)
  %exitcond.not = icmp eq i64 %2, %smax, !dbg !3051
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3047

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3052)
    #dbg_value(i64 %2, !3041, !DIExpression(), !3053)
  %exitcond62.not = icmp eq i64 %2, %arr.len, !dbg !3054
  br i1 %exitcond62.not, label %lookup.throw, label %lookup.next, !dbg !3054

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3055)
    #dbg_value(i64 %2, !3041, !DIExpression(), !3056)
  %exitcond63.not = icmp eq i64 %2, %1, !dbg !3057
  br i1 %exitcond63.not, label %lookup.throw10, label %lookup.next11, !dbg !3057

lookup.next11:                                    ; preds = %lookup.next
  %3 = add nuw i64 %2, 1, !dbg !3058
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3054
  %5 = load i64, ptr %4, align 8, !dbg !3054
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3057
  %7 = load i64, ptr %6, align 8, !dbg !3057
  %8 = icmp sgt i64 %5, %7, !dbg !3059
  br i1 %8, label %for.done, label %for.loop, !dbg !3047

for.done:                                         ; preds = %lookup.next11, %for.loop
  %.lcssa59 = phi i64 [ %2, %lookup.next11 ], [ %smax, %for.loop ], !dbg !3048
    #dbg_value(i64 %.lcssa59, !3041, !DIExpression(), !3060)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3061)
  %9 = icmp eq i64 %n, 0, !dbg !3062
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3062

divbyzero.next:                                   ; preds = %for.done
  %10 = add nuw i64 %.lcssa59, 1, !dbg !3063
  %11 = icmp eq i64 %n, -1, !dbg !3062
  %12 = icmp eq i64 %10, -9223372036854775808, !dbg !3062
  %13 = and i1 %11, %12, !dbg !3062
  %14 = select i1 %13, i64 1, i64 %n, !dbg !3062
  %15 = srem i64 %10, %14, !dbg !3062
    #dbg_value(i64 %15, !3042, !DIExpression(), !3064)
    #dbg_value(i64 %.lcssa59, !3041, !DIExpression(), !3065)
    #dbg_value(i64 %.lcssa59, !3043, !DIExpression(), !3066)
    #dbg_value(i64 0, !3044, !DIExpression(), !3067)
  %.not5343641 = icmp eq i64 %15, %.lcssa59, !dbg !3068
  br i1 %.not5343641, label %common.ret, label %for.body2.lr.ph.lr.ph, !dbg !3047

for.body2.lr.ph.lr.ph:                            ; preds = %divbyzero.next, %divbyzero.next25
  %.ph19.ph44 = phi i64 [ %23, %divbyzero.next25 ], [ 0, %divbyzero.next ]
  %.ph18.ph43 = phi i64 [ %28, %divbyzero.next25 ], [ %.lcssa59, %divbyzero.next ]
  %.ph.ph42 = phi i64 [ %34, %divbyzero.next25 ], [ %15, %divbyzero.next ]
    #dbg_value(i64 %.ph18.ph43, !3043, !DIExpression(), !3069)
    #dbg_value(i64 %.ph.ph42, !3042, !DIExpression(), !3070)
  br label %for.body2.lr.ph, !dbg !3047

for.body2.lr.ph:                                  ; preds = %for.body2.lr.ph.lr.ph, %divbyzero.next35
  %.ph1838 = phi i64 [ %.ph18.ph43, %for.body2.lr.ph.lr.ph ], [ %17, %divbyzero.next35 ]
  %.ph37 = phi i64 [ %.ph.ph42, %for.body2.lr.ph.lr.ph ], [ %40, %divbyzero.next35 ]
    #dbg_value(i64 %.ph1838, !3043, !DIExpression(), !3069)
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3070)
  %.not6 = icmp ult i64 %.ph37, %arr.len
  %16 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph37
  br i1 %.not6, label %for.body2, label %lookup.throw14, !dbg !3071

for.body2:                                        ; preds = %for.body2.lr.ph, %divbyzero.next37
  %17 = phi i64 [ %45, %divbyzero.next37 ], [ %.ph1838, %for.body2.lr.ph ]
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3072)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3073)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3074)
  %.not7 = icmp ult i64 %17, %arr.len, !dbg !3075
  br i1 %.not7, label %lookup.next19, label %lookup.throw18, !dbg !3075

lookup.next19:                                    ; preds = %for.body2
  %18 = load i64, ptr %16, align 8, !dbg !3071
  %19 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3075
  %20 = load i64, ptr %19, align 8, !dbg !3075
  %21 = add i64 %20, %18, !dbg !3076
    #dbg_value(i64 %x, !3040, !DIExpression(), !3077)
  %22 = icmp eq i64 %21, %x, !dbg !3078
  br i1 %22, label %if.then, label %lookup.next33, !dbg !3047

if.then:                                          ; preds = %lookup.next19
  %23 = add i64 %.ph19.ph44, 1, !dbg !3079
    #dbg_value(i64 %23, !3044, !DIExpression(), !3079)
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3080)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3081)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3082)
  %24 = add i64 %0, %17, !dbg !3083
  %25 = icmp eq i64 %24, -9223372036854775808, !dbg !3084
  %26 = and i1 %11, %25, !dbg !3084
  %27 = select i1 %26, i64 1, i64 %n, !dbg !3084
  %28 = srem i64 %24, %27, !dbg !3084
  %29 = icmp eq i64 %.ph37, %28, !dbg !3085
  br i1 %29, label %common.ret, label %divbyzero.next25, !dbg !3047

common.ret:                                       ; preds = %if.then, %divbyzero.next25, %divbyzero.next35, %divbyzero.next37, %divbyzero.next
  %common.ret.op = phi i64 [ 0, %divbyzero.next ], [ %.ph19.ph44, %divbyzero.next37 ], [ %.ph19.ph44, %divbyzero.next35 ], [ %23, %divbyzero.next25 ], [ %23, %if.then ]
  ret i64 %common.ret.op, !dbg !3047

divbyzero.next25:                                 ; preds = %if.then
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3086)
    #dbg_value(i64 poison, !3043, !DIExpression(), !3087)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3088)
  %30 = add nuw i64 %.ph37, 1, !dbg !3089
  %31 = icmp eq i64 %30, -9223372036854775808, !dbg !3090
  %32 = and i1 %11, %31, !dbg !3090
  %33 = select i1 %32, i64 1, i64 %n, !dbg !3090
    #dbg_value(!DIArgList(i64 %30, i64 %33), !3042, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value), !3086)
  %34 = srem i64 %30, %33, !dbg !3090
    #dbg_value(i64 %34, !3042, !DIExpression(), !3070)
    #dbg_value(i64 %28, !3043, !DIExpression(), !3069)
  %.not53436 = icmp eq i64 %34, %28, !dbg !3068
  br i1 %.not53436, label %common.ret, label %for.body2.lr.ph.lr.ph, !dbg !3047

lookup.next33:                                    ; preds = %lookup.next19
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3091)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3092)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3093)
    #dbg_value(i64 %x, !3040, !DIExpression(), !3094)
  %35 = icmp slt i64 %21, %x, !dbg !3095
  br i1 %35, label %divbyzero.next35, label %divbyzero.next37, !dbg !3047

divbyzero.next35:                                 ; preds = %lookup.next33
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3096)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3097)
  %36 = add nuw i64 %.ph37, 1, !dbg !3098
  %37 = icmp eq i64 %36, -9223372036854775808, !dbg !3099
  %38 = and i1 %11, %37, !dbg !3099
  %39 = select i1 %38, i64 1, i64 %n, !dbg !3099
  %40 = srem i64 %36, %39, !dbg !3099
    #dbg_value(i64 %40, !3042, !DIExpression(), !3070)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3069)
  %.not534 = icmp eq i64 %40, %17, !dbg !3068
  br i1 %.not534, label %common.ret, label %for.body2.lr.ph, !dbg !3047

divbyzero.next37:                                 ; preds = %lookup.next33
    #dbg_value(i64 %17, !3043, !DIExpression(), !3100)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3101)
  %41 = add i64 %0, %17, !dbg !3102
  %42 = icmp eq i64 %41, -9223372036854775808, !dbg !3103
  %43 = and i1 %11, %42, !dbg !3103
  %44 = select i1 %43, i64 1, i64 %n, !dbg !3103
  %45 = srem i64 %41, %44, !dbg !3103
    #dbg_value(i64 %.ph37, !3042, !DIExpression(), !3070)
    #dbg_value(i64 %45, !3043, !DIExpression(), !3069)
  %.not5 = icmp eq i64 %.ph37, %45, !dbg !3068
  br i1 %.not5, label %common.ret, label %for.body2, !dbg !3047

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3054
  unreachable, !dbg !3054

lookup.throw10:                                   ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3057
  unreachable, !dbg !3057

divbyzero.throw:                                  ; preds = %for.done
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3062
  unreachable, !dbg !3062

lookup.throw14:                                   ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3071
  unreachable, !dbg !3071

lookup.throw18:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3075
  unreachable, !dbg !3075
}
