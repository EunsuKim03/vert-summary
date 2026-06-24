define i64 @f_gold(ptr nocapture readonly %poly.data, i64 %poly.len, i64 %poly.cap, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %poly.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %poly.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %poly.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3039)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3040)
  %n.fr = freeze i64 %n, !dbg !3041
  %0 = icmp eq i64 %poly.len, 0, !dbg !3042
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3042

lookup.next:                                      ; preds = %entry
  %1 = load i64, ptr %poly.data, align 8, !dbg !3042
    #dbg_value(i64 %1, !3037, !DIExpression(), !3043)
    #dbg_value(i64 1, !3038, !DIExpression(), !3044)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3045)
  %2 = icmp sgt i64 %n.fr, 1, !dbg !3046
  br i1 %2, label %for.body.preheader, label %for.done, !dbg !3047

for.body.preheader:                               ; preds = %lookup.next
  %3 = add i64 %poly.len, -1, !dbg !3041
  %4 = add nsw i64 %n.fr, -2, !dbg !3041
  %.not.not = icmp ugt i64 %3, %4, !dbg !3041
  br i1 %.not.not, label %for.body, label %lookup.throw3, !dbg !3041

for.body:                                         ; preds = %for.body.preheader, %for.body
  %5 = phi i64 [ %11, %for.body ], [ 1, %for.body.preheader ]
  %6 = phi i64 [ %10, %for.body ], [ %1, %for.body.preheader ]
    #dbg_value(i64 %6, !3037, !DIExpression(), !3048)
    #dbg_value(i64 %x, !3036, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3038, !DIExpression(), !3051)
  %7 = mul i64 %6, %x, !dbg !3052
  %8 = getelementptr inbounds nuw i64, ptr %poly.data, i64 %5, !dbg !3041
  %9 = load i64, ptr %8, align 8, !dbg !3041
  %10 = add i64 %9, %7, !dbg !3053
    #dbg_value(i64 %10, !3037, !DIExpression(), !3054)
  %11 = add nuw nsw i64 %5, 1, !dbg !3055
    #dbg_value(i64 %11, !3038, !DIExpression(), !3056)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3045)
  %exitcond.not = icmp eq i64 %11, %n.fr, !dbg !3046
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3047

for.done:                                         ; preds = %for.body, %lookup.next
  %.lcssa = phi i64 [ %1, %lookup.next ], [ %10, %for.body ], !dbg !3043
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3057)
  ret i64 %.lcssa, !dbg !3058

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042

lookup.throw3:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3041
  unreachable, !dbg !3041
}
