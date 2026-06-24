define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3043)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3043)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3043)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3043)
    #dbg_value(i64 0, !3036, !DIExpression(), !3044)
    #dbg_value(i64 0, !3037, !DIExpression(), !3045)
  %0 = icmp sgt i64 %n, 0, !dbg !3046
  br i1 %0, label %for.body.preheader, label %for.done6, !dbg !3047

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %n, -1, !dbg !3048
  %.not.not = icmp ugt i64 %arr.len, %1, !dbg !3048
  br i1 %.not.not, label %for.body, label %lookup.throw, !dbg !3048

for.loop1.preheader:                              ; preds = %for.body
    #dbg_value(i64 0, !3039, !DIExpression(), !3049)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  br label %for.body2.preheader, !dbg !3047

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %2 = add nsw i64 %n, -1, !dbg !3051
  %.not.not29 = icmp ugt i64 %arr.len, %2, !dbg !3051
  br i1 %.not.not29, label %for.body2, label %lookup.throw9, !dbg !3051

for.body:                                         ; preds = %for.body.preheader, %for.body
  %3 = phi i64 [ %8, %for.body ], [ 0, %for.body.preheader ]
  %4 = phi i64 [ %7, %for.body ], [ 0, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %3, !3037, !DIExpression(), !3053)
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %3, !dbg !3048
  %6 = load i64, ptr %5, align 8, !dbg !3048
  %7 = add i64 %6, %4, !dbg !3054
    #dbg_value(i64 %7, !3036, !DIExpression(), !3054)
  %8 = add nuw nsw i64 %3, 1, !dbg !3055
    #dbg_value(i64 %8, !3037, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %exitcond.not = icmp eq i64 %8, %n, !dbg !3046
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3047

for.loop4.preheader:                              ; preds = %for.body2
    #dbg_value(i64 1, !3041, !DIExpression(), !3058)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3059)
  %.not = icmp eq i64 %n, 1, !dbg !3060
  br i1 %.not, label %for.done6, label %for.body5.lr.ph, !dbg !3047

for.body5.lr.ph:                                  ; preds = %for.loop4.preheader
  %9 = add nsw i64 %n, -1
  %10 = add nsw i64 %n, -2, !dbg !3047
  %.not.not30 = icmp ugt i64 %arr.len, %10, !dbg !3047
  br i1 %.not.not30, label %for.body5.lr.ph.split, label %lookup.throw13, !dbg !3061

for.body5.lr.ph.split:                            ; preds = %for.body5.lr.ph
  %invariant.gep = getelementptr i8, ptr %arr.data, i64 -8, !dbg !3047
  br label %for.body5, !dbg !3047

for.body2:                                        ; preds = %for.body2.preheader, %for.body2
  %11 = phi i64 [ %17, %for.body2 ], [ 0, %for.body2.preheader ]
  %12 = phi i64 [ %16, %for.body2 ], [ 0, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3062)
    #dbg_value(i64 %11, !3039, !DIExpression(), !3063)
  %13 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %11, !dbg !3051
  %14 = load i64, ptr %13, align 8, !dbg !3051
  %15 = mul i64 %14, %11, !dbg !3064
  %16 = add i64 %15, %12, !dbg !3065
    #dbg_value(i64 %16, !3038, !DIExpression(), !3065)
  %17 = add nuw nsw i64 %11, 1, !dbg !3066
    #dbg_value(i64 %17, !3039, !DIExpression(), !3049)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3050)
  %exitcond26.not = icmp eq i64 %17, %n, !dbg !3067
  br i1 %exitcond26.not, label %for.loop4.preheader, label %for.body2, !dbg !3047

for.body5:                                        ; preds = %for.body5.lr.ph.split, %for.body5
  %18 = phi i64 [ 1, %for.body5.lr.ph.split ], [ %25, %for.body5 ]
  %19 = phi i64 [ %16, %for.body5.lr.ph.split ], [ %x.y.i, %for.body5 ]
  %20 = phi i64 [ %16, %for.body5.lr.ph.split ], [ %24, %for.body5 ]
    #dbg_value(i64 %20, !3038, !DIExpression(), !3068)
    #dbg_value(i64 %7, !3036, !DIExpression(), !3069)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3070)
    #dbg_value(i64 %18, !3041, !DIExpression(), !3071)
  %gep = getelementptr i64, ptr %invariant.gep, i64 %18, !dbg !3061
  %21 = load i64, ptr %gep, align 8, !dbg !3061
    #dbg_value(i64 %n, !3035, !DIExpression(), !3072)
  %22 = mul i64 %21, %9, !dbg !3073
  %.neg = sub i64 %20, %7, !dbg !3074
  %23 = add i64 %.neg, %21, !dbg !3075
  %24 = add i64 %23, %22, !dbg !3076
    #dbg_value(i64 %24, !3038, !DIExpression(), !3077)
    #dbg_value(i64 %19, !3040, !DIExpression(), !3078)
    #dbg_value(i64 %24, !3042, !DIExpression(), !3079)
    #dbg_value(i64 %19, !3080, !DIExpression(), !3086)
    #dbg_value(i64 %24, !3085, !DIExpression(), !3088)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %19, i64 %24), !dbg !3089
    #dbg_value(i64 %x.y.i, !3040, !DIExpression(), !3090)
  %25 = add nuw nsw i64 %18, 1, !dbg !3091
    #dbg_value(i64 %25, !3041, !DIExpression(), !3058)
  %exitcond28.not = icmp eq i64 %25, %n, !dbg !3060
  br i1 %exitcond28.not, label %for.done6, label %for.body5, !dbg !3047

for.done6:                                        ; preds = %for.body5, %entry, %for.loop4.preheader
  %.lcssa = phi i64 [ %16, %for.loop4.preheader ], [ 0, %entry ], [ %x.y.i, %for.body5 ], !dbg !3092
    #dbg_value(i64 %.lcssa, !3040, !DIExpression(), !3093)
  ret i64 %.lcssa, !dbg !3094

lookup.throw:                                     ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048

lookup.throw9:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051

lookup.throw13:                                   ; preds = %for.body5.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3061
  unreachable, !dbg !3061
}
