define i64 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 0, !3036, !DIExpression(), !3041)
    #dbg_value(i64 0, !3037, !DIExpression(), !3042)
  %0 = icmp sgt i64 %n, 0, !dbg !3043
  br i1 %0, label %for.loop1.preheader, label %for.done3, !dbg !3044

for.loop1.preheader:                              ; preds = %entry, %for.done
  %indvars.iv7.in = phi i64 [ %indvars.iv7, %for.done ], [ %n, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done ], [ 0, %entry ]
  %1 = phi i64 [ %14, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %12, %for.done ], [ 0, %entry ]
  %indvars.iv7 = add i64 %indvars.iv7.in, -1, !dbg !3044
  %umax = call i64 @llvm.umax.i64(i64 %arr.len, i64 %1), !dbg !3044
  %3 = add i64 %umax, %indvars.iv, !dbg !3044
    #dbg_value(i64 %1, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %1, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %.not.not = icmp ugt i64 %3, %indvars.iv7, !dbg !3044
  br i1 %.not.not, label %for.body2, label %lookup.throw, !dbg !3048

for.body2:                                        ; preds = %for.loop1.preheader, %for.body2
  %4 = phi i64 [ %13, %for.body2 ], [ %1, %for.loop1.preheader ]
  %5 = phi i64 [ %9, %for.body2 ], [ 0, %for.loop1.preheader ]
  %6 = phi i64 [ %12, %for.body2 ], [ %2, %for.loop1.preheader ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3049)
    #dbg_value(i64 %4, !3039, !DIExpression(), !3050)
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %4, !dbg !3048
  %8 = load i64, ptr %7, align 8, !dbg !3048
  %9 = add i64 %8, %5, !dbg !3051
    #dbg_value(i64 %9, !3038, !DIExpression(), !3052)
  %10 = icmp eq i64 %9, 0, !dbg !3053
  %reass.sub = sub nuw nsw i64 %4, %1, !dbg !3044
  %11 = add nuw nsw i64 %reass.sub, 1, !dbg !3044
  %x.y.i = tail call i64 @llvm.smax.i64(i64 %6, i64 %11), !dbg !3044
  %12 = select i1 %10, i64 %x.y.i, i64 %6, !dbg !3044
  %13 = add nuw nsw i64 %4, 1, !dbg !3054
    #dbg_value(i64 %13, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond.not = icmp eq i64 %13, %n, !dbg !3055
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3044

for.done:                                         ; preds = %for.body2
  %14 = add nuw nsw i64 %1, 1, !dbg !3056
    #dbg_value(i64 %14, !3037, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3057)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3044
  %exitcond9.not = icmp eq i64 %14, %n, !dbg !3043
  br i1 %exitcond9.not, label %for.done3, label %for.loop1.preheader, !dbg !3044

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa5 = phi i64 [ 0, %entry ], [ %12, %for.done ], !dbg !3041
    #dbg_value(i64 %.lcssa5, !3036, !DIExpression(), !3058)
  ret i64 %.lcssa5, !dbg !3059

lookup.throw:                                     ; preds = %for.loop1.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3048
  unreachable, !dbg !3048
}
