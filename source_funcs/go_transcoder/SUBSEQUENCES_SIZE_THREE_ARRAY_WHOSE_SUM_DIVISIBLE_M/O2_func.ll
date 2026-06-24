define i64 @f_gold(ptr nocapture readonly %A.data, i64 %A.len, i64 %A.cap, i64 %N, i64 %M) local_unnamed_addr #4 !dbg !3029 {
entry:
    #dbg_value(ptr %A.data, !3038, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3046)
    #dbg_value(i64 %A.len, !3038, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3046)
    #dbg_value(i64 %A.cap, !3038, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3046)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %M, !3040, !DIExpression(), !3046)
    #dbg_value(i64 0, !3041, !DIExpression(), !3047)
    #dbg_value(i64 0, !3042, !DIExpression(), !3048)
    #dbg_value(i64 0, !3043, !DIExpression(), !3049)
  %0 = icmp sgt i64 %N, 0, !dbg !3050
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done6, !dbg !3051

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp eq i64 %M, 0
  %2 = icmp eq i64 %M, -1
  br label %for.loop1.preheader, !dbg !3051

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %5, %for.done5 ]
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa13, %for.done5 ]
    #dbg_value(i64 %3, !3043, !DIExpression(), !3052)
  %5 = add nuw nsw i64 %3, 1, !dbg !3053
  %6 = icmp slt i64 %5, %N, !dbg !3054
  br i1 %6, label %for.body2.lr.ph, label %for.done5, !dbg !3051

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %A.len
  %7 = getelementptr inbounds nuw i64, ptr %A.data, i64 %3
  br label %for.body2, !dbg !3051

for.loop1.loopexit:                               ; preds = %divbyzero.next, %for.body2
  %.lcssa = phi i64 [ %10, %for.body2 ], [ %spec.select, %divbyzero.next ], !dbg !3048
  %8 = add nuw nsw i64 %9, 1, !dbg !3053
    #dbg_value(i64 %8, !3044, !DIExpression(), !3055)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3056)
  %exitcond.not = icmp eq i64 %8, %N, !dbg !3054
  br i1 %exitcond.not, label %for.done5, label %for.body2, !dbg !3051

for.body2:                                        ; preds = %for.body2.lr.ph, %for.loop1.loopexit
  %9 = phi i64 [ %5, %for.body2.lr.ph ], [ %8, %for.loop1.loopexit ]
  %.in23 = phi i64 [ %3, %for.body2.lr.ph ], [ %9, %for.loop1.loopexit ]
  %10 = phi i64 [ %4, %for.body2.lr.ph ], [ %.lcssa, %for.loop1.loopexit ]
    #dbg_value(i64 %9, !3044, !DIExpression(), !3057)
  %11 = add nuw i64 %.in23, 2, !dbg !3058
    #dbg_value(i64 %11, !3045, !DIExpression(), !3059)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3060)
  %12 = icmp slt i64 %11, %N, !dbg !3061
  br i1 %12, label %for.body4.lr.ph, label %for.loop1.loopexit, !dbg !3051

for.body4.lr.ph:                                  ; preds = %for.body2
  %13 = getelementptr inbounds nuw i64, ptr %A.data, i64 %9
  br i1 %.not, label %for.body4.lr.ph.split, label %lookup.throw, !dbg !3062

for.body4.lr.ph.split:                            ; preds = %for.body4.lr.ph
  %.not3 = icmp ult i64 %9, %A.len
  br i1 %.not3, label %for.body4, label %lookup.throw9, !dbg !3063

for.body4:                                        ; preds = %for.body4.lr.ph.split, %divbyzero.next
  %14 = phi i64 [ %28, %divbyzero.next ], [ %11, %for.body4.lr.ph.split ]
  %15 = phi i64 [ %spec.select, %divbyzero.next ], [ %10, %for.body4.lr.ph.split ]
    #dbg_value(i64 %3, !3043, !DIExpression(), !3064)
    #dbg_value(i64 %9, !3044, !DIExpression(), !3065)
    #dbg_value({ ptr, i64, i64 } poison, !3038, !DIExpression(), !3066)
    #dbg_value(i64 %14, !3045, !DIExpression(), !3067)
  %.not4 = icmp ult i64 %14, %A.len, !dbg !3068
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3068

lookup.next14:                                    ; preds = %for.body4
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3069)
    #dbg_value(i64 %M, !3040, !DIExpression(), !3070)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !3071

divbyzero.next:                                   ; preds = %lookup.next14
  %16 = load i64, ptr %7, align 8, !dbg !3062
  %17 = load i64, ptr %13, align 8, !dbg !3063
  %18 = add i64 %17, %16, !dbg !3072
  %19 = getelementptr inbounds i64, ptr %A.data, i64 %14, !dbg !3068
  %20 = load i64, ptr %19, align 8, !dbg !3068
    #dbg_value(!DIArgList(i64 %18, i64 %20), !3041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3069)
  %21 = add i64 %18, %20, !dbg !3073
    #dbg_value(i64 %21, !3041, !DIExpression(), !3069)
  %22 = icmp eq i64 %21, -9223372036854775808, !dbg !3071
  %23 = and i1 %2, %22, !dbg !3071
  %24 = select i1 %23, i64 1, i64 %M, !dbg !3071
  %25 = srem i64 %21, %24, !dbg !3071
  %26 = icmp eq i64 %25, 0, !dbg !3074
  %27 = zext i1 %26 to i64, !dbg !3051
  %spec.select = add i64 %15, %27, !dbg !3051
  %28 = add nuw nsw i64 %14, 1, !dbg !3075
    #dbg_value(i64 %28, !3045, !DIExpression(), !3076)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3060)
  %29 = icmp slt i64 %28, %N, !dbg !3061
  br i1 %29, label %for.body4, label %for.loop1.loopexit, !dbg !3051

for.done5:                                        ; preds = %for.loop1.loopexit, %for.loop1.preheader
  %.lcssa13 = phi i64 [ %4, %for.loop1.preheader ], [ %.lcssa, %for.loop1.loopexit ], !dbg !3048
    #dbg_value(i64 %5, !3043, !DIExpression(), !3052)
    #dbg_value(i64 %N, !3039, !DIExpression(), !3077)
  %exitcond26.not = icmp eq i64 %5, %N, !dbg !3050
  br i1 %exitcond26.not, label %for.done6, label %for.loop1.preheader, !dbg !3051

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %.lcssa13, %for.done5 ], !dbg !3048
    #dbg_value(i64 %.lcssa18, !3042, !DIExpression(), !3078)
  ret i64 %.lcssa18, !dbg !3079

lookup.throw:                                     ; preds = %for.body4.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3062
  unreachable, !dbg !3062

lookup.throw9:                                    ; preds = %for.body4.lr.ph.split
  tail call fastcc void @runtime.lookupPanic(), !dbg !3063
  unreachable, !dbg !3063

lookup.throw13:                                   ; preds = %for.body4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3068
  unreachable, !dbg !3068

divbyzero.throw:                                  ; preds = %lookup.next14
  tail call fastcc void @runtime.divideByZeroPanic(), !dbg !3071
  unreachable, !dbg !3071
}
