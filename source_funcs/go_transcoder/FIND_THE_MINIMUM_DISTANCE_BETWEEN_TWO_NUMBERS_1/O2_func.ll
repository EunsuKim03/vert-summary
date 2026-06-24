define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %x, i64 %y) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3041)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3041)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3041)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3041)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3041)
    #dbg_value(i64 %y, !3037, !DIExpression(), !3041)
    #dbg_value(i64 9223372036854775807, !3039, !DIExpression(), !3042)
    #dbg_value(i64 0, !3040, !DIExpression(), !3043)
    #dbg_value(i64 0, !3038, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.body, label %for.loop1.preheader, !dbg !3046

for.body:                                         ; preds = %entry, %if.done
  %1 = phi i64 [ %7, %if.done ], [ 0, %entry ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3047)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3048)
  %exitcond.not = icmp eq i64 %1, %arr.len, !dbg !3049
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3049

lookup.next:                                      ; preds = %for.body
  %2 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %1, !dbg !3049
  %3 = load i64, ptr %2, align 8, !dbg !3049
    #dbg_value(i64 %x, !3036, !DIExpression(), !3050)
  %4 = icmp eq i64 %3, %x, !dbg !3051
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3053)
    #dbg_value(i64 %y, !3037, !DIExpression(), !3054)
  %5 = icmp eq i64 %3, %y
  %or.cond = select i1 %4, i1 true, i1 %5, !dbg !3046
  br i1 %or.cond, label %for.loop1.preheader, label %if.done, !dbg !3046

for.loop1.preheader:                              ; preds = %lookup.next, %entry
  %.lcssa19 = phi i64 [ 0, %entry ], [ %1, %lookup.next ], !dbg !3055
    #dbg_value(i64 %.lcssa19, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %6 = icmp slt i64 %.lcssa19, %n, !dbg !3058
  br i1 %6, label %for.body2.preheader, label %for.done, !dbg !3046

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %umax = call i64 @llvm.umax.i64(i64 %.lcssa19, i64 %arr.len), !dbg !3059
  br label %for.body2, !dbg !3059

if.done:                                          ; preds = %lookup.next
  %7 = add nuw nsw i64 %1, 1, !dbg !3060
    #dbg_value(i64 %7, !3038, !DIExpression(), !3061)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3062)
  %exitcond26.not = icmp eq i64 %7, %n, !dbg !3045
  br i1 %exitcond26.not, label %for.done, label %for.body, !dbg !3046

for.body2:                                        ; preds = %for.body2.preheader, %if.done5
  %8 = phi i64 [ %20, %if.done5 ], [ %.lcssa19, %for.body2.preheader ]
  %9 = phi i64 [ %19, %if.done5 ], [ 9223372036854775807, %for.body2.preheader ]
  %10 = phi i64 [ %21, %if.done5 ], [ %.lcssa19, %for.body2.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3063)
    #dbg_value(i64 %10, !3038, !DIExpression(), !3064)
  %exitcond27.not = icmp eq i64 %10, %umax, !dbg !3059
  br i1 %exitcond27.not, label %lookup.throw13, label %lookup.next14, !dbg !3059

lookup.next14:                                    ; preds = %for.body2
  %11 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %10, !dbg !3059
  %12 = load i64, ptr %11, align 8, !dbg !3059
    #dbg_value(i64 %x, !3036, !DIExpression(), !3065)
  %13 = icmp eq i64 %12, %x, !dbg !3066
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3067)
    #dbg_value(i64 %10, !3038, !DIExpression(), !3068)
    #dbg_value(i64 %y, !3037, !DIExpression(), !3069)
  %14 = icmp eq i64 %12, %y
  %or.cond16 = select i1 %13, i1 true, i1 %14, !dbg !3046
  br i1 %or.cond16, label %if.then3, label %if.done5, !dbg !3046

if.then3:                                         ; preds = %lookup.next14
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3070)
    #dbg_value(i64 %8, !3040, !DIExpression(), !3071)
  %.not6 = icmp ult i64 %8, %arr.len, !dbg !3072
  br i1 %.not6, label %lookup.next22, label %lookup.throw17, !dbg !3072

lookup.next22:                                    ; preds = %if.then3
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3073)
    #dbg_value(i64 %10, !3038, !DIExpression(), !3074)
  %15 = getelementptr inbounds i64, ptr %arr.data, i64 %8, !dbg !3072
  %16 = load i64, ptr %15, align 8, !dbg !3072
  %.not8.not = icmp eq i64 %16, %12, !dbg !3075
    #dbg_value(i64 %8, !3040, !DIExpression(), !3076)
  %17 = sub i64 %10, %8
    #dbg_value(i64 %9, !3039, !DIExpression(), !3077)
  %18 = tail call i64 @llvm.smin.i64(i64 %17, i64 %9), !dbg !3046
  %spec.select = select i1 %.not8.not, i64 %9, i64 %18, !dbg !3046
  br label %if.done5, !dbg !3046

if.done5:                                         ; preds = %lookup.next14, %lookup.next22
  %19 = phi i64 [ %spec.select, %lookup.next22 ], [ %9, %lookup.next14 ], !dbg !3042
  %20 = phi i64 [ %10, %lookup.next22 ], [ %8, %lookup.next14 ], !dbg !3043
  %21 = add nuw nsw i64 %10, 1, !dbg !3078
    #dbg_value(i64 %21, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %exitcond28.not = icmp eq i64 %21, %n, !dbg !3058
  br i1 %exitcond28.not, label %for.done, label %for.body2, !dbg !3046

for.done:                                         ; preds = %if.done, %if.done5, %for.loop1.preheader
  %.lcssa = phi i64 [ 9223372036854775807, %for.loop1.preheader ], [ %19, %if.done5 ], [ 9223372036854775807, %if.done ], !dbg !3042
    #dbg_value(i64 %.lcssa, !3039, !DIExpression(), !3079)
  ret i64 %.lcssa, !dbg !3080

lookup.throw:                                     ; preds = %for.body
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw13:                                   ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3059
  unreachable, !dbg !3059

lookup.throw17:                                   ; preds = %if.then3
  tail call fastcc void @runtime.lookupPanic(), !dbg !3072
  unreachable, !dbg !3072
}
