define i64 @f_gold(ptr nocapture readonly %arr1.data, i64 %arr1.len, i64 %arr1.cap, ptr nocapture readonly %arr2.data, i64 %arr2.len, i64 %arr2.cap, i64 %m, i64 %n, i64 %x) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr1.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %arr1.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %arr1.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(ptr %arr2.data, !3035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3042)
    #dbg_value(i64 %arr2.len, !3035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3042)
    #dbg_value(i64 %arr2.cap, !3035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3042)
    #dbg_value(i64 %m, !3036, !DIExpression(), !3042)
    #dbg_value(i64 %n, !3037, !DIExpression(), !3042)
    #dbg_value(i64 %x, !3038, !DIExpression(), !3042)
    #dbg_value(i64 0, !3039, !DIExpression(), !3043)
    #dbg_value(i64 0, !3040, !DIExpression(), !3044)
  %n.fr = freeze i64 %n, !dbg !3045
  %0 = icmp sgt i64 %m, 0, !dbg !3046
  br i1 %0, label %for.loop1.preheader.lr.ph, label %for.done3, !dbg !3045

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp sgt i64 %n.fr, 0
  %2 = add i64 %n.fr, -1, !dbg !3045
  %.not12.not = icmp ugt i64 %arr2.len, %2
  br label %for.loop1.preheader, !dbg !3045

for.loop1.preheader:                              ; preds = %for.loop1.preheader.lr.ph, %for.done
  %3 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %14, %for.done ]
  %4 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %.lcssa, %for.done ]
    #dbg_value(i64 %3, !3040, !DIExpression(), !3047)
    #dbg_value(i64 0, !3041, !DIExpression(), !3048)
    #dbg_value(i64 %n, !3037, !DIExpression(), !3049)
  br i1 %1, label %for.body2.lr.ph, label %for.done, !dbg !3045

for.body2.lr.ph:                                  ; preds = %for.loop1.preheader
  %.not = icmp ult i64 %3, %arr1.len
  %5 = getelementptr inbounds nuw i64, ptr %arr1.data, i64 %3
  br i1 %.not, label %for.body2.preheader, label %lookup.throw, !dbg !3050

for.body2.preheader:                              ; preds = %for.body2.lr.ph
  br i1 %.not12.not, label %for.body2.preheader.split, label %lookup.throw6, !dbg !3051

for.body2.preheader.split:                        ; preds = %for.body2.preheader
  %.pre = load i64, ptr %5, align 8, !dbg !3050
  br label %for.body2, !dbg !3051

for.body2:                                        ; preds = %for.body2.preheader.split, %for.body2
  %6 = phi i64 [ %13, %for.body2 ], [ 0, %for.body2.preheader.split ]
  %7 = phi i64 [ %spec.select, %for.body2 ], [ %4, %for.body2.preheader.split ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3052)
    #dbg_value(i64 %3, !3040, !DIExpression(), !3053)
    #dbg_value({ ptr, i64, i64 } poison, !3035, !DIExpression(), !3054)
    #dbg_value(i64 %6, !3041, !DIExpression(), !3055)
  %8 = getelementptr inbounds nuw i64, ptr %arr2.data, i64 %6, !dbg !3051
  %9 = load i64, ptr %8, align 8, !dbg !3051
  %10 = add i64 %9, %.pre, !dbg !3056
    #dbg_value(i64 %x, !3038, !DIExpression(), !3057)
  %11 = icmp eq i64 %10, %x, !dbg !3058
  %12 = zext i1 %11 to i64, !dbg !3045
  %spec.select = add i64 %7, %12, !dbg !3045
  %13 = add nuw nsw i64 %6, 1, !dbg !3059
    #dbg_value(i64 %13, !3041, !DIExpression(), !3048)
    #dbg_value(i64 %n, !3037, !DIExpression(), !3049)
  %exitcond.not = icmp eq i64 %13, %n.fr, !dbg !3060
  br i1 %exitcond.not, label %for.done, label %for.body2, !dbg !3045

for.done:                                         ; preds = %for.body2, %for.loop1.preheader
  %.lcssa = phi i64 [ %4, %for.loop1.preheader ], [ %spec.select, %for.body2 ], !dbg !3043
  %14 = add nuw nsw i64 %3, 1, !dbg !3061
    #dbg_value(i64 %14, !3040, !DIExpression(), !3047)
    #dbg_value(i64 %m, !3036, !DIExpression(), !3062)
  %exitcond11.not = icmp eq i64 %14, %m, !dbg !3046
  br i1 %exitcond11.not, label %for.done3, label %for.loop1.preheader, !dbg !3045

for.done3:                                        ; preds = %for.done, %entry
  %.lcssa7 = phi i64 [ 0, %entry ], [ %.lcssa, %for.done ], !dbg !3043
    #dbg_value(i64 %.lcssa7, !3039, !DIExpression(), !3063)
  ret i64 %.lcssa7, !dbg !3064

lookup.throw:                                     ; preds = %for.body2.lr.ph
  tail call fastcc void @runtime.lookupPanic(), !dbg !3050
  unreachable, !dbg !3050

lookup.throw6:                                    ; preds = %for.body2.preheader
  tail call fastcc void @runtime.lookupPanic(), !dbg !3051
  unreachable, !dbg !3051
}
