define i64 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %s.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3039)
    #dbg_value(i64 %s.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3039)
    #dbg_value(i64 %s.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3039)
    #dbg_value(i64 0, !3035, !DIExpression(), !3040)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3041)
    #dbg_value(i64 %s.len, !3036, !DIExpression(), !3042)
    #dbg_value(i64 0, !3037, !DIExpression(), !3043)
  %0 = icmp sgt i64 %s.len, 0, !dbg !3044
  br i1 %0, label %for.body2.preheader, label %for.done3, !dbg !3045

for.body2.preheader:                              ; preds = %entry, %for.done
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.done ], [ -1, %entry ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.done ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.done ], [ 0, %entry ]
  %1 = phi i64 [ %14, %for.done ], [ 0, %entry ]
  %2 = phi i64 [ %spec.select, %for.done ], [ 0, %entry ]
    #dbg_value(i64 %1, !3037, !DIExpression(), !3046)
    #dbg_value(i64 %1, !3038, !DIExpression(), !3047)
    #dbg_value(i64 %s.len, !3036, !DIExpression(), !3048)
  %smax = call i64 @llvm.smax.i64(i64 %s.len, i64 %indvars.iv10)
  %3 = add nsw i64 %smax, %indvars.iv12
  %umax = call i64 @llvm.umax.i64(i64 %s.len, i64 %1)
  %4 = add i64 %umax, %indvars.iv
  %.not.not = icmp ugt i64 %4, %3, !dbg !3049
  br i1 %.not.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3049

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %5 = getelementptr inbounds nuw i8, ptr %s.data, i64 %1
  %.pre = load i8, ptr %5, align 1, !dbg !3050
  br label %for.body2, !dbg !3049

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %6 = phi i64 [ %12, %for.body2 ], [ %1, %for.body2.preheader.split ]
  %7 = phi i64 [ %spec.select, %for.body2 ], [ %2, %for.body2.preheader.split ]
    #dbg_value(i64 %1, !3037, !DIExpression(), !3051)
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %6, !3038, !DIExpression(), !3053)
  %8 = getelementptr inbounds nuw i8, ptr %s.data, i64 %6, !dbg !3049
  %9 = load i8, ptr %8, align 1, !dbg !3049
  %10 = icmp eq i8 %.pre, %9, !dbg !3054
  %11 = zext i1 %10 to i64, !dbg !3045
  %spec.select = add i64 %7, %11, !dbg !3045
  %12 = add nuw nsw i64 %6, 1, !dbg !3055
    #dbg_value(i64 %12, !3038, !DIExpression(), !3047)
    #dbg_value(i64 %s.len, !3036, !DIExpression(), !3048)
  %13 = icmp slt i64 %12, %s.len, !dbg !3056
  br i1 %13, label %for.body2, label %for.done, !dbg !3045

for.done:                                         ; preds = %for.body2
  %14 = add nuw nsw i64 %1, 1, !dbg !3057
    #dbg_value(i64 %14, !3037, !DIExpression(), !3046)
    #dbg_value(i64 %s.len, !3036, !DIExpression(), !3058)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3045
  %indvars.iv.next11 = add nuw i64 %indvars.iv10, 1, !dbg !3045
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1, !dbg !3045
  %exitcond.not = icmp eq i64 %14, %s.len, !dbg !3044
  br i1 %exitcond.not, label %for.done3, label %for.body2.preheader, !dbg !3045

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %spec.select, %for.done ], !dbg !3040
    #dbg_value(i64 %.lcssa7, !3035, !DIExpression(), !3059)
  ret i64 %.lcssa7, !dbg !3060

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3049
  unreachable, !dbg !3049
}
