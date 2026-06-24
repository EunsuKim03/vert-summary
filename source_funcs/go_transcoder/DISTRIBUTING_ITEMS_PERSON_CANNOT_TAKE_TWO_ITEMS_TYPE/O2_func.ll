define noundef i1 @f_gold(ptr nocapture readonly %arr.data, i64 %arr.len, i64 %arr.cap, i64 %n, i64 %k) local_unnamed_addr #4 !dbg !3025 {
entry:
    #dbg_value(ptr %arr.data, !3034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3040)
    #dbg_value(i64 %arr.len, !3034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3040)
    #dbg_value(i64 %arr.cap, !3034, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3040)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3040)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3040)
    #dbg_value(i64 0, !3037, !DIExpression(), !3041)
    #dbg_value(i64 0, !3038, !DIExpression(), !3042)
  %0 = icmp slt i64 %n, 1, !dbg !3043
  br i1 %0, label %common.ret, label %for.loop1.preheader.lr.ph, !dbg !3044

for.loop1.preheader.lr.ph:                        ; preds = %entry
  %1 = shl i64 %k, 1
  br label %for.body2.lr.ph, !dbg !3044

for.body2.lr.ph:                                  ; preds = %for.done, %for.loop1.preheader.lr.ph
  %2 = phi i64 [ 0, %for.loop1.preheader.lr.ph ], [ %14, %for.done ]
    #dbg_value(i64 %2, !3038, !DIExpression(), !3045)
    #dbg_value(i64 0, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %.not3 = icmp ult i64 %2, %arr.len
  %3 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %2
  br label %for.body2, !dbg !3044

for.loop1:                                        ; preds = %lookup.next9
  %4 = add nuw nsw i64 %5, 1, !dbg !3048
    #dbg_value(i64 poison, !3039, !DIExpression(), !3046)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3047)
  %exitcond13.not = icmp eq i64 %4, %n, !dbg !3049
  br i1 %exitcond13.not, label %for.done, label %for.body2, !dbg !3044

for.body2:                                        ; preds = %for.body2.lr.ph, %for.loop1
  %5 = phi i64 [ 0, %for.body2.lr.ph ], [ %4, %for.loop1 ]
  %6 = phi i64 [ 0, %for.body2.lr.ph ], [ %spec.select, %for.loop1 ]
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3050)
    #dbg_value(i64 %5, !3039, !DIExpression(), !3051)
  %exitcond.not = icmp eq i64 %5, %arr.len, !dbg !3052
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3052

lookup.next:                                      ; preds = %for.body2
    #dbg_value({ ptr, i64, i64 } poison, !3034, !DIExpression(), !3053)
    #dbg_value(i64 %2, !3038, !DIExpression(), !3054)
  br i1 %.not3, label %lookup.next9, label %lookup.throw8, !dbg !3055

lookup.next9:                                     ; preds = %lookup.next
  %7 = getelementptr inbounds nuw i64, ptr %arr.data, i64 %5, !dbg !3052
  %8 = load i64, ptr %7, align 8, !dbg !3052
  %9 = load i64, ptr %3, align 8, !dbg !3055
  %10 = icmp eq i64 %8, %9, !dbg !3056
  %11 = zext i1 %10 to i64, !dbg !3044
  %spec.select = add i64 %6, %11, !dbg !3044
    #dbg_value(i64 %spec.select, !3037, !DIExpression(), !3057)
    #dbg_value(i64 %k, !3036, !DIExpression(), !3058)
  %12 = icmp sgt i64 %spec.select, %1, !dbg !3059
    #dbg_value(i64 %5, !3039, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !3048)
  br i1 %12, label %common.ret, label %for.loop1, !dbg !3044

common.ret:                                       ; preds = %for.done, %lookup.next9, %entry
  %13 = phi i1 [ true, %entry ], [ false, %lookup.next9 ], [ true, %for.done ]
  ret i1 %13, !dbg !3044

for.done:                                         ; preds = %for.loop1
  %14 = add nuw nsw i64 %2, 1, !dbg !3060
    #dbg_value(i64 %14, !3038, !DIExpression(), !3045)
    #dbg_value(i64 %n, !3035, !DIExpression(), !3061)
  %exitcond14.not = icmp eq i64 %14, %n, !dbg !3043
  br i1 %exitcond14.not, label %common.ret, label %for.body2.lr.ph, !dbg !3044

lookup.throw:                                     ; preds = %for.body2
  tail call fastcc void @runtime.lookupPanic(), !dbg !3052
  unreachable, !dbg !3052

lookup.throw8:                                    ; preds = %lookup.next
  tail call fastcc void @runtime.lookupPanic(), !dbg !3055
  unreachable, !dbg !3055
}
