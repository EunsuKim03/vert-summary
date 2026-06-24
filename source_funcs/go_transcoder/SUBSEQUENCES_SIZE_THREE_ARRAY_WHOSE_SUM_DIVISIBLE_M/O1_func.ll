define i64 @f_gold(ptr nocapture readonly %A.data, i64 %A.len, i64 %A.cap, i64 %N, i64 %M) local_unnamed_addr #4 !dbg !3113 {
entry:
    #dbg_value(ptr %A.data, !3122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3130)
    #dbg_value(i64 %A.len, !3122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3130)
    #dbg_value(i64 %A.cap, !3122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3130)
    #dbg_value(i64 %N, !3123, !DIExpression(), !3130)
    #dbg_value(i64 %M, !3124, !DIExpression(), !3130)
    #dbg_value(i64 0, !3125, !DIExpression(), !3131)
    #dbg_value(i64 0, !3126, !DIExpression(), !3132)
    #dbg_value(i64 0, !3127, !DIExpression(), !3133)
  %0 = icmp sgt i64 %N, 0, !dbg !3134
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done6, !dbg !3135

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp eq i64 %M, 0
  %2 = icmp eq i64 %M, -1
  br label %for.loop1.preheader, !dbg !3135

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %30, %for.done5 ]
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa13, %for.done5 ]
    #dbg_value(i64 %3, !3127, !DIExpression(), !3136)
  %5 = add nuw nsw i64 %3, 1, !dbg !3137
  %6 = icmp slt i64 %5, %N, !dbg !3138
  br i1 %6, label %for.body2.lr.ph, label %for.done5, !dbg !3135

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %A.len
  %7 = getelementptr inbounds nuw i64, ptr %A.data, i64 %3
  br label %for.body2, !dbg !3135

for.loop1.loopexit:                               ; preds = %divbyzero.next, %for.body2
  %.lcssa = phi i64 [ %10, %for.body2 ], [ %spec.select, %divbyzero.next ], !dbg !3132
  %8 = add nuw nsw i64 %9, 1, !dbg !3137
    #dbg_value(i64 %8, !3128, !DIExpression(), !3139)
    #dbg_value(i64 %N, !3123, !DIExpression(), !3140)
  %exitcond.not = icmp eq i64 %8, %N, !dbg !3138
  br i1 %exitcond.not, label %for.done5, label %for.body2, !dbg !3135

for.body2:                                        ; preds = %for.body2.lr.ph, %for.loop1.loopexit
  %9 = phi i64 [ %5, %for.body2.lr.ph ], [ %8, %for.loop1.loopexit ]
  %.in23 = phi i64 [ %3, %for.body2.lr.ph ], [ %9, %for.loop1.loopexit ]
  %10 = phi i64 [ %4, %for.body2.lr.ph ], [ %.lcssa, %for.loop1.loopexit ]
    #dbg_value(i64 %9, !3128, !DIExpression(), !3141)
  %11 = add nuw i64 %.in23, 2, !dbg !3142
    #dbg_value(i64 %11, !3129, !DIExpression(), !3143)
    #dbg_value(i64 %N, !3123, !DIExpression(), !3144)
  %12 = icmp slt i64 %11, %N, !dbg !3145
  br i1 %12, label %for.body4.lr.ph, label %for.loop1.loopexit, !dbg !3135

for.body4.lr.ph:                                  ; preds = %for.body2
  %13 = getelementptr inbounds nuw i64, ptr %A.data, i64 %9
  br i1 %.not, label %for.body4.lr.ph.split, label %lookup.throw, !dbg !3146

for.body4.lr.ph.split:                            ; preds = %for.body4.lr.ph
  %.not3 = icmp ult i64 %9, %A.len
  br i1 %.not3, label %for.body4, label %lookup.throw9, !dbg !3147

for.body4:                                        ; preds = %for.body4.lr.ph.split, %divbyzero.next
  %14 = phi i64 [ %28, %divbyzero.next ], [ %11, %for.body4.lr.ph.split ]
  %15 = phi i64 [ %spec.select, %divbyzero.next ], [ %10, %for.body4.lr.ph.split ]
    #dbg_value(i64 %14, !3129, !DIExpression(), !3148)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3149)
    #dbg_value(i64 %3, !3127, !DIExpression(), !3150)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3151)
    #dbg_value(i64 %9, !3128, !DIExpression(), !3152)
    #dbg_value({ ptr, i64, i64 } poison, !3122, !DIExpression(), !3153)
    #dbg_value(i64 %14, !3129, !DIExpression(), !3154)
  %.not4 = icmp ult i64 %14, %A.len, !dbg !3155
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3155

lookup.next14:                                    ; preds = %for.body4
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3156)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3157)
    #dbg_value(i64 %M, !3124, !DIExpression(), !3158)
  br i1 %1, label %divbyzero.throw, label %divbyzero.next, !dbg !3159

divbyzero.next:                                   ; preds = %lookup.next14
  %16 = load i64, ptr %7, align 8, !dbg !3146
  %17 = load i64, ptr %13, align 8, !dbg !3147
  %18 = add i64 %17, %16, !dbg !3160
  %19 = getelementptr inbounds i64, ptr %A.data, i64 %14, !dbg !3155
  %20 = load i64, ptr %19, align 8, !dbg !3155
    #dbg_value(!DIArgList(i64 %18, i64 %20), !3125, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !3157)
  %21 = add i64 %18, %20, !dbg !3161
    #dbg_value(i64 %21, !3125, !DIExpression(), !3157)
  %22 = icmp eq i64 %21, -9223372036854775808, !dbg !3159
  %23 = and i1 %2, %22, !dbg !3159
  %24 = select i1 %23, i64 1, i64 %M, !dbg !3159
  %25 = srem i64 %21, %24, !dbg !3159
  %26 = icmp eq i64 %25, 0, !dbg !3162
  %27 = zext i1 %26 to i64, !dbg !3135
  %spec.select = add i64 %15, %27, !dbg !3135
  %28 = add nuw nsw i64 %14, 1, !dbg !3163
    #dbg_value(i64 %28, !3129, !DIExpression(), !3148)
    #dbg_value(i64 %N, !3123, !DIExpression(), !3144)
  %29 = icmp slt i64 %28, %N, !dbg !3145
  br i1 %29, label %for.body4, label %for.loop1.loopexit, !dbg !3135

for.done5:                                        ; preds = %for.loop1.loopexit, %for.loop1.preheader
  %.lcssa13 = phi i64 [ %4, %for.loop1.preheader ], [ %.lcssa, %for.loop1.loopexit ], !dbg !3132
  %30 = add nuw nsw i64 %3, 1, !dbg !3164
    #dbg_value(i64 %30, !3127, !DIExpression(), !3136)
    #dbg_value(i64 %N, !3123, !DIExpression(), !3165)
  %exitcond26.not = icmp eq i64 %30, %N, !dbg !3134
  br i1 %exitcond26.not, label %for.done6, label %for.loop1.preheader, !dbg !3135

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %.lcssa13, %for.done5 ], !dbg !3132
    #dbg_value(i64 %.lcssa18, !3126, !DIExpression(), !3166)
  ret i64 %.lcssa18, !dbg !3167

lookup.throw:                                     ; preds = %for.body4.lr.ph
  call fastcc void @runtime.lookupPanic(), !dbg !3146
  unreachable, !dbg !3146

lookup.throw9:                                    ; preds = %for.body4.lr.ph.split
  call fastcc void @runtime.lookupPanic(), !dbg !3147
  unreachable, !dbg !3147

lookup.throw13:                                   ; preds = %for.body4
  call fastcc void @runtime.lookupPanic(), !dbg !3155
  unreachable, !dbg !3155

divbyzero.throw:                                  ; preds = %lookup.next14
  call fastcc void @runtime.divideByZeroPanic(), !dbg !3159
  unreachable, !dbg !3159
}
