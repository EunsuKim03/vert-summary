define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %arr.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3044)
    #dbg_value(i64 %arr.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3044)
    #dbg_value(i64 %arr.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3044)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3044)
    #dbg_value(i64 %x, !3040, !DIExpression(), !3044)
    #dbg_value(i64 0, !3041, !DIExpression(), !3045)
  %0 = add i64 %n, -1
  %smax = call i64 @llvm.smax.i64(i64 %0, i64 0), !dbg !3046
  %1 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 1), !dbg !3046
  br label %for.loop, !dbg !3046

for.loop:                                         ; preds = %lookup.next9, %entry
  %2 = phi i64 [ 0, %entry ], [ %3, %lookup.next9 ], !dbg !3047
    #dbg_value(i64 %2, !3041, !DIExpression(), !3048)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %2, %smax, !dbg !3050
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3046

for.body:                                         ; preds = %for.loop
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3051)
    #dbg_value(i64 %2, !3041, !DIExpression(), !3052)
  %exitcond40.not = icmp eq i64 %2, %arr.len, !dbg !3053
  br i1 %exitcond40.not, label %lookup.throw, label %lookup.next, !dbg !3053

lookup.next:                                      ; preds = %for.body
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3054)
    #dbg_value(i64 %2, !3041, !DIExpression(), !3055)
  %exitcond41.not = icmp eq i64 %2, %1, !dbg !3056
  br i1 %exitcond41.not, label %lookup.throw8, label %lookup.next9, !dbg !3056

lookup.next9:                                     ; preds = %lookup.next
  %3 = add nuw i64 %2, 1, !dbg !3057
  %4 = getelementptr inbounds i64, ptr %arr.data, i64 %2, !dbg !3053
  %5 = load i64, ptr %4, align 8, !dbg !3053
  %6 = getelementptr inbounds i64, ptr %arr.data, i64 %3, !dbg !3056
  %7 = load i64, ptr %6, align 8, !dbg !3056
  %8 = icmp sgt i64 %5, %7, !dbg !3058
  br i1 %8, label %for.done, label %for.loop, !dbg !3046

for.done:                                         ; preds = %lookup.next9, %for.loop
  %.lcssa = phi i64 [ %2, %lookup.next9 ], [ %smax, %for.loop ], !dbg !3047
    #dbg_value(i64 %.lcssa, !3041, !DIExpression(), !3059)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3060)
  %9 = icmp eq i64 %n, 0, !dbg !3061
  br i1 %9, label %divbyzero.throw, label %divbyzero.next, !dbg !3061

divbyzero.next:                                   ; preds = %for.done
  %10 = add nuw i64 %.lcssa, 1, !dbg !3062
  %11 = icmp eq i64 %n, -1, !dbg !3061
  %12 = icmp eq i64 %10, -9223372036854775808, !dbg !3061
  %13 = and i1 %11, %12, !dbg !3061
  %14 = select i1 %13, i64 1, i64 %n, !dbg !3061
  %15 = srem i64 %10, %14, !dbg !3061
    #dbg_value(i64 %15, !3042, !DIExpression(), !3063)
    #dbg_value(i64 %.lcssa, !3041, !DIExpression(), !3064)
    #dbg_value(i64 %.lcssa, !3043, !DIExpression(), !3065)
  %.not52630.not = icmp eq i64 %15, %.lcssa, !dbg !3066
  br i1 %.not52630.not, label %common.ret, label %for.body2.lr.ph, !dbg !3046

for.body2.lr.ph:                                  ; preds = %divbyzero.next, %divbyzero.next27
  %.ph1732 = phi i64 [ %17, %divbyzero.next27 ], [ %.lcssa, %divbyzero.next ]
  %.ph31 = phi i64 [ %28, %divbyzero.next27 ], [ %15, %divbyzero.next ]
    #dbg_value(i64 %.ph1732, !3043, !DIExpression(), !3067)
    #dbg_value(i64 %.ph31, !3042, !DIExpression(), !3068)
  %.not6 = icmp ult i64 %.ph31, %arr.len
  %16 = getelementptr inbounds i64, ptr %arr.data, i64 %.ph31
  br i1 %.not6, label %for.body2, label %lookup.throw12, !dbg !3069

for.body2:                                        ; preds = %for.body2.lr.ph, %divbyzero.next29
  %17 = phi i64 [ %33, %divbyzero.next29 ], [ %.ph1732, %for.body2.lr.ph ]
    #dbg_value(i64 %.ph31, !3042, !DIExpression(), !3070)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3071)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3072)
  %.not7 = icmp ult i64 %17, %arr.len, !dbg !3073
  br i1 %.not7, label %lookup.next17, label %lookup.throw16, !dbg !3073

lookup.next17:                                    ; preds = %for.body2
  %18 = load i64, ptr %16, align 8, !dbg !3069
  %19 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3073
  %20 = load i64, ptr %19, align 8, !dbg !3073
  %21 = add i64 %20, %18, !dbg !3074
    #dbg_value(i64 %x, !3040, !DIExpression(), !3075)
  %22 = icmp eq i64 %21, %x, !dbg !3076
  br i1 %22, label %common.ret, label %lookup.next25, !dbg !3046

common.ret:                                       ; preds = %divbyzero.next27, %lookup.next17, %divbyzero.next29, %divbyzero.next
  %.not5.lcssa = phi i1 [ false, %divbyzero.next ], [ true, %lookup.next17 ], [ false, %divbyzero.next29 ], [ false, %divbyzero.next27 ], !dbg !3066
  ret i1 %.not5.lcssa, !dbg !3046

lookup.next25:                                    ; preds = %lookup.next17
    #dbg_value(i64 %.ph31, !3042, !DIExpression(), !3077)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3078)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3079)
    #dbg_value(i64 %x, !3040, !DIExpression(), !3080)
  %23 = icmp slt i64 %21, %x, !dbg !3081
  br i1 %23, label %divbyzero.next27, label %divbyzero.next29, !dbg !3046

divbyzero.next27:                                 ; preds = %lookup.next25
    #dbg_value(i64 %.ph31, !3042, !DIExpression(), !3082)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3083)
  %24 = add nuw i64 %.ph31, 1, !dbg !3084
  %25 = icmp eq i64 %24, -9223372036854775808, !dbg !3085
  %26 = and i1 %11, %25, !dbg !3085
  %27 = select i1 %26, i64 1, i64 %n, !dbg !3085
  %28 = srem i64 %24, %27, !dbg !3085
    #dbg_value(i64 %28, !3042, !DIExpression(), !3068)
    #dbg_value(i64 %17, !3043, !DIExpression(), !3067)
  %.not526.not = icmp eq i64 %28, %17, !dbg !3066
  br i1 %.not526.not, label %common.ret, label %for.body2.lr.ph, !dbg !3046

divbyzero.next29:                                 ; preds = %lookup.next25
    #dbg_value(i64 %17, !3043, !DIExpression(), !3086)
    #dbg_value(i64 %n, !3039, !DIExpression(), !3087)
  %29 = add i64 %0, %17, !dbg !3088
  %30 = icmp eq i64 %29, -9223372036854775808, !dbg !3089
  %31 = and i1 %11, %30, !dbg !3089
  %32 = select i1 %31, i64 1, i64 %n, !dbg !3089
  %33 = srem i64 %29, %32, !dbg !3089
    #dbg_value(i64 %.ph31, !3042, !DIExpression(), !3068)
    #dbg_value(i64 %33, !3043, !DIExpression(), !3067)
  %.not5.not = icmp eq i64 %.ph31, %33, !dbg !3066
  br i1 %.not5.not, label %common.ret, label %for.body2, !dbg !3046

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw8:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056

divbyzero.throw:                                  ; preds = %for.done
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3061
  unreachable, !dbg !3061

lookup.throw12:                                   ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3069
  unreachable, !dbg !3069

lookup.throw16:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3073
  unreachable, !dbg !3073
}
