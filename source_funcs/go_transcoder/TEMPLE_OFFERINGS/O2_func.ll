define i64 @f_gold(i64 %n, ptr nocapture readonly %templeHeight.data, i64 %templeHeight.len, i64 %templeHeight.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(i64 %n, !3034, !DIExpression(), !3042)
    #dbg_value(ptr %templeHeight.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %templeHeight.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %templeHeight.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(i64 0, !3036, !DIExpression(), !3043)
    #dbg_value(i64 0, !3037, !DIExpression(), !3044)
  %0 = icmp sgt i64 %n, 0, !dbg !3045
  br i1 %0, label %for.loop1.preheader, label %for.done7, !dbg !3046

for.loop1.preheader:                              ; preds = %entry, %for.done6
  %indvars.iv31.in = phi i64 [ %indvars.iv31, %for.done6 ], [ %n, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done6 ], [ -1, %entry ]
  %1 = phi i64 [ %11, %for.done6 ], [ 0, %entry ]
  %2 = phi i64 [ %23, %for.done6 ], [ 0, %entry ]
  %indvars.iv31 = add i64 %indvars.iv31.in, -1, !dbg !3046
    #dbg_value(i64 %1, !3037, !DIExpression(), !3047)
  %.not = icmp eq i64 %1, 0, !dbg !3048
  br i1 %.not, label %for.done, label %for.body2.preheader, !dbg !3046

for.body2.preheader:                              ; preds = %for.loop1.preheader
  %.not.first_iter = icmp ult i64 %indvars.iv, %templeHeight.len, !dbg !3049
  br label %for.body2, !dbg !3049

for.body2:                                        ; preds = %for.body2.preheader, %if.then
  %.in823 = phi i64 [ %4, %if.then ], [ %1, %for.body2.preheader ]
  %3 = phi i64 [ %10, %if.then ], [ 0, %for.body2.preheader ]
  %4 = add nsw i64 %.in823, -1, !dbg !3050
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3051)
    #dbg_value(i64 %4, !3040, !DIExpression(), !3052)
  br i1 %.not.first_iter, label %lookup.next, label %lookup.throw, !dbg !3049

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3053)
    #dbg_value(i64 %4, !3040, !DIExpression(), !3054)
  %.not5 = icmp ult i64 %.in823, %templeHeight.len, !dbg !3055
  br i1 %.not5, label %lookup.next11, label %lookup.throw10, !dbg !3055

lookup.next11:                                    ; preds = %lookup.next
  %5 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %4, !dbg !3049
  %6 = load i64, ptr %5, align 8, !dbg !3049
  %7 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in823, !dbg !3055
  %8 = load i64, ptr %7, align 8, !dbg !3055
  %9 = icmp slt i64 %6, %8, !dbg !3056
  br i1 %9, label %if.then, label %for.done, !dbg !3046

if.then:                                          ; preds = %lookup.next11
  %10 = add nuw nsw i64 %3, 1, !dbg !3057
    #dbg_value(i64 %10, !3038, !DIExpression(), !3057)
    #dbg_value(i64 %4, !3040, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3058)
  %exitcond.not = icmp eq i64 %10, %1, !dbg !3048
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3046

for.done:                                         ; preds = %if.then, %lookup.next11, %for.loop1.preheader
  %.lcssa = phi i64 [ 0, %for.loop1.preheader ], [ %3, %lookup.next11 ], [ %1, %if.then ], !dbg !3059
    #dbg_value(i64 %1, !3037, !DIExpression(), !3060)
    #dbg_value(i64 %1, !3041, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3061)
  %11 = add nuw nsw i64 %1, 1, !dbg !3062
  %12 = icmp slt i64 %11, %n, !dbg !3063
  br i1 %12, label %for.body4, label %for.done6, !dbg !3046

for.body4:                                        ; preds = %for.done, %if.then5
  %13 = phi i64 [ %21, %if.then5 ], [ %11, %for.done ]
  %.in25 = phi i64 [ %13, %if.then5 ], [ %1, %for.done ]
  %14 = phi i64 [ %20, %if.then5 ], [ 0, %for.done ]
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3064)
    #dbg_value(i64 %13, !3041, !DIExpression(), !3065)
  %.not6 = icmp ult i64 %13, %templeHeight.len, !dbg !3066
  br i1 %.not6, label %lookup.next15, label %lookup.throw14, !dbg !3066

lookup.next15:                                    ; preds = %for.body4
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3067)
    #dbg_value(i64 %13, !3041, !DIExpression(), !3068)
  %.not7 = icmp ult i64 %.in25, %templeHeight.len, !dbg !3069
  br i1 %.not7, label %lookup.next19, label %lookup.throw18, !dbg !3069

lookup.next19:                                    ; preds = %lookup.next15
  %15 = getelementptr inbounds nuw i64, ptr %templeHeight.data, i64 %13, !dbg !3066
  %16 = load i64, ptr %15, align 8, !dbg !3066
  %17 = getelementptr inbounds i64, ptr %templeHeight.data, i64 %.in25, !dbg !3069
  %18 = load i64, ptr %17, align 8, !dbg !3069
  %19 = icmp slt i64 %16, %18, !dbg !3070
  br i1 %19, label %if.then5, label %for.done6, !dbg !3046

if.then5:                                         ; preds = %lookup.next19
  %20 = add nuw i64 %14, 1, !dbg !3071
    #dbg_value(i64 %20, !3039, !DIExpression(), !3071)
    #dbg_value(i64 %13, !3041, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3072)
  %21 = add nuw nsw i64 %13, 1, !dbg !3062
    #dbg_value(i64 %21, !3041, !DIExpression(), !3073)
    #dbg_value(i64 %n, !3034, !DIExpression(), !3074)
  %exitcond33.not = icmp eq i64 %20, %indvars.iv31, !dbg !3063
  br i1 %exitcond33.not, label %for.done6, label %for.body4, !dbg !3046

for.done6:                                        ; preds = %if.then5, %lookup.next19, %for.done
  %.lcssa15 = phi i64 [ 0, %for.done ], [ %14, %lookup.next19 ], [ %indvars.iv31, %if.then5 ], !dbg !3075
    #dbg_value(i64 %.lcssa15, !3039, !DIExpression(), !3076)
    #dbg_value(i64 %.lcssa, !3038, !DIExpression(), !3077)
    #dbg_value(i64 %.lcssa15, !3078, !DIExpression(), !3084)
    #dbg_value(i64 %.lcssa, !3083, !DIExpression(), !3086)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %.lcssa15, i64 %.lcssa), !dbg !3087
  %22 = add i64 %2, 1, !dbg !3088
  %23 = add i64 %22, %x.y.i, !dbg !3089
    #dbg_value(i64 %23, !3036, !DIExpression(), !3089)
    #dbg_value(i64 %11, !3037, !DIExpression(), !3047)
    #dbg_value(i64 %n, !3034, !DIExpression(), !3090)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3046
  %exitcond34.not = icmp eq i64 %11, %n, !dbg !3045
  br i1 %exitcond34.not, label %for.done7, label %for.loop1.preheader, !dbg !3046

for.done7:                                        ; preds = %for.done6, %entry
  %.lcssa18 = phi i64 [ 0, %entry ], [ %23, %for.done6 ], !dbg !3043
    #dbg_value(i64 %.lcssa18, !3036, !DIExpression(), !3091)
  ret i64 %.lcssa18, !dbg !3092

lookup.throw:                                     ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049

lookup.throw10:                                   ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3055
  unreachable, !dbg !3055

lookup.throw14:                                   ; preds = %for.body4
  tail call fastcc void @runtime.lookupPanic(), !dbg !3066
  unreachable, !dbg !3066

lookup.throw18:                                   ; preds = %lookup.next15
  tail call fastcc void @runtime.lookupPanic(), !dbg !3069
  unreachable, !dbg !3069
}
