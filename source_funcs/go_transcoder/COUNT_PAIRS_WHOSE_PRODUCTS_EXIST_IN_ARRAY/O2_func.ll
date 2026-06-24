define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3041)
    #dbg_value(i64 0, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
  %0 = icmp sgt i64 %n, 0, !dbg !3044
  br i1 %0, label %for.loop1.preheader, label %for.done6, !dbg !3045

for.loop1.preheader:                              ; preds = %entry, %for.done5
  %1 = phi i64 [ %3, %for.done5 ], [ 0, %entry ]
  %2 = phi i64 [ %.lcssa, %for.done5 ], [ 0, %entry ]
    #dbg_value(i64 %1, !3037, !DIExpression(), !3046)
  %3 = add nuw nsw i64 %1, 1, !dbg !3047
  %4 = icmp slt i64 %3, %n, !dbg !3048
  br i1 %4, label %for.body2.lr.ph, label %for.done5, !dbg !3045

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %1, %arr.len
  %5 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1
  br i1 %.not, label %for.body2, label %lookup.throw, !dbg !3049

for.body2:                                        ; preds = %for.body2.lr.ph, %for.done
  %6 = phi i64 [ %19, %for.done ], [ %3, %for.body2.lr.ph ]
  %7 = phi i64 [ %18, %for.done ], [ %2, %for.body2.lr.ph ]
    #dbg_value(i64 %1, !3037, !DIExpression(), !3050)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3052)
  %exitcond19.not = icmp eq i64 %6, %arr.len, !dbg !3053
  br i1 %exitcond19.not, label %lookup.throw9, label %for.body4.preheader, !dbg !3053

for.body4.preheader:                              ; preds = %for.body2
  %8 = load i64, ptr %5, align 8, !dbg !3049
  %9 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %6, !dbg !3053
  %10 = load i64, ptr %9, align 8, !dbg !3053
  %11 = mul i64 %10, %8, !dbg !3054
    #dbg_value(i64 %11, !3039, !DIExpression(), !3055)
    #dbg_value(i64 0, !3040, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  br label %for.body4, !dbg !3058

for.loop3:                                        ; preds = %lookup.next14
  %12 = add nuw nsw i64 %13, 1, !dbg !3059
    #dbg_value(i64 poison, !3040, !DIExpression(), !3060)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %exitcond18.not = icmp eq i64 %12, %n, !dbg !3061
  br i1 %exitcond18.not, label %for.done, label %for.body4, !dbg !3045

for.body4:                                        ; preds = %for.body4.preheader, %for.loop3
  %13 = phi i64 [ %12, %for.loop3 ], [ 0, %for.body4.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3062)
    #dbg_value(i64 %13, !3040, !DIExpression(), !3063)
  %exitcond.not = icmp eq i64 %13, %arr.len, !dbg !3058
  br i1 %exitcond.not, label %lookup.throw13, label %lookup.next14, !dbg !3058

lookup.next14:                                    ; preds = %for.body4
  %14 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %13, !dbg !3058
  %15 = load i64, ptr %14, align 8, !dbg !3058
    #dbg_value(i64 %11, !3039, !DIExpression(), !3064)
  %16 = icmp eq i64 %15, %11, !dbg !3065
    #dbg_value(i64 %13, !3040, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3059)
  br i1 %16, label %if.then, label %for.loop3, !dbg !3045

if.then:                                          ; preds = %lookup.next14
  %17 = add i64 %7, 1, !dbg !3066
    #dbg_value(i64 %17, !3036, !DIExpression(), !3066)
  br label %for.done, !dbg !3045

for.done:                                         ; preds = %for.loop3, %if.then
  %18 = phi i64 [ %17, %if.then ], [ %7, %for.loop3 ], !dbg !3042
    #dbg_value(i64 %6, !3038, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3067)
  %19 = add nuw nsw i64 %6, 1, !dbg !3047
    #dbg_value(i64 %19, !3038, !DIExpression(), !3068)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3069)
  %exitcond20.not = icmp eq i64 %19, %n, !dbg !3048
  br i1 %exitcond20.not, label %for.done5, label %for.body2, !dbg !3045

for.done5:                                        ; preds = %for.done, %for.loop1.preheader
  %.lcssa = phi i64 [ %2, %for.loop1.preheader ], [ %18, %for.done ], !dbg !3042
    #dbg_value(i64 %3, !3037, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3070)
  %exitcond21.not = icmp eq i64 %3, %n, !dbg !3044
  br i1 %exitcond21.not, label %for.done6, label %for.loop1.preheader, !dbg !3045

for.done6:                                        ; preds = %for.done5, %entry
  %.lcssa12 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done5 ], !dbg !3042
    #dbg_value(i64 %.lcssa12, !3036, !DIExpression(), !3071)
  ret i64 %.lcssa12, !dbg !3072

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw9:                                    ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3053
  unreachable, !dbg !3053

lookup.throw13:                                   ; preds = %for.body4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3058
  unreachable, !dbg !3058
}
