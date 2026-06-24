define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
  %n.fr = freeze i64 %n, !dbg !3042
  %0 = icmp eq i64 %a.len, 0, !dbg !3043
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3043

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %a.data, align 8, !dbg !3043
    #dbg_value(i64 %1, !3036, !DIExpression(), !3044)
    #dbg_value(i64 1, !3037, !DIExpression(), !3045)
    #dbg_value(i64 1, !3038, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !3048
  br i1 %2, label %for.body.preheader, label %for.loop1.preheader, !dbg !3049

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %a.len, -1, !dbg !3042
  %4 = add nsw i64 %n.fr, -2, !dbg !3042
  %.not11.not = icmp ugt i64 %3, %4, !dbg !3042
  br i1 %.not11.not, label %for.body, label %lookup.throw6, !dbg !3042

for.loop1.preheader:                              ; preds = %for.body, %lookup.next
  %.lcssa5 = phi i64 [ %1, %lookup.next ], [ %10, %for.body ], !dbg !3044
  %5 = add i64 %n.fr, 1
    #dbg_value(i64 2, !3039, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3051)
  %.not7 = icmp slt i64 %5, 2, !dbg !3052
  br i1 %.not7, label %for.done3, label %for.body2, !dbg !3049

for.body:                                         ; preds = %for.body.preheader, %for.body
  %6 = phi i64 [ %11, %for.body ], [ 1, %for.body.preheader ]
  %7 = phi i64 [ %10, %for.body ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %7, !3036, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3054)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3055)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %6, !dbg !3042
  %9 = load i64, ptr %8, align 8, !dbg !3042
  %10 = xor i64 %9, %7, !dbg !3056
    #dbg_value(i64 %10, !3036, !DIExpression(), !3057)
  %11 = add nuw nsw i64 %6, 1, !dbg !3058
    #dbg_value(i64 %11, !3038, !DIExpression(), !3059)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond.not = icmp eq i64 %11, %n.fr, !dbg !3048
  br i1 %exitcond.not, label %for.loop1.preheader, label %for.body, !dbg !3049

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %12 = phi i64 [ %15, %for.body2 ], [ 2, %for.loop1.preheader ]
  %13 = phi i64 [ %14, %for.body2 ], [ 1, %for.loop1.preheader ]
    #dbg_value(i64 %13, !3037, !DIExpression(), !3060)
    #dbg_value(i64 %12, !3039, !DIExpression(), !3061)
  %14 = xor i64 %12, %13, !dbg !3062
    #dbg_value(i64 %14, !3037, !DIExpression(), !3063)
  %15 = add i64 %12, 1, !dbg !3064
    #dbg_value(i64 %15, !3039, !DIExpression(), !3050)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3051)
  %.not = icmp sgt i64 %15, %5, !dbg !3052
  br i1 %.not, label %for.done3, label %for.body2, !dbg !3049

for.done3:                                        ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ 1, %for.loop1.preheader ], [ %14, %for.body2 ], !dbg !3045
    #dbg_value(i64 %.lcssa5, !3036, !DIExpression(), !3065)
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3066)
  %16 = xor i64 %.lcssa, %.lcssa5, !dbg !3067
  ret i64 %16, !dbg !3068

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3043
  unreachable, !dbg !3043

lookup.throw6:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042
}
