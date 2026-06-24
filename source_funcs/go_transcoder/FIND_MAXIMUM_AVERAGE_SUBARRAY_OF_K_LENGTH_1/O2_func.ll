define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3043)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3043)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3043)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3045)
  %0 = icmp sgt i64 %k, %n, !dbg !3046
  br i1 %0, label %common.ret, label %if.done, !dbg !3047

common.ret:                                       ; preds = %entry, %for.done5
  %common.ret.op = phi i64 [ %29, %for.done5 ], [ -1, %entry ]
  ret i64 %common.ret.op, !dbg !3047

if.done:                                          ; preds = %entry
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3048)
  %1 = icmp eq i64 %arr.len, 0, !dbg !3049
  br i1 %1, label %lookup.throw, label %lookup.next, !dbg !3049

lookup.next:                                      ; preds = %if.done
  %2 = load i64, ptr %arr.data, align 8, !dbg !3049
    #dbg_value(i64 %2, !3037, !DIExpression(), !3050)
    #dbg_value(i64 1, !3038, !DIExpression(), !3051)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3052)
  %3 = icmp sgt i64 %k, 1, !dbg !3053
  br i1 %3, label %for.body.preheader, label %for.done, !dbg !3047

for.body.preheader:                               ; preds = %lookup.next
  %4 = add i64 %arr.len, -1, !dbg !3054
  %5 = add nsw i64 %k, -2, !dbg !3054
  %.not.not = icmp ugt i64 %4, %5, !dbg !3054
  br i1 %.not.not, label %for.body, label %lookup.throw8, !dbg !3054

for.body:                                         ; preds = %for.body.preheader, %for.body
  %6 = phi i64 [ %11, %for.body ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %10, %for.body ], [ %2, %for.body.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3055)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3056)
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !3054
  %9 = load i64, ptr %8, align 8, !dbg !3054
  %10 = add i64 %9, %7, !dbg !3057
    #dbg_value(i64 %10, !3037, !DIExpression(), !3057)
  %11 = add nuw nsw i64 %6, 1, !dbg !3058
    #dbg_value(i64 %11, !3038, !DIExpression(), !3059)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3052)
  %exitcond.not = icmp eq i64 %11, %k, !dbg !3053
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3047

for.done:                                         ; preds = %for.body, %lookup.next
  %.lcssa16 = phi i64 [ %2, %lookup.next ], [ %10, %for.body ], !dbg !3050
    #dbg_value(i64 %.lcssa16, !3037, !DIExpression(), !3060)
    #dbg_value(i64 %.lcssa16, !3039, !DIExpression(), !3061)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3062)
  %12 = add i64 %k, -1, !dbg !3063
    #dbg_value(i64 %12, !3040, !DIExpression(), !3064)
    #dbg_value(i64 %k, !3041, !DIExpression(), !3065)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3066)
  %13 = icmp slt i64 %k, %n, !dbg !3067
  br i1 %13, label %for.body2.preheader, label %for.done5, !dbg !3047

for.body2.preheader:                              ; preds = %for.done
  %14 = call i64 @llvm.usub.sat.i64(i64 %arr.len, i64 %k), !dbg !3068
  %15 = xor i64 %k, -1, !dbg !3068
  %16 = add i64 %n, %15, !dbg !3068
  %.not.not23 = icmp ult i64 %16, %14, !dbg !3068
  br i1 %.not.not23, label %lookup.next17, label %lookup.throw12, !dbg !3068

lookup.next17:                                    ; preds = %for.body2.preheader, %lookup.next17
  %17 = phi i64 [ %28, %lookup.next17 ], [ %k, %for.body2.preheader ]
  %18 = phi i64 [ %spec.select11, %lookup.next17 ], [ %12, %for.body2.preheader ]
  %19 = phi i64 [ %spec.select, %lookup.next17 ], [ %.lcssa16, %for.body2.preheader ]
    #dbg_value(i64 %.lcssa16, !3037, !DIExpression(), !3069)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3070)
    #dbg_value(i64 %17, !3041, !DIExpression(), !3071)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3072)
  %20 = sub nuw i64 %17, %k, !dbg !3073
  %21 = getelementptr inbounds i64, ptr %arr.data, i64 %17, !dbg !3068
  %22 = load i64, ptr %21, align 8, !dbg !3068
  %23 = add i64 %22, %.lcssa16, !dbg !3074
  %24 = getelementptr inbounds i64, ptr %arr.data, i64 %20, !dbg !3075
  %25 = load i64, ptr %24, align 8, !dbg !3075
  %26 = sub i64 %23, %25, !dbg !3076
    #dbg_value(i64 %26, !3042, !DIExpression(), !3077)
    #dbg_value(i64 %19, !3039, !DIExpression(), !3078)
  %27 = icmp sgt i64 %26, %19, !dbg !3079
  %spec.select = tail call i64 @llvm.smax.i64(i64 %26, i64 %19), !dbg !3047
  %spec.select11 = select i1 %27, i64 %17, i64 %18, !dbg !3047
  %28 = add nsw i64 %17, 1, !dbg !3080
    #dbg_value(i64 %28, !3041, !DIExpression(), !3081)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3066)
  %exitcond22.not = icmp eq i64 %28, %n, !dbg !3067
  br i1 %exitcond22.not, label %for.done5, label %lookup.next17, !dbg !3047

for.done5:                                        ; preds = %lookup.next17, %for.done
  %.lcssa = phi i64 [ %12, %for.done ], [ %spec.select11, %lookup.next17 ], !dbg !3064
    #dbg_value(i64 %.lcssa, !3040, !DIExpression(), !3082)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3083)
  %reass.sub = sub i64 %.lcssa, %k, !dbg !3084
  %29 = add i64 %reass.sub, 1, !dbg !3084
  br label %common.ret, !dbg !3085

lookup.throw:                                     ; preds = %if.done
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw8:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3054
  unreachable, !dbg !3054

lookup.throw12:                                   ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3068
  unreachable, !dbg !3068
}
