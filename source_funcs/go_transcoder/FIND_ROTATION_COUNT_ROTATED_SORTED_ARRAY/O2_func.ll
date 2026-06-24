define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3039)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3040)
  %n.fr = freeze i64 %n, !dbg !3041
  %0 = icmp eq i64 %arr.len, 0, !dbg !3042
  br i1 %0, label %lookup.throw, label %lookup.next, !dbg !3042

lookup.next:                                      ; preds = %entry
    #dbg_value(i64 poison, !3036, !DIExpression(), !3043)
    #dbg_value(i64 0, !3037, !DIExpression(), !3044)
    #dbg_value(i64 0, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3046)
  %1 = icmp sgt i64 %n.fr, 0, !dbg !3047
  br i1 %1, label %for.body.preheader, label %for.done, !dbg !3048

for.body.preheader:                               ; preds = %lookup.next
  %2 = load i64, ptr %arr.data, align 8, !dbg !3042
    #dbg_value(i64 %2, !3036, !DIExpression(), !3043)
  %3 = add nsw i64 %n.fr, -1, !dbg !3041
  %.not.not = icmp ugt i64 %arr.len, %3, !dbg !3041
  br i1 %.not.not, label %for.body, label %lookup.throw3, !dbg !3041

for.body:                                         ; preds = %for.body.preheader, %for.body
  %4 = phi i64 [ %12, %for.body ], [ 0, %for.body.preheader ]
  %5 = phi i64 [ %11, %for.body ], [ 0, %for.body.preheader ]
  %6 = phi i64 [ %10, %for.body ], [ %2, %for.body.preheader ]
    #dbg_value(i64 %6, !3036, !DIExpression(), !3049)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %4, !3038, !DIExpression(), !3051)
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3041
  %8 = load i64, ptr %7, align 8, !dbg !3041
  %9 = icmp sgt i64 %6, %8, !dbg !3052
  %10 = tail call i64 @llvm.smin.i64(i64 %6, i64 %8), !dbg !3048
  %11 = select i1 %9, i64 %4, i64 %5, !dbg !3048
  %12 = add nuw nsw i64 %4, 1, !dbg !3053
    #dbg_value(i64 %12, !3038, !DIExpression(), !3054)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3046)
  %exitcond.not = icmp eq i64 %12, %n.fr, !dbg !3047
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !3048

for.done:                                         ; preds = %for.body, %lookup.next
  %.lcssa = phi i64 [ 0, %lookup.next ], [ %11, %for.body ], !dbg !3044
    #dbg_value(i64 %.lcssa, !3037, !DIExpression(), !3055)
  ret i64 %.lcssa, !dbg !3056

lookup.throw:                                     ; preds = %entry
  tail call fastcc void @runtime.lookupPanic(), !dbg !3042
  unreachable, !dbg !3042

lookup.throw3:                                    ; preds = %for.body.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3041
  unreachable, !dbg !3041
}
