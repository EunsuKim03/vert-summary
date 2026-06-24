define range(i64 -1, -9223372036854775808) i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 -1, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done6, !dbg !3044

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %.not24 = icmp eq i64 %n, 1
  %1 = add nsw i64 %n, -2
  br label %for.loop1.preheader, !dbg !3044

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done5
  %2 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %18, %for.done5 ]
  %3 = phi i64 [ -1, %for.loop1.preheader.lr.ph ], [ %.lcssa14, %for.done5 ]
    #dbg_value(i64 %2, !3037, !DIExpression(), !3045)
    #dbg_value(i64 0, !3038, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  br i1 %.not24, label %for.done5, label %for.loop3.preheader.lr.ph, !dbg !3044

for.loop3.preheader.lr.ph:                        ; preds = %for.loop1.preheader
  %.not4 = icmp ult i64 %2, %arr.len
  %4 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br label %for.body4.lr.ph, !dbg !3044

for.body4.lr.ph:                                  ; preds = %for.done, %for.loop3.preheader.lr.ph
  %5 = phi i64 [ 0, %for.loop3.preheader.lr.ph ], [ %7, %for.done ]
  %6 = phi i64 [ %3, %for.loop3.preheader.lr.ph ], [ %spec.select, %for.done ]
    #dbg_value(i64 %5, !3038, !DIExpression(), !3046)
  %7 = add nuw nsw i64 %5, 1, !dbg !3048
  %.not = icmp ult i64 %5, %arr.len
  %8 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5
  br i1 %.not, label %for.body4, label %lookup.throw, !dbg !3049

for.body4:                                        ; preds = %for.body4.lr.ph, %lookup.next14
  %9 = phi i64 [ %17, %lookup.next14 ], [ %7, %for.body4.lr.ph ]
  %10 = phi i64 [ %spec.select, %lookup.next14 ], [ %6, %for.body4.lr.ph ]
    #dbg_value(i64 %5, !3038, !DIExpression(), !3050)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %9, !3039, !DIExpression(), !3052)
  %exitcond.not = icmp eq i64 %9, %arr.len, !dbg !3053
  br i1 %exitcond.not, label %lookup.throw9, label %lookup.next10, !dbg !3053

lookup.next10:                                    ; preds = %for.body4
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %2, !3037, !DIExpression(), !3055)
  br i1 %.not4, label %lookup.next14, label %lookup.throw13, !dbg !3056

lookup.next14:                                    ; preds = %lookup.next10
  %11 = load i64, ptr %8, align 8, !dbg !3049
  %12 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %9, !dbg !3053
  %13 = load i64, ptr %12, align 8, !dbg !3053
  %14 = mul i64 %13, %11, !dbg !3057
  %15 = load i64, ptr %4, align 8, !dbg !3056
  %16 = icmp eq i64 %14, %15, !dbg !3058
  %x.y.i = tail call range(i64 -1, -9223372036854775808) i64 @llvm.smax.i64(i64 range(i64 -1, -9223372036854775808) %10, i64 %15)
  %spec.select = select i1 %16, i64 %x.y.i, i64 %10, !dbg !3044
    #dbg_value(i64 %9, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3059)
  %17 = add nuw nsw i64 %9, 1, !dbg !3048
    #dbg_value(i64 %17, !3039, !DIExpression(), !3060)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3061)
  %exitcond25.not = icmp eq i64 %17, %n, !dbg !3062
  br i1 %exitcond25.not, label %for.done, label %for.body4, !dbg !3044

for.done:                                         ; preds = %lookup.next14
    #dbg_value(i64 %7, !3038, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond26.not = icmp eq i64 %5, %1, !dbg !3063
  br i1 %exitcond26.not, label %for.done5, label %for.body4.lr.ph, !dbg !3044

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa14 = phi i64 [ %3, %for.loop1.preheader ], [ %spec.select, %for.done ], !dbg !3041
  %18 = add nuw nsw i64 %2, 1, !dbg !3064
    #dbg_value(i64 %18, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3065)
  %exitcond27.not = icmp eq i64 %18, %n, !dbg !3043
  br i1 %exitcond27.not, label %for.done6, label %for.loop1.preheader, !dbg !3044

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa18 = phi i64 [ -1, %entry ], [ %.lcssa14, %for.done5 ], !dbg !3041
    #dbg_value(i64 %.lcssa18, !3036, !DIExpression(), !3066)
  ret i64 %.lcssa18, !dbg !3067

lookup.throw:                                     ; preds = %for.body4.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw9:                                    ; preds = %for.body4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw13:                                   ; preds = %lookup.next10
  tail call fastcc void @runtime.lookupPanic(), !dbg !3056
  unreachable, !dbg !3056
}
