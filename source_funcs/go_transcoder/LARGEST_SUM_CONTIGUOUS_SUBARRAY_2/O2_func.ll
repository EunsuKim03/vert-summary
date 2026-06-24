define i64 @f_gold(ptr nocapture readonly %a.data, i64 %a.len, i64 %a.cap, i64 %size) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %a.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %a.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %a.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %size, !3035, !DIExpression(), !3039)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3040)
  %size.fr = freeze i64 %size, !dbg !3041
  %0 = icmp eq i64 %a.len, 0, !dbg !3042
  br i1 %0, label %lookup.throw, label %lookup.next4, !dbg !3042

lookup.next4:                                     ; preds = %entry
    #dbg_value(i64 poison, !3036, !DIExpression(), !3043)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3044)
  %1 = load i64, ptr %a.data, align 8, !dbg !3042
    #dbg_value(i64 %1, !3036, !DIExpression(), !3043)
    #dbg_value(i64 %1, !3037, !DIExpression(), !3045)
    #dbg_value(i64 1, !3038, !DIExpression(), !3046)
    #dbg_value(i64 %size, !3035, !DIExpression(), !3047)
  %2 = icmp sgt i64 %size.fr, 1, !dbg !3048
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3049

for.body.preheader:                               ; preds = %lookup.next4
  %3 = add i64 %a.len, -1, !dbg !3041
  %4 = add nsw i64 %size.fr, -2, !dbg !3041
  %.not.not = icmp ugt i64 %3, %4, !dbg !3041
  br i1 %.not.not, label %for.body, label %lookup.throw7, !dbg !3041

for.body:                                         ; preds = %for.body.preheader, %for.body
  %5 = phi i64 [ %11, %for.body ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %x.y.i, %for.body ], [ %1, %for.body.preheader ]
  %7 = phi i64 [ %x.y.i1, %for.body ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %6, !3037, !DIExpression(), !3050)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3051)
    #dbg_value(i64 %5, !3038, !DIExpression(), !3052)
  %8 = getelementptr inbounds nuw i64, ptr %a.data, i64 %5, !dbg !3041
  %9 = load i64, ptr %8, align 8, !dbg !3041
  %10 = add i64 %9, %6, !dbg !3053
    #dbg_value(i64 %9, !3054, !DIExpression(), !3060)
    #dbg_value(i64 %10, !3059, !DIExpression(), !3062)
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %9, i64 %10), !dbg !3063
    #dbg_value(i64 %7, !3036, !DIExpression(), !3064)
    #dbg_value(i64 %x.y.i, !3037, !DIExpression(), !3065)
    #dbg_value(i64 %7, !3054, !DIExpression(), !3066)
    #dbg_value(i64 %x.y.i, !3059, !DIExpression(), !3068)
  %x.y.i1 = tail call i64 @llvm.smax.i64(i64 %7, i64 %x.y.i), !dbg !3069
    #dbg_value(i64 %x.y.i1, !3036, !DIExpression(), !3070)
  %11 = add nuw nsw i64 %5, 1, !dbg !3071
    #dbg_value(i64 %11, !3038, !DIExpression(), !3072)
    #dbg_value(i64 %size, !3035, !DIExpression(), !3047)
  %exitcond.not = icmp eq i64 %11, %size.fr, !dbg !3048
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3049

for.done:                                         ; preds = %for.body, %lookup.next4
  %.lcssa = phi i64 [ %1, %lookup.next4 ], [ %x.y.i1, %for.body ], !dbg !3043
    #dbg_value(i64 %.lcssa, !3036, !DIExpression(), !3073)
  ret i64 %.lcssa, !dbg !3074

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042

lookup.throw7:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3041
  unreachable, !dbg !3041
}
